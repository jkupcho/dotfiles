set nocompatible

so ~/.vim/plugins.vim

filetype plugin indent on

syntax enable
set backspace=indent,eol,start
let mapleader=','
set number

"-------------Visuals-------------
colorscheme atom-dark

set t_CO=256					"Use 256 colors within Terminal

set linespace=8
set guioptions-=l				"Disable Gui scrollbars
set guioptions-=L
set guioptions-=r
set guioptions-=R
set tabstop=2
set shiftwidth=2
set expandtab

"-------------Search-------------
set hlsearch					"Highlight all matched terms
set incsearch					"Incrementally highlight, as we type

"-------------Split Management-------------
set splitbelow					"Make splits default to below
set splitright					"And to the right. This feels more natural

"Split keybindings
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>
nmap <C-W> <C-W><C-C>

"Tab keybindings
nmap <C-Tab> :tabnext<cr>
nmap <C-S-Tab> :tabprevious<cr>
nmap <C-N> :tabe<cr>
nnoremap gf <C-W>gf
nmap <Leader>nt :NERDTreeToggle<cr>

"-------------Mappings-------------
"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>
nmap <c-R> :CtrlPBufTag<cr>
nmap <c-e> :CtrlPMRUFiles<cr>

"-------------Plugins-------------
"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git'
let g:ctrlp_open_new_file = 't'
let g:ctrlp_match_window='top,order:ttb,min:1,max:10,results:10'

"/
"/ Vim JSX
let g:jsx_ext_required = 0

"-------------Auto Source .vimrc-------------
"Automatically source the Vimrc file on save.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

