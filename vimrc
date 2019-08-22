""""" General Parameters 
"""""""""""""""""""""""""""""""

" vi compatibility
set nocompatible
filetype off
set clipboard=unnamed

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" reauired
Plugin 'VundleVim/Vundle.vim'

" General plugin
Plugin 'w0rp/ale' "syntax checking
Plugin 'scrooloose/nerdtree'
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} "dont forget to install powerline fonts for iterm2 and set them in profiles
Plugin 'Valloric/YouCompleteMe' "auto-completion
" Plugin 'tpope/vim-fugitive' "git in vim

"" latex plugin
Plugin 'vim-latex/vim-latex' 

"" R plugin
Plugin 'jalvesaq/Nvim-R'
" Plugin 'jcfaria/Vim-R-plugin'
Plugin 'vim-pandoc/vim-rmarkdown' "R-markdown

"" IPython plugin
Plugin 'broesler/jupyter-vim'
" Plugin 'klen/python-mode'

"" Python autocompletion
" Plugin 'davidhalter/jedi-vim'

"" vim-slime
Plugin 'jpalardy/vim-slime'

call vundle#end()

" filetype
filetype plugin indent on
syntax on

" see line numbers
set number 

" colorscheme
colorscheme torte 

set pastetoggle=<F3>

""""""""""""""""""""""""""
" Specific Plugins configs
""""""""""""""""""""""""""

" Powerline setup
"""""""""""""""""
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" R plugin
""""""""""
au FileType r setl foldmethod=marker et

" to not replace <- by _
let R_assign=0

"set completeopt=menu

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
au BufNewFile,BufFilePre,BufRead *.Rmd set filetype=rmarkdown
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
let g:markdown_fenced_languages = ['r']
" let g:markdown_fenced_languages = ['r', 'coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html', 'r']


" Markdown to html command
nmap <leader>md :%!/usr/local/bin/Markdown.pl --html4tags <cr>

" Python configuration
""""""""""""""""""""
" autocmd FileType python,pyrex,yml set autoindent tabstop=4 shiftwidth=4 smarttab expandtab
" autocmd FileType python,pyrex,yml set foldmethod=indent foldminlines=3
" autocmd FileType python set omnifunc=pythoncomplete#Complete
" autocmd FileType python inoremap <Nul> <C-x><C-o>
"

" au BufNewFile,BufRead *.py
"     \ set tabstop=4
"     \ set softtabstop=4
"     \ set shiftwidth=4
"     \ set textwidth=79
"     \ set expandtab
"     \ set autoindent
"     \ set fileformat=unix
" 
" " Flagging Unnecessary Whitespace
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" "python with virtualenv support
" py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
"     project_base_dir = os.environ['VIRTUAL_ENV']
"     activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"     execfile(activate_this, dict(__file__=activate_this))
" EOF


" Jupyter-vim configuration
""""""""""""""""""""
let g:jupyter_verbose = 1 " Echo messages in the console

" " python-mode configuration
"""""""""""""""""""""
" let g:pymode_python = 'python3'

" vim-slime configuration
"""""""""""""""""""""""'
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
"let g:slime_default_config = {"socket_name": split($TMUX, ",")[0], "target_pane": ":.2"}


