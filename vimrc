set nocompatible
syntax enable
filetype plugin on
filetype indent on

set number
colorscheme torte

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-pathogen settings
execute pathogen#infect()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" R plugin settings
" let vimrplugin_assign=0
au FileType r setl foldmethod=marker et
" let vimrplugin_applescript = 0

" let vimrplugin_notmuxconf = 1
" let vimrplugin_noscreenrc = 1

let vimrplugin_underscore=0
let vimrplugin_rnowebchunk=0
set completeopt=menu

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown to HTML
nmap <leader>md :%!/usr/bin/Markdown.pl --html4tags <cr>

" Markdown plugin
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_initial_foldlevel=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Latex plugin settings
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on
let g:Imap_UsePlaceHolders = 0 " Remove the <++> after double brackets

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults
" to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_TreatMacViewerAsUNIX=1
let g:Tex_ExecuteUNIXViewerInForeground=1
let g:Tex_ViewRule_ps='open -a Preview'
let g:Tex_ViewRule_pdf='open -a Preview'
let g:Tex_ViewRule_dvi='open -a /Applications/texniscope.app'
