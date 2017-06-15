set encoding=utf-8
set nocompatible
filetype off


set rtp+=~/vimfiles/bundle/Vundle.vim
let path='~/vimfiles/bundle'
call vundle#begin('$HOME/vimfiles/bundle/')
Plugin 'VundleVim/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'powerline/fonts'
Plugin 'altercation/vim-colors-solarized'
Plugin 'easymotion/vim-easymotion'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required

set number
set shiftwidth=4
autocmd FileType text setlocal autoindent expandtab softtabstop=2 textwidth=76 spell spelllang=en_us
autocmd FileType help setlocal nospell
set backupdir^=~/_backup
set dir^=~/_backup//
set ignorecase
set ai
syntax enable
set tabstop=4
set hlsearch
command! W write
set backspace=2 " make backspace work like most other apps

set t_Co=256
"autocmd vimenter * NERDTree
autocmd VimEnter * silent NERDTree | wincmd p


"""from here
"air-line
"set guifont=DejaVu\ Sans:s19
let g:airline_theme='base16'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '≫'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '≪'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '?'
let g:airline_symbols.linenr = '?'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '?'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


"airline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''
   
set background=light
colorscheme solarized
let g:vimwiki_folding='expr'
set guifont=Droid\ Sans\ Mono\ for\ Powerline:h11 
"set guifont=12
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'

" let text files work for youcompleteme
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
	  \ 'unite' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}

" Buffer switching using Cmd-arrows in Mac and Alt-arrows in Linux
:nnoremap <D-Right> :bnext<CR>
:nnoremap <M-Right> :bnext<CR>
:nnoremap <D-Left> :bprevious<CR>
:nnoremap <M-Left> :bprevious<CR>
:imap <F2> printf("Testing line number %d", <C-r>=line('.')<CR>);

map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
map <F3> :r! date<CR>
set pastetoggle=<F10>
map <F5> <Esc>:w<CR>:!clear;python %<CR>
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment


