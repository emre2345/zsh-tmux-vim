set number
syntax on

colorscheme dracula

set cursorline
" set cursorcolumn

set rtp+=/usr/local/opt/fzf

set shiftwidth=4
set tabstop=4
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set history=1000

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


set redrawtime=10000

filetype on
" filtype plugin on
filetype indent on

" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'dracula/vim',{ 'as' :'dracula' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" }}}

" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.
map <C-n> :NERDTreeToggle<CR>
map <leader>gf :Files<CR>
map <leader>gb :Buffers<CR>
" map <leader>fc :FormatCode<CR>


let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp5$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']
" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.
" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}
