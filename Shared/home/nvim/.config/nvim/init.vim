set nocompatible
filetype off

filetype plugin indent on

" Add .cpp highlighting to .tpp files
autocmd BufEnter *.tpp :setlocal filetype=cpp

" Set Leader Key to , "
let mapleader=","
let maplocalleader=","

" Enable syntax highlighting
filetype plugin on
syntax on

" Show Relative Line Numbers with number on current line by default
set relativenumber
set number

" Set splits to be placed more intuitively (down and right)
set splitbelow
set splitright

" Toggle Paste Mode
set pastetoggle=<s>

" Toggle showing invisible characters
nmap <leader>i :set list!<CR>

" Set characters shown for invisible characters
set listchars=tab:▸\ ,eol:¬

" Various Tab Related Options
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2

" Place line on current location of cursor "
set cursorline

" Set up column to match line length of 80
set colorcolumn=80

" Change background color of color column 
highlight ColorColumn ctermbg=241

" Dvorak Keybindings
no d h
no h j
no t k
no n l
no s :
no S :
no j d
no l n
no L N

no - $
no _ ^
no N <C-w><C-w>
no T <C-w><C-r>
no H 8<Down>
no T 8<Up>
no D <C-w><C-r>

" Map keys for split movement
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-d> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-h> :TmuxNavigateDown<cr>
nnoremap <silent> <C-t> :TmuxNavigateUp<cr>
nnoremap <silent> <C-n> :TmuxNavigateRight<cr>
nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>

" Map keys to move between splits "
" nnoremap <C-H> <C-W><C-J>
" nnoremap <C-T> <C-W><C-K>
" nnoremap <C-N> <C-W><C-L>
" nnoremap <C-D> <C-W><C-H>

" Create hotkeys to change tab size
nmap <leader>t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
nmap <leader>m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR> 

" Create toggle for relative line numbering "
function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
    else
        set relativenumber
    endif
endfunc

nnoremap <C-l> :call NumberToggle()<cr>
