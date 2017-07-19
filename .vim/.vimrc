" If you want to quit smoking, always leave your cigrattes in your car's
" trunk.

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
Plug 'mhartington/oceanic-next'
Plug 'tpope/vim-sensible' 
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'

Plug 'peterhoeg/vim-qml'
Plug 'godlygeek/tabular'

Plug 'plasticboy/vim-markdown'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
"Plug 'Valloric/YouCompleteMe'
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'SirVer/ultisnips'

Plug 'rizzatti/dash.vim' 
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
call plug#end()

syntax enable
if (has("termguicolors"))
 set termguicolors
endif
" Theme
colorscheme OceanicNext
let g:airline_powerline_fonts = 1
let g:airline_theme='oceanicnext'


set backspace=indent,eol,start

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set showcmd
set showmatch
set showmode
set ruler
set number

set noerrorbells
set modeline
set autochdir

" ======================== Key Mappings ========================
let mapleader = ","

"Unmap the arrow keys"
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

" Make it easier to make it easier to edit faster
nno <leader>ee :tabnew $MYVIMRC<cr>
nno <leader>ss :source $MYVIMRC<cr>

nno <leader>" viw<esc>a"<esc>hbi"<esc>lel
nno <leader>' viw<esc>a'<esc>hbi'<esc>lel

nno <leader>x ZZ
nno <leader>w :w<cr>

nno <leader>ll :!ls -al<cr>


nno H 0
nno L s

ino jk <esc>
ino <esc> <nop>

" POJ
nno <F5> :w<cr>:!clear&&make<cr>

" Mac vim settings
if has("gui_macvim")
    set gfn=Monaco\ for\ Powerline:h13
    set linespace=1

    no <C-Tab> :tabnext<cr>
    no <C-S-Tab> :tabprev<cr>

    " Switch to specific tab numbers with Command-number
    no <D-1> :tabn 1<cr>
    no <D-2> :tabn 2<cr>
    no <D-3> :tabn 3<cr>
    no <D-4> :tabn 4<cr>
    no <D-5> :tabn 5<cr>
    no <D-6> :tabn 6<cr>
    no <D-7> :tabn 7<cr>
    no <D-8> :tabn 8<cr>
    no <D-9> :tabn 9<cr>

    ino <D-1> <esc>:tabn 1<cr>
    ino <D-2> <esc>:tabn 2<cr>
    ino <D-3> <esc>:tabn 3<cr>
    ino <D-4> <esc>:tabn 4<cr>
    ino <D-5> <esc>:tabn 5<cr>
    ino <D-6> <esc>:tabn 6<cr>
    ino <D-7> <esc>:tabn 7<cr>
    ino <D-8> <esc>:tabn 8<cr>
    ino <D-9> <esc>:tabn 9<cr>
endif



" Vim Markdown
let g:vim_markdown_folding_disabled = 1


" YCM configs
set completeopt-=preview
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_add_preview_to_completeopt = 1

set pastetoggle=<F3>

" Unispieet
let g:UltiSnipsExpandTrigger="<c-j>"

" Dash
nno <leader>d :Dash!<cr>
nno <leader>h :Dash<Space>

" Qt
nno <leader>q :w<cr>:!qmlscene %<cr>

" NertTree
nno <leader><leader> :NERDTreeToggle<cr>

" quick invoke recording
nno <F2> @a
