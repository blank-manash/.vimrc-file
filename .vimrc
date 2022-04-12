set nocompatible
set showcmd
set number
set hlsearch
set ignorecase
set incsearch
set smartcase
set noerrorbells
set belloff=esc
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nowrap
autocmd BufRead,BufNewFile *.md,*.txt setlocal wrap
autocmd filetype markdown set spell 
set noswapfile
set mouse=a
set showmatch
set termguicolors
set splitright splitbelow
set autoindent
set path+=**
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
filetype off                  " required


"AutoInstalltion of Plugins
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'cseelus/vim-colors-lucid'
Plug 'tpope/vim-surround'
Plug 'mboughaba/i3config.vim'
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'pbogut/fzf-mru.vim'
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'vifm/vifm.vim'
Plug 'ludovicchabant/vim-gutentags' "Requires Uni/Ex Ctags
"Plug 'liuchengxu/vim-which-key'
Plug 'sheerun/vim-polyglot'
call plug#end()            " required
filetype plugin indent on    " required

"

if !empty(glob('~/.vim/plugged/vim-colors-lucid/'))
    colo lucid
endif

"Addtional
set encoding=UTF-8
if !has("nvim")
    autocmd BufWritePost .vimrc source % | mark V
endif

"Vim Mappings
set background=dark
nmap <Leader>nt :Lex<CR>
nmap <Leader>fi :Files<CR>
nmap <Leader>mr :FZFMru<CR>
nnoremap <Leader>pin :PlugInstall<CR>
let mapleader = ","
inoremap jk <Esc>
"Scripts
if !empty(glob('~/.vim/plugged/vim-gutentags/'))
  set statusline+=%{gutentags#statusline()}
endif

"FZF Ubiquitos
let $FZF_DEFAULT_COMMAND = 'find .'
"
"Gutentag
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0
let g:gutentags_ctags_executable = "~/.local/bin/ctags"

"AsyncCompleteVim
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

"Netrw Config
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_liststyle = 3
let g:netrw_winsize = 17

