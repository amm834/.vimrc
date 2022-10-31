:set number
" :set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a


call plug#begin()

" --- Just Some Notes for autocompletion ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE
"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'https://github.com/vim-airline/vim-airline'  " status bar
Plug 'preservim/nerdtree' " nerd tree for dir listing

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

Plug 'sheerun/vim-polyglot' " for better syntax highlighting
Plug 'phanviet/vim-monokai-pro'  " monokai pro theme

set encoding=UTF-8
call plug#end()

:colorscheme monokai_pro


" nerd teee toggle key binding
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap  <A-1> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>


" set autocompletion with tab in coc
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

