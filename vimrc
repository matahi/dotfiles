""""" General Parameters 
"""""""""""""""""""""""""""""""

" vi compatibility
set nocompatible

" see line numbers
set number 

" filetype
filetype plugin indent on
syntax on

" colorscheme
colorscheme torte

""""""""""""""""""""""""""""""""""""""""
" General Plugin Management via pathogen 
"""""""""""""""""""""""""""""""""""""""
call pathogen#infect()
call pathogen#helptags()

""""""""""""""""""""""""""
" Specific Plugins configs
""""""""""""""""""""""""""

" R plugin
""""""""""
au FileType r setl foldmethod=marker et

" to not replace <- by _
let vimrplugin_assign=0 

let vimrplugin_rnowebchunk=0
set completeopt=menu

" Latex plugin
""""""""""""""""""""
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
let g:Imap_UsePlaceHolders = 0 " Remove the <++> after double brackets

" Starting with Vim 7, the filetype of empty .tex files defaults
" to 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

"" Specifying the apps that open ps/pdf/dvi
let g:Tex_TreatMacViewerAsUNIX=1
let g:Tex_ExecuteUNIXViewerInForeground=1
let g:Tex_ViewRule_ps='open -a Preview'
let g:Tex_ViewRule_pdf='open -a Preview'
let g:Tex_ViewRule_dvi='open -a /Applications/texniscope.app'
let g:Tex_IgnoreLevel=7
let g:Tex_GotoError=0
"" Using pdflatex directly to compile pdf (better if you include graphics)
let g:Tex_CompileRule_pdf='pdflatex --interaction=nonstopmode $*'
let g:Tex_MultipleCompileFormats='dvi,pdf' 
" If you modify \label or \cite then latex recompile several time if its dvi but you need to add pdf in the list otherwise.
"" Otherwise, compile into dvi using latex then transform dvi -> ps > pdf
"" using the following commands
" let g:Tex_FormatDependency_pdf='dvi,ps,pdf'
" let g:Tex_CompileRule_dvi='latex --interaction=nonstopmode $*'
" let g:Tex_CompileRule_ps='dvips -Ppdf -o $*.ps $*.dvi'
" let g:Tex_CompileRule_pdf='ps2pdf $*.ps'

" Latex Settings
set encoding=utf-8
set fileencoding=
setglobal fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,latin1
set termencoding=latin1

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a single file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" Markdown plugin
""""""""""""""""""""
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
let g:markdown_fenced_languages = ['r']
" let g:markdown_fenced_languages = ['r', 'coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html', 'r']

" Python configuration
""""""""""""""""""""
" autocmd FileType python,pyrex,yml set autoindent tabstop=4 shiftwidth=4 smarttab expandtab
" autocmd FileType python,pyrex,yml set foldmethod=indent foldminlines=3
" autocmd FileType python set omnifunc=pythoncomplete#Complete
" autocmd FileType python inoremap <Nul> <C-x><C-o>


