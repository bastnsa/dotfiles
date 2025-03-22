local state = {
	floating = {
		buf = -1,
		win = -1,
	},
}

local function create_floating_window(opts)
	opts = opts or {}
	local width = opts.width or math.floor(vim.o.columns * 0.8)
	local height = opts.height or math.floor(vim.o.lines * 0.6)

	local col = math.floor((vim.o.columns - width) / 2)
	local row = math.floor((vim.o.lines - height) / 2)

	local buf = nil
	if vim.api.nvim_buf_is_valid(opts.buf) then
		buf = opts.buf
	else
		buf = vim.api.nvim_create_buf(false, true)
	end

	local win_config = {
		relative = "editor",
		width = width,
		height = height,
		col = col,
		row = row,
		style = "minimal",
		border = "rounded",
	}

	local win = vim.api.nvim_open_win(buf, true, win_config)
	return { buf = buf, win = win }
end

function ToggleTerminal()
	if not vim.api.nvim_win_is_valid(state.floating.win) then
		state.floating = create_floating_window({ buf = state.floating.buf })
		if vim.bo[state.floating.buf].buftype ~= "terminal" then
			vim.cmd.terminal()
		end
	else
		vim.api.nvim_win_hide(state.floating.win)
	end
	vim.cmd("normal i")
end

local function substitute(cmd)
	cmd = cmd:gsub("%%", vim.fn.expand("%:p"))
	cmd = cmd:gsub("$fileBase", vim.fn.expand("%:p:r"))
	cmd = cmd:gsub("$filePath", vim.fn.expand("%:p"))
	cmd = cmd:gsub("$dir", vim.fn.expand("%:p:h"))
	cmd = cmd:gsub("#", vim.fn.expand("#:p"))
	return cmd
end

local function execute_in_terminal(cmd)
	vim.cmd("startinsert")
	vim.api.nvim_feedkeys(substitute(cmd) .. "\r", "t", false)
	ToggleTerminal()
end

function RunCode()
	local file_extension = vim.fn.expand("%:e")
	local selected_cmd = ""
	local supported_filetypes = {
		go = {
			default = "go run %",
		},
		html = {
			default = "live-server %",
		},
		js = {
			default = "node %",
		},
		php = {
			default = "php %",
		},
		py = {
			default = "python3 %",
		},
		rs = {
			default = "cargo run %",
		},
	}

	if supported_filetypes[file_extension] then
		local choices = vim.tbl_keys(supported_filetypes[file_extension])

		if #choices == 0 then
			vim.notify("Does not contain any command", vim.log.levels.WARN, { title = "Code Runner" })
		elseif #choices == 1 then
			selected_cmd = supported_filetypes[file_extension][choices[1]]
			execute_in_terminal(selected_cmd)
		else
			vim.ui.select(choices, { prompt = "Choose a command: " }, function(choice)
				selected_cmd = supported_filetypes[file_extension][choice]
				if selected_cmd then
					execute_in_terminal(selected_cmd)
				end
			end)
		end
	else
		vim.notify("File type is not included in the list", vim.log.levels.WARN, { title = "Code Runner" })
	end
end
