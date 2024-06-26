syntax on

set noerrorbells visualbell
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set undofile
set incsearch

" set colorcolumn=120
" highlight ColorColumn ctermbg=darkgray guibg=darkgray

set signcolumn=yes

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'lyuts/vim-rtags'
call plug#end()

colorscheme gruvbox
set background=dark

" Automatic matching braces
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

