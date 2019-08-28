" ~~~~~~[Plugin Instilation]~~~~~
call plug#begin('~/.vim/plugged')
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" -- YouCompleteMe
Plug 'Valloric/YouCompleteMe', {'do':'./install.py'}
" -- GitGutter
Plug 'airblade/vim-gitgutter'
" -- Syntastic
Plug 'scrooloose/syntastic'
" -- Airline
Plug 'vim-airline/vim-airline'
" == Airline Themes
Plug 'vim-airline/vim-airline-themes'
" -- IndentGuide
Plug 'nathanaelkane/vim-indent-guides'
" -- dev icons
Plug 'ryanoasis/vim-devicons'
" -- Gruvbox Theme
Plug 'morhetz/gruvbox'
" -- Python Syntax
Plug 'hdima/python-syntax'
" -- Surround
Plug 'tpope/vim-surround'
" -- Python Autocompletion
Plug 'davidhalter/jedi-vim'
" -- Multi-Cursor
Plug 'terryma/vim-multiple-cursors'
" -- Emmit
Plug 'mattn/emmet-vim'
" -- Vim Tex (LaTeX Plugin)
Plug 'lervag/vimtex'
" -- Semshi (Python Syntax)
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
call plug#end()
" ~~~~~~~~[Plug Init End]~~~~~~~~

" =======[General Settings]======
set nocompatible
filetype plugin on
filetype indent on

" -- Space/Tap Settings
set tabstop=4
set shiftwidth=4
set smarttab
set splitright
set expandtab

" -- Search Settings
set hlsearch
set ignorecase
set incsearch
set showmatch

" -- Line Break/Word Wrap Settings
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0
set whichwrap=b,s,<,>,[,]
set backspace=indent,eol,start

" -- Visual Settings
syntax enable
set t_Co=256
colorscheme gruvbox
set scrolloff=4
set nu
set cursorline
set background=dark

" -- Disable Auto-Comment Insersion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" -- rasi Syntax Highlighting
au BufNewFile,BufRead /*.rasi setf css

" ======[Plugin Settings]======

" -- YouCompleteMe Settings
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" -- GitGutter Settings
set updatetime=100
let g:gitgutter_enabled=1
let g:gitgutter_override_sign_column_highlight=0
highlight SignColumn ctermbg=NONE
if exists('&signcolumn')
    set signcolumn=yes
else
    let g:gitgutter_sign_column_always=1
endif
highlight GitGutterAdd              ctermfg=green   ctermbg=NONE
highlight GitGutterChange           ctermfg=cyan    ctermbg=NONE
highlight GitGutterDelete           ctermfg=red     ctermbg=NONE
highlight GitGutterChangeDelete     ctermfg=Magenta ctermbg=NONE
let g:gitgutter_sign_added              = '+'
let g:gitgutter_sign_modified           = '▋'
let g:gitgutter_sign_removed            = '✖'
let g:gitgutter_sign_removed_first_line = '_'
let g:gitgutter_sign_modified_removed   = ''

" --Syntastic Settings
map <C-s> :SyntasticToggleMode<CR>
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_aggregate_errors=1
let g:syntastic_id_checker=0
let g:syntastic_sort_aggregated_errors=0
let g:syntastic_echo_current_error=1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol = "\u2717"
let g:syntastic_warning_symbol = "\u26A0"

" --Airline Settings
let g:airline_detect_paste=1
let g:airline#extensions#whitespace#enabled=0
let g:airline_powerline_fonts=1
let g:airline_theme='gruvbox'
let g:airline#extensions#syntastic#error_symbol='E:'
let g:airline#extensions#syntastic#stl_format_err='%E{[%fe(#%e)]}'
let g:airline#extensions#syntastic#warning_symbol='W:'
let g:airline#extensions#syntastic#stl_format_warn='%W{[%fw(#%w)]}'

" --Gruvbox Settings
let g:gruvbox_contrast_dark='hard'

" --Indent Settings
let g:IndentGuidesEnable=1
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

" -- Python Syntax Settings
let g:python_highlight_all=1

" -- Multipule Cursors
" Use Ctrl+N in normal mode followed by: c - change text, I - insert at start of range, A - insert at end of range.

" -- HTML Preview with F5
nnoremap <F5> :silent update<Bar>silent !firefox %:p &<CR>

" -- Vim Tex
let g:vimtex_compiler_progname = 'nvr'

" -- Semshi

