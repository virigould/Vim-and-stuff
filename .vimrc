set background=dark

syntax on
set showmode
set showmatch
set autoindent
set noshowmatch
set number
set wildmenu
set lazyredraw
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set incsearch           
set nohlsearch
set smartcase
set noeb vb t_vb=

let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ }


"inoremap { {<CR>}<Esc>ko<Tab>
":inoremap ( ()<Esc>i
":inoremap [ []<Esc>i
":inoremap " ""<Esc>i

if empty(glob('~/.vim/autoload/plug.vim')) " install vim-plug if it doesn't already exist
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | q | source ~/.vimrc "install plugins, setting color scheme to a bearable one first
endif


call plug#begin('~/.vim/plugged')

Plug 'crusoexia/vim-monokai'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'tpope/vim-eunuch'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-endwise'
Plug 'sheerun/vim-polyglot'
Plug 'kien/rainbow_parentheses.vim'
Plug 'itchyny/lightline.vim'
Plug 'yggdroot/indentline'
"Plug 'Valloric/YouCompleteMe'
"Plug 'nathanaelkane/vim-indent-guides'

call plug#end()

if !has('gui_running')
    set t_Co=256
endif
set noshowmode
set laststatus=2


if &term =~ '256color'
"disable Background Color Erase (BCE) so that color schemes
"render properly when inside 256-color tmux and GNU screen.
"see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
silent! colorscheme monokai
"let g:indent_guides_enable_on_vim_startup = 1
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:indentLine_char = '|'
let g:indentLine_color_term = 239
