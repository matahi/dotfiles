############
# Customize prompt
PS1='\u@\h:\w$ '

#############
## Alias
#############
# alias vim="/usr/local/bin/vim"
# alias mvim="/usr/local/Cellar/macvim/7.4-88/bin/mvim"
# alias mvim="/usr/local/Cellar/macvim/8.0-144_3/bin/mvim"
# alias vim="/usr/local/Cellar/vim/8.0.1400_4/bin/vim"

#############
## R Config
#############
defaults write org.R-project.R force.LANG en_US.UTF-8

#############
## Customizing Terminal 
#############
alias ls='ls -Gp' ## Putting color and a "/" for folders

#############
## Paths
#############
# Personnal
alias webpage='cd ~/Documents/Work/Webpage/matahi.github.io'
alias Kaggle='cd ~/Documents/Work/kaggle'
alias Perso='cd ~/Documents/Perso/Projects/'

alias Owkin='cd ~/Documents/Work/'
alias Projects='cd ~/Documents/Work/Projects'
alias Research='cd ~/Documents/Work/Projects/Research'
alias Pharma='cd ~/Documents/Work/Projects/Pharma'

alias Radiology='cd ~/Documents/Work/Projects/Research/Radiology'
alias Translational='cd ~/Documents/Work/Projects/Research/Translational'
alias Molecular='cd ~/Documents/Work/Projects/Research/Molecular/'	
alias Histology='cd ~/Documents/Work/Projects/Research/Histology'
alias Loop='cd ~/Documents/Work/Projects/Research/Others/OwkinLoop'
alias Mesothelioma='cd ~/Documents/Work/Projects/Research/Histology/Mesothelioma/'
alias Immune='cd ~/Documents/Work/Projects/Research/Molecular/Immune/'	
alias Mutation='cd ~/Documents/Work/Projects/Research/Molecular/Mutation/'	

alias Nyc='ssh -AXY mam@178.208.18.182'
alias Shallowy='ssh -A mam@172.16.0.1'
alias Deepy='ssh -A mam@172.16.0.2'
alias BigDaddy='ssh -A mam@172.16.0.3'
alias Tasty='ssh -A mam@172.16.0.4'
alias Widy='ssh -A mam@172.16.0.5'

# Personnal
# alias ssh='ssh -X'

# SVN editor
SVN_EDITOR=vim

# PATH
PATH=~/Documents/Work/Postdoc/src/homer/bin:$PATH # homer
PATH=~/Documents/Work/Postdoc/src/weblogo:$PATH # webpage
PATH=/usr/local/bin:/usr/local/sbin:$PATH 
PATH=/Users/matahi/Softwares/bin/:$PATH # Adding Samtools
# PATH=/usr/local/opt/python/libexec/bin:$PATH # python pointing to 3.6 with homebrew

# PKG_CONFIG_PATH
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig/gtk+-2.0.pc:$PKG_CONFIG_PATH
PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig:$PKG_CONFIG_PATH

# # Add CFLAGS for python modules
# CFLAGS=-I$(brew --prefix)/include 
# LDFLAGS=-L$(brew --prefix)/lib 
# # pip install <package>

# Exporting
export SVN_EDITOR
export PATH
export PKG_CONFIG_PATH
	
#virtualenv #after installing python/virtualenv/virtualenvwrapper
# export WORKON_HOME=~/Envs
# source /usr/local/bin/virtualenvwrapper.sh

# parameter for pyenv to work with YouCompleteMe
export PYTHON_CONFIGURE_OPTS="--enable-framework"

# to see active virtualenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1 

eval "$(pyenv init -)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/matahi/google-cloud-sdk/path.bash.inc' ]; then . '/Users/matahi/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/matahi/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/matahi/google-cloud-sdk/completion.bash.inc'; fi
