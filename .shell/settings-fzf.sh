export FZF_DEFAULT_COMMAND='find . -type f -not -path "*/\.git/*"'
export FZF_CTRL_T_COMMAND='find . -type f -not -path "*/\.git/*"'

if [[ "$(uname)" == "Darwin" ]]; then
    PREVIEW_CMD="bat --style=numbers --color=always --line-range :500 {}"
else
    PREVIEW_CMD="batcat --style=numbers --color=always --line-range :500 {}"
fi

export FZF_DEFAULT_OPTS="
    --preview '$PREVIEW_CMD'
    --preview-window='right:60%'
    --preview-window='border-rounded'
    --color=fg:#D8DEE9,fg+:#88C0D0:regular,bg:#2E3440,bg+:#3B4252
    --color=hl:#EBCB8B,hl+:#EBCB8B:regular,info:#81A1C1,marker:#B48EAD
    --color=prompt:#81A1C1,spinner:#88C0D0,pointer:#88C0D0,header:#B48EAD
    --color=border:#4C566A,scrollbar:#4C566A,label:#AEAEAE,query:#D8DEE9:regular
    --border='rounded'
    --border-label=''
    --padding='2,3,2,3'
    --prompt='> '
    --marker='>'
    --pointer='>'
    --separator='─'
    --scrollbar='│'
    --info='right'
"
