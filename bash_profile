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
alias toto='cd ~/Documents/Work/projects'
alias kaggle='cd ~/Documents/Work/kaggle'

alias owkin='cd ~/Documents/Work/'
alias Research='cd ~/Documents/Work/Projects/Research'
alias Mesothelioma='cd ~/Documents/Work/Projects/Research/Mesothelioma/'
alias Immune='cd ~/Documents/Work/Projects/Research/Immune/'	

alias shallowy='ssh mam@193.248.206.26'

# Personnal
# alias ssh='ssh -X'

# SVN editor
SVN_EDITOR=vim

# PATH
PATH=~/Documents/Work/Postdoc/src/homer/bin:$PATH # homer
PATH=~/Documents/Work/Postdoc/src/weblogo:$PATH # webpage
PATH=/usr/local/bin:/usr/local/sbin:$PATH 
# 	PATH=/usr/local/opt/python/libexec/bin:$PATH # python pointing to 3.6 with homebrew

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

eval "$(pyenv init -)"
