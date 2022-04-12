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

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'cseelus/vim-colors-lucid'
Plugin 'tpope/vim-surround'
Plugin 'mboughaba/i3config.vim'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'pbogut/fzf-mru.vim'
Plugin 'mhinz/vim-startify'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'
Plugin 'vifm/vifm.vim'
Plugin 'ludovicchabant/vim-gutentags' "Requires Uni/Ex Ctags
"Plugin 'liuchengxu/vim-which-key'
Plugin 'sheerun/vim-polyglot'
call vundle#end()            " required
filetype plugin indent on    " required
let mapleader = ","
"
colo lucid

"Addtional
set encoding=UTF-8
" Open the existing NERDTree on each new tab. If you have NerdTree Ofcourse.
" Default is No you don't.
"autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
if !has("nvim")
    autocmd BufWritePost .vimrc source % | mark V
endif

"Vim Mappings
set background=dark
nmap <Leader>nt :Lex<CR>
nmap <Leader>fi :Files<CR>
nmap <Leader>mr :FZFMru<CR>
nnoremap <Leader>pin :PluginInstall<CR>
"Scripts
set statusline+=%{gutentags#statusline()}
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
