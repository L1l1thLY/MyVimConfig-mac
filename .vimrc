" Global Setting
" Configuration file for vim
set modelines=0		" CVE-2007-2438
" Normally we use vim-extensions. If you want true vi-compatibility
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup
"The width of a Tab.
set tabstop=4
"Expand a tab to some spaces.
set expandtab

"Apearance Setting
"let g:solarized_termcolors=256
set nu!
set mouse=a
set background=dark
colorscheme solarized
syntax on
set cursorline "Highlight the row you select.
set colorcolumn=100

"Plugin Setting
filetype plugin on
execute pathogen#infect()
""Python Omni
autocmd FileType python set omnifunc=pythoncomplete#Complete
""Match tag always
let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \}


"Indent Setting
filetype plugin indent on

""Smart Indent Setting
set smartindent
set backspace=indent,eol,start	" more powerful backspacing
""C Indent Setting 
set cindent 
set shiftwidth=4
""Auto Indent Setting
set autoindent 

set tags+=~/.vim/tags/STLtags
set tags+=~/.vim/tags/CppTags
"Setting for vim-javascript
"" JSDocs NGDocs FLow
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
"" Enables code folding based on our syntax file
"set foldmethod=syntax

"Setting for vim-jsx
""JSX syntax highlighting and indenting only for .jsx
let g:jsx_ext_required = 0
""to your .vimrc or somewhere in your include path. If you wish to restrict JSX to files with the pre-v0.12 @jsx React.DOM pragma, add
"let g:jsx_pragma_required = 1
