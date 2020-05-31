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
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
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

" Vim Instant Markdown

filetype plugin on
"Uncomment to override defaults:
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
let g:instant_markdown_open_to_the_world = 1
let g:instant_markdown_allow_unsafe_content = 1
let g:instant_markdown_allow_external_content = 0
let g:instant_markdown_mathjax = 1
let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
let g:instant_markdown_autoscroll = 0
let g:instant_markdown_port = 8888
let g:instant_markdown_python = 1
let g:instant_markdown_browser = "firefox --new-window"
