# Dotfiles

A repo to better manage and showcase my dotfiles.

Feel free to pick apart sections and copy lines into your own files.

At a glance, this specific configuration is kept simple and straightforward; however, adjustments will have to be made depending on your system.

However, with the implementation of [GNU Stow](https://www.gnu.org/software/stow/), the overall structure can be configured rather quickly and become malleable to any preference.

### Neovim

![neovim](./assets/neovim.png)

### Tmux

![tmux](./assets/tmux.png)

## Requirements

### Git

```
brew install git
```

### Stow

```
brew install stow
```

<br>

**TL;DR**

Once installed, running `stow` will create a [symbolic link](https://en.wikipedia.org/wiki/Symbolic_link) for each file in the directory you pass into it (except for [ignored files](https://www.gnu.org/software/stow/manual/stow.html#Ignore-Lists)), and then these will be placed inside the parent directory of where you ran the command.

To learn more about implementing Stow according to your own configuration or to just get a better idea of how it works, watch [this](https://www.youtube.com/watch?v=FHuwzbpTTo0&list=PLVICUuo69SVpj_kjGKeUFKJSxAKdtr4uS&index=3&t=1s).

On the other hand, if you wish to mirror something similar to my current configuration, then ensure you have the following installed:

- A true color terminal (I use iTerm2)
- [Neovim](https://neovim.io)
- [Tmux](https://github.com/tmux/tmux)
- [bat](https://github.com/sharkdp/bat)
- [eza](https://github.com/eza-community/eza)
- [fzf](https://github.com/junegunn/fzf)
- [ripgrep](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

**Note:** Depending on the Neovim plugin, you might also need to install other tools. I advise doing a quick scan of each plugin to spot any overlooked dependencies.

## Installation

Clone this dotfiles repository in your `$HOME` directory and cd into it:

```sh
git clone https://github.com/bastnsa/dotfiles.git
cd dotfiles
```

Use `stow` to create a symbolic link for each file in `~/dotfiles`:

```
stow .
```

If you receive an error, then it's likely you have a file (or files) with matching relative paths present in your home directory.

My recommendation is to backup the conflicting files in your home directory and then proceed with the previous command (make sure to cd back in the dotfiles directory):

```
stow .
```

Finally, if everything went according to plan, you should see symbolic links in your home directory that link back into the dotfiles directory.

![symlinks](./assets/symlinks.png)

Thus, any change you make through the symbolic link will be reflected in the dotfiles directory, and vice versa. Pretty cool right?

From here, you can push the clone into your own dotfiles repository on github and make adjustments as needed.

Also, feel free to reach out if you need help with any issues or have questions.
