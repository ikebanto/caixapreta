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
set showcmd  "Mostra interacao dos comandos aplicados lado direito inferior
set relativenumber
set number
set hidden
set mouse=a

"colorscheme gruvbox
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
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'airblade/vim-gitgutter'
call plug#end()

" Ranger
let g:ranger_map_keys = 0
map <leader>f :Ranger<CR>

" Vim-gitgutter
nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk
nmap <Leader>hs <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterUndoHunk

set updatetime=100
