local terminal = { buf = -1, win = -1 }

local file_types = {
	go = {
		run = "go run %",
	},
	js = {
		run = "node %",
	},
	lua = {
		run = "luajit %",
	},
	py = {
		run = "python3 %",
	},
	rs = {
		run = "cargo run %",
	},
	ts = {
		build = "tsc",
		dev = "tsc --watch",
		run = "node --disable-warning=ExperimentalWarning %",
	},
}

local function create_floating_window(opts)
	local width = math.floor(vim.o.columns * 0.8)
	local height = math.floor(vim.o.lines * 0.8)

	local col = math.floor((vim.o.columns - width) / 2)
	local row = math.floor((vim.o.lines - height) / 2)

	local buf = nil
	if vim.api.nvim_buf_is_valid(opts.buf) then
		buf = opts.buf
	else
		buf = vim.api.nvim_create_buf(false, true)
	end

	local config = {
		relative = "editor",
		width = width,
		height = height,
		col = col,
		row = row,
		style = "minimal",
		border = "rounded",
	}

	local win = vim.api.nvim_open_win(buf, true, config)
	return { buf = buf, win = win }
end

function ToggleTerminal()
	if not vim.api.nvim_win_is_valid(terminal.win) then
		terminal = create_floating_window({ buf = terminal.buf })
		if vim.bo[terminal.buf].buftype ~= "terminal" then
			vim.cmd.terminal()
		end
	else
		vim.api.nvim_win_hide(terminal.win)
	end
	vim.cmd("normal i")
end

local function substitute(cmd)
	cmd = cmd:gsub("%%", vim.fn.expand("%:p"))
	return cmd
end

local function execute_in_terminal(cmd)
	ToggleTerminal()
	vim.cmd("startinsert")
	vim.api.nvim_feedkeys(cmd .. "\r", "t", false)
end

function RunFile()
	local selected_cmd = ""
	local file_extension = vim.fn.expand("%:e")

	if file_types[file_extension] then
		local choices = vim.tbl_keys(file_types[file_extension])

		if #choices == 1 then
			selected_cmd = file_types[file_extension][choices[1]]
			execute_in_terminal(substitute(selected_cmd))
		else
			vim.ui.select(choices, { prompt = "Choose a command: " }, function(choice)
				selected_cmd = file_types[file_extension][choice]
				if selected_cmd then
					execute_in_terminal(substitute(selected_cmd))
				end
			end)
		end
	else
		vim.notify("RunFile: File type is not supported", vim.log.levels.ERROR)
	end
end
