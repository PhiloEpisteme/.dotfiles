# git dotfiles
A collection of files for customizing git's behavior

## Installation

    git clone https://github.com/PhiloEpisteme/.dotfiles.git ~/.dotfiles
    ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
    git config --global user.email "you@example.com"
    git config --global user.name "Your Name"


### git-completion.bash

You may want to add the following to your `~/.bashrc` or similar.

    if [ -f ~/.dotfiles/git/.git-completion.bash ]; then
        . ~/.dotfiles/git/.git-completion.bash
    fi

## Summary
These configs do the following.
- Avoid fast-forward merges to preserve merge commits
- Turn hints off
- Expand tabs to spaces
- Set default push to simple
- Rebase on a pull
- Use vimdiff for merge tool as well as diff tool
- Disable difftool prompt
- Use the global git ignore file found in this repo
- Set whitespace to trailing and space before tabs
- Use autocrlf on input
- Set vim as the editor
- Use autosetupmerge
- Enable rerere for faster conflict resolution
