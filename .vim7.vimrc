" Source local, untracked files first
if filereadable("local/vim7.vimrc")
    source ~/.local/vim7.vimrc
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pathogen settings                                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect('bundle/{}', 'pack/my-packages/start/{}')
execute pathogen#helptags()
