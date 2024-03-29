vim.cmd([[
set nocompatible
filetype off

filetype plugin indent on

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

" Set up column to match line length
set colorcolumn=120

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

" Create hotkeys to change tab size
nmap <leader>t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
nmap <leader>m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR> 
nmap <leader>w :set expandtab tabstop=3 shiftwidth=3 softtabstop=3<CR> 

" Create toggle for relative line numbering "
function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
    else
        set relativenumber
    endif
endfunc

nnoremap <C-l> :call NumberToggle()<cr>
]])

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost init.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'
  use 'tpope/vim-obsession'

end)

