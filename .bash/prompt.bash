if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

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
      echo -e "\033[32m"    # Staged changes (Green)
    elif [[ -n $(git diff) ]]; then
      echo -e "\033[33m"    # Changes not staged (Yellow)
    elif [[ -n $(git ls-files --others --exclude-standard) ]]; then
      echo -e "\033[31m"    # Untracked files (Red)
    else
      echo -e "\033[36m"    # Clean working directory (Cyan)
    fi
}

git_info() {
    if is_git_repo; then
        echo -e "\033[36mgit:(\033[31m$(git_branch)\033[36m) $(git_status)λ\033[0m "
    fi
}

PS1='${debian_chroot:+($debian_chroot)}\[\033[30m\]\u@\h:\[\033[00m\] \[\033[34m\]\w\[\033[0m\] $(git_info)\[\033[37m\]$\[\033[0m\] '
