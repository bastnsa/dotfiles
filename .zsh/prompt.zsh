setopt PROMPT_SUBST

is_git_repo() {
    git rev-parse --is-inside-work-tree >/dev/null 2>&1
}

git_branch() {
    # First commit hasn't been made yet
    if ! git rev-parse HEAD >/dev/null 2>&1; then
        echo "init"
    else
        git rev-parse --abbrev-ref HEAD
    fi
}

git_status() {
    if [[ -n $(git diff --cached) ]]; then
        echo "green"     # Staged changes
    elif [[ -n $(git diff) ]]; then
        echo "yellow"    # Changes not staged
    elif [[ -n $(git ls-files --others --exclude-standard) ]]; then
        echo "red"       # Untracked files
    else
        echo "cyan"      # Clean working directory
    fi
}

git_info() {
    if is_git_repo; then
        echo "%F{cyan}git:(%F{red}$(git_branch)%F{cyan}) %F{$(git_status)}λ%f "
    fi
}

PROMPT='%F{black}ba%f %F{blue}%~%f $(git_info)%F{white}>%f '
