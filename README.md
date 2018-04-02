# .vimfiles
A collection of files for customizing my Vim environment.

All plugins for vim7 are managed by [Pathogen][pathogen] by Tim Pope and the
native package manager is used for vim8. Upgrade and installation instructions
are detailed below.

## Installation
To install this `.vimrc`, clone the repository to `~/.vim`. Pass the
recursive flag to ensure that all submodules are cloned as well.

    git clone --recursive https://github.com/PhiloEpisteme/.vim ~/.vim

If you prefer to clone the repo elsewhere be sure to create a symlink to the
new location to `~/.vim`.

    ln -s /path/to/.vim ~/.vim

Non linux/mac users should check the documentation for where vim looks for the
`vimrc` file by default.

## Plugins

Some plugins only work properly with a specific version of vim. All plugins
which are supported by both vim7 and vim8 belong in the
`pack/my-packages/start/` directory. Plugins which only work with vim7 belong
in the `bundle/` directory. Packages which only work with vim8 should go in
`pack/my-packages/start/` directory and have their plugin name added to the
`pathogen_blacklist` found in `.vim7.vimrc`.

#### vim7
- [python-mode][pymode] - Kirill Klenov

#### vim7/8
- [ctrlp][ctrlp] - kien & mattn
- [jedi-vim][jedi] - David Halter
- [vim-colors-solarized][solarized] - Ethan Schoonover
- [vim-fugitive][fugitive] - Tim Pope
- [vim-gitgutter][gitgutter] - Andy Stewart
- [vim-go\*][vimgo] - Fatih Arslan
- [vim-surround][vimsurround] - Tim Pope

\* vim-go requires Vim 7.4.1689

### Install New Plugin

    cd ~/.vim
    git submodule add https://github.com/Example/repo.git path/to/package/name

### Update All Plugins

    cd ~/.vim
    git submodule update --init --recursive

### Remove Plugin/Submodule

1. Delete relevant section from `.gitmodules`
1. Delete relevant section from `.git/config`
1. Run `git rm --cached path/to/plugin`
1. Commit changes
1. Remove relevant files in `.git/modules`

## References

- [Solarized Homepage][solarized_home], for more information about installing.

[ctrlp]: https://github.com/ctrlpvim/ctrlp.vim
[fugitive]: https://github.com/tpope/vim-fugitive
[gitgutter]: https://github.com/airblade/vim-gitgutter
[jedi]: http://github.com/davidhalter/jedi-vim
[pathogen]: https://github.com/tpope/vim-pathogen
[pymode]: https://github.com/klen/python-mode
[solarized]: https://github.com/altercation/vim-colors-solarized
[solarized_home]: http://ethanschoonover.com/solarized
[vimgo]: https://github.com/fatih/vim-go
[vimsurround]: https://github.com/tpope/vim-surround
