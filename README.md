# .vimfiles
A collection of files for customizing my Vim environment.

All plugins are managed by [Pathogen][pathogen] by Tim Pope. Upgrade and installation
instructions are detailed below.

## Installation
To install this `.vimrc`, clone the repository to `~/.vim`. Pass the
recursive flag to ensure that all submodules are cloned as well. Finally,
create a symlink to the `.vimrc` to make it available to Vim on startup.

    git clone --recursive https://github.com/PhiloEpisteme/.vim ~/.vim
    ln -s ~/.vim/.vimrc ~/.vimrc

## How To:

### Install New Plugin

    cd ~/.vim
    git submodule add https://github.com/Example/repo.git bundle/name

### Update All Plugins

    cd ~/.vim
    git submodule foreach git pull origin master

### Remove Plugin/Submodule

    1. Delete relevant section from `.gitmodules`.
    2. Delete relevant section from `.git/config`.
    3. Run `git rm --cached path_to_plugin`.
    4. Commit and delete untracked submodule files.

## Plugins

- [python-mode][pymode] - Kirill Klenov
- [vim-colors-solarized][solarized] - Ethan Schoonover
- [vim-fugitive][fugitive] - Tim Pope
- [vim-surround][vimsurround] - Tim Pope
- [vim-go][vim-go] - Fatih Arslan

## References

- [Solarized Homepage][solarized_home], for more information about installing.

[pathogen]: https://github.com/tpope/vim-pathogen
[pymode]: https://github.com/klen/python-mode
[solarized]: https://github.com/altercation/vim-colors-solarized 
[fugitive]: https://github.com/tpope/vim-fugitive
[vimsurround]: https://github.com/tpope/vim-surround
[solarized_home]: http://ethanschoonover.com/solarized
[vim-go]: http://github.com/fatih/vim-go
