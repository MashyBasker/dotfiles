set background=dark
filetype on
syntax on
set number
set cursorline
set shiftwidth=4
set tabstop=4
set wrap
set linebreak
set incsearch
set ignorecase
set history=1000
set wildmenu
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set guifont=UbuntuMono
set cursorcolumn 
let g:coc_disable_startup_warning = 1


nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

noremap <C-up> <C-w>+
noremap <C-down> <C-w>-
noremap <C-left> <C-w>>
noremap <C-right> <C-w><
noremap <C-q> <C-w>q
nnoremap <b> <q>
inoremap <C-BS> <C-W>

colorscheme tender

call plug#begin()

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
"    let g:coc_disable_startup_warning = 1
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'jacoborus/tender.vim'

call plug#end()

nnoremap <silent> <C-f> :Files<CR>
set noshowmode
set laststatus=2
set ttimeoutlen=50

let g:airline_theme='bubblegum'

let t:is_transparent = 0
function! Toggle_transparent()
    if t:is_transparent == 0
        hi Normal guibg=NONE ctermbg=NONE
        let t:is_transparent = 1
    else
        set background=dark
        let t:is_transparent = 0
    endif
endfunction
nnoremap <C-t> : call Toggle_transparent()<CR>
