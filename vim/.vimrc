" Installations
execute pathogen#infect()
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'w0rp/ale'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'prettier/vim-prettier'
Plugin 'jparise/vim-graphql'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'javascript-libraries-syntax'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'posva/vim-vue'
Plugin 'vim-python/python-syntax'
call vundle#end()

" ============== Vim Plug ================
call plug#begin('/Users/gatuk/.vim/plugged')
Plug 'prettier/vim-prettier'
Plug 'liuchengxu/space-vim-dark'    "theme
Plug 'elmcast/elm-vim'              "syntax highlight, function completion, etc for elm
call plug#end()


" =============== Vim Style  ===============
syntax enable
syntax on
filetype plugin indent on
set background=dark

autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set number
set showcmd
set incsearch
set hlsearch
set autoindent
set t_Co=256
set backspace=indent,eol,start
set ignorecase
set smartcase
setf robot

if exists('+colorcolumn')
  set colorcolumn=100
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" =============== Configuration for NerdTree  ===============
" Automatically open when vim start
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
" =============== End Configuration ===============


" =============== Configuration for Ctrl-P ===============
" Ctrl-P
set runtimepath^=~/.vim/bundle/ctrlp.vim
" =============== End Configuration ===============


" =============== Configuration for JavaScript Syntax ===============
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
" set foldmethod=syntax " JS code folding

" JSX Syntax highlighting and indenting
let g:jsx_ext_required = 0 " allowing JSX highlighting in .js file

" Remove trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e
" =============== End Configuration ===============


" =============== Configuration for JavaScript Syntax ===============
let g:python_highlight_all = 1
" ========================= End Configuration =======================

" =============== Configuration for ale ===============
let g:ale_sign_column_always = 1
let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'W'
let g:ale_echo_msg_format = '[%linter%] %s'
function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

set statusline=%{LinterStatus()}
set laststatus=2
" =============== End configuration ===============


" =============== Configuration for VIM Prettier ===============
autocmd FileType javascript set formatprg=prettier\ --stdin
let g:prettier#config#semi = 'false'
let g:prettier#autoformat = 1
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#print_width = 100
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
" autocmd BufWritePre *.js :normal gggqG
" =============== End configuration ===============
"
" =============== Configuration for library syntax ==============
let g:used_javascript_libs = 'underscore,react,chai,ramda,jasmine'
" ==============================================================
"
" Configuration for PaperColor theme
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.dark': {
  \       'transparent_background': 1,
  \       'override' : {
  \         'linenumber_bg' : ['#ffffff', '232']
  \       }
  \     }
  \   }
  \ }

" Configuration for You Complete Me Plugin
" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_enable_diagnostic_highlighting = 0
" End of Configuration

colorscheme PaperColor

" ====== disable backup
set nobackup
set nowb
set noswapfile
