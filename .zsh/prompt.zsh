setopt PROMPT_SUBST

git_status() {
    if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
	BRANCH=$(git rev-parse --abbrev-ref HEAD)
        if [[ -n $(git diff --cached) ]] && [[ -n $(git diff) ]]; then
            echo "%F{red}$BRANCH %F{cyan}λ%f "
        elif [[ -n $(git diff --cached) ]]; then
            echo "%F{red}$BRANCH %F{green}λ%f "
        elif [[ -n $(git diff) ]]; then
            echo "%F{red}$BRANCH %F{yellow}λ%f "
        else
          echo "%F{red}$BRANCH %F{red}λ%f "
        fi
    fi
}

PROMPT='%F{black}ba%f %F{blue}%~%f $(git_status)%F{white}>%f '
