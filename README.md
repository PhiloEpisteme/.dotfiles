# .tmux_files
A collection of files for customizing my TMUX environment

## Installation
To install this configuration clone the repository to `~/.tmux_files` and
be sure to pass the recursive flag so that submodules are cloned as well.
Finally, create a symlink to the .tmux.conf file to make it available to tmux
at startup.

    git clone --recursive git@github.com:PhiloEpisteme/.tmux_files.git ~/.tmux_files
    ln -s /path/to/.tmux_files/.tmux.conf ~/.tmux.conf
