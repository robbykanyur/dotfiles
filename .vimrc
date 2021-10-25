nnoremap <Space> <Nop>
let mapleader="\<Space>"
imap fj <esc> :w <cr>

set nocompatible
filetype off
syntax on

set backspace=indent,eol,start
set nobackup
set nowritebackup
set noswapfile
set history=500
set showcmd
set showmatch
set incsearch
set laststatus=2
set autowrite
set autoread
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set nojoinspaces
set number
set numberwidth=5
set ruler
set nowrap
" set relativenumber
set number
set gdefault
set autoindent
set lazyredraw
set splitbelow
set splitright
set hlsearch
set incsearch
set ignorecase
set smartcase
set foldmethod=indent
set foldlevel=99
set encoding=utf-8
set list listchars=tab:»·,trail:·,nbsp:·

au BufNewFile,BufRead *.py
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set shiftwidth=4 |
  \ set expandtab |
  \ set autoindent |
  \ set fileformat=unix

let g:html_indent_tags = 'li\|p'
let python_highlight_all = 1

filetype plugin indent on

nmap <leader>vr :e $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>

nmap j gj
nmap k gk

nnoremap 0 ^
nnoremap ^ 0

nnoremap <leader>a za

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag --literal --files-with-matches --nocolor --hidden -g "" %s'
  let g:ctrlp_use_caching = 0
  if !exists(":Ag")
    command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
    nnoremap \ :Ag<SPACE>
  endif
endif

autocmd VimResized * :wincmd =
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-runner'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'junegunn/fzf.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'captbaritone/better-indent-support-for-php-with-html'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'styled-components/vim-styled-components'
Plugin 'jparise/vim-graphql'
Plugin 'stephpy/vim-yaml'
Plugin 'chr4/nginx.vim'
call vundle#end()

map <Leader>ac :sp app/controllers/application_controller.rb<cr>
map <leader>bb :!bundle install<cr>
map <leader>sp :set paste<cr><esc>
map <leader>ng :set syntax=nginx<cr><esc>
map <leader>ap :set nopaste<cr><esc>
map <leader>c :noh<cr>
map <leader>pj :%!python -m json.tool<cr>
map <leader>ww :set wrap<cr>:set linebreak<cr>:set nolist<cr><esc>
map <leader>wwo :set nowrap<cr>:set nolinebreak<cr>:set list<cr><esc>
map <leader>gn :bn<cr>
map <leader>gp :bp<cr>
map <leader>gd :bd<cr>

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
