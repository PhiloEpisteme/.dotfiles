# .git_files
A collection of files for customizing my GIT behavior

## Installation

To install this configuration clone the repo to ~/.git_files. Then, 
symlink the .gitconfig to your home directory and set up bash_completion.

### Name and Email

You should probably modify the name and email settings used in these configs.
They are currently hard-coded to my name and email. If you don't want that,
you will want to update.

`~/.gitconfig`

    [user]
        name = "Your Name"
        email = "your_email@domain.com"

### .gitconfig

    git clone git@github.com:PhiloEpisteme/.git_files.git ~/.git_files
    ln -s /path/to/.git_files/.gitconfig ~/.gitconfig

### git-completion.bash

If you are using my .bash_files repo, you don't need to do anything.
Otherwise, do the following steps.

vim ~.bashrc

    if [ -f ~/.git_files/.git-completion.bash ]; then
        . ~/.git_files/.git-completion.bash
    fi
