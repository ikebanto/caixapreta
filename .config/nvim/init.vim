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
set showcmd                                        "Mostra interacao dos comandos aplicados lado direito inferior
set relativenumber                                 "Destaca numero da linha  
set number                                         "Habilita numeração"
set hidden                                         "habilta buffer 
set mouse=a
set inccommand=split                               "Habilta Substituiçao de texto em tempo real
set hls
set cul



let mapleader="\<space>"                          "Mapeia para tecla espaço, a tecla leader que por padrão é a tecla \

" -------------------------->
"  Atalhos e mapeamentos de teclas
" -------------------------->


" Faz Uso do Plugin fzf e o silversearch-ag para fazer pesquisa de docs
nnoremap <c-p> :Files<cr>                             
nnoremap <c-f> :Ag<space>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>er :vspit ~/.config/ranger/rc.conf<cr>
nnoremap <leader>ez :vsplit ~/.zshrc<cr>
nnoremap <leader>sz :source ~/.zshrc<cr>


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
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'airblade/vim-gitgutter'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'roxma/nvim-completion-manager'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
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
"et g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1
