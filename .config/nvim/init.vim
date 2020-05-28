" ------------------------------------------------------------------------
"
"    ____    _    _____  __    _    ____  ____  _____ _____  _    
"   / ___|  / \  |_ _\ \/ /   / \  |  _ \|  _ \| ____|_   _|/ \   
"  | |     / _ \  | | \  /   / _ \ | |_) | |_) |  _|   | | / _ \  
"  | |___ / ___ \ | | /  \  / ___ \|  __/|  _ <| |___  | |/ ___ \ 
"   \____/_/   \_\___/_/\_\/_/   \_\_|   |_| \_\_____| |_/_/   \_\
"
"
" ------------------------------------------------------------------------

" Config Iniciais basicas
"
set relativenumber
set number
set hidden
set mouse=a

colorscheme gruvbox
set background=dark
set t_Co=256
syntax on


" ------------------------>
" Configurações Plugins
" ------------------------>

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'morhetz/gruvbox'
Plug 'terroo/vim-auto-markdown'
call plug#end()



