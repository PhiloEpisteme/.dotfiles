# .tmux_files
A collection of files for customizing my TMUX environment

## Installation
To install this configuration clone the repository to `~/.tmux_files` and
be sure to pass the recursive flag so that submodules are cloned as well.
Finally, create a symlink to the .tmux.conf file to make it available to tmux
at startup.

    git clone --recursive https://github.com/PhiloEpisteme/.dotfiles.git ~/.dotfiles
    ln -s /path/to/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
    tmux source ~/.tmux.conf
    prefix + I

## How To:

### Install New Plugin

    vim ~/.tmux_files
	set -g @plugin 'plugin/name'
	prefix + I

### Update All Plugins

    prefix + U

### Remove Plugin/Submodule

    1. Remove the relevant `set` line from the .tmux.config
    2. prefix + alt + u

## Plugins

- [Tmux Resurrect][resurrect] - Bruno Sutic
- [Tmux Sidebar][sidebar] - Bruno Sutic
- [Tmux Package Manager][tpm] - Bruno Sutic

[resurrect]: https://github.com/tmux-plugins/tmux-resurrect
[sidebar]: https://github.com/tmux-plugins/tmux-sidebar
[tpm]: https://github.com/tmux-plugins/tpm
