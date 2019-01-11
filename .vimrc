if has('nvim')
  call plug#begin()
  Plug 'scrooloose/nerdtree'
  Plug 'bling/vim-airline'
  Plug 'airblade/vim-gitgutter'
  Plug 'MattesGroeger/vim-bookmarks'
  Plug 'epeli/neovim-config'

  " Color Scheme
  Plug 'phanviet/vim-monokai-pro'
  Plug 'altercation/vim-colors-solarized'
  Plug 'tomasr/molokai'
  call plug#end()
else
  set ttymouse=xterm2
  set term=xterm-256color
endif

""" General Configuration
syntax on
filetype plugin indent on

colorscheme molokai
let g:rehash256=1

set autoindent
set cindent
set showmatch
set scrolloff=3
set incsearch
set nostartofline
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" Highlighting search matches
set hlsearch
" Set Linenumber
set nu
set mouse=a
set t_Co=256
" Change selection color as reverse
hi Visual term=reverse cterm=reverse

" Status Line
set list
set listchars=tab:>-,trail:-
set statusline=%F%m%r%h%w\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=\%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2

autocmd Filetype python setlocal ts=2 sw=2 sts=2 expandtab

" 80 Chars indicator
augroup vimrc_autocmds
au!
  autocmd BufRead * highlight OverLength ctermbg=red ctermfg=white guibg=#592929
  autocmd BufRead * match OverLength /\%81v.\+/
augroup END

""" PLUGIN Configuration
"" Airline
set encoding=utf-8
let g:airline_powerline_fonts   = 1

"" NERDTree
let NERDTreeWinPos="left"
set modifiable

"" GitGutter
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

""" Key Remapping
" NERDTree
nmap <F9> :NERDTreeToggle<CR>
nmap <leader>r :NERDTreeFind<CR>

" Split Windows
nmap <C-h> <C-w>h<CR>
nmap <C-j> <C-w>j<CR>
nmap <C-k> <C-w>k<CR>
nmap <C-l> <C-w>l<CR>

" For python
autocmd FileType python nnoremap <buffer> <F5> :!./%<CR>
