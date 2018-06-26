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
alias work='cd ~/Documents/Work/'

# Thesis
alias methylation='cd ~/Documents/Work/PhD/methylation/'
alias Thesis='cd ~/Documents/Work/PhD/methylation/Manuscript/'
alias Defense='cd ~/Documents/Work/PhD/methylation/Defense/'
alias CpG='cd ~/Documents/Work/PhD/methylation/Human450K/CpG/'
alias CIMP='cd ~/Documents/Work/PhD/methylation/Human450K/CIMP/'

# Postdoc
alias mskcc='cd ~/Documents/Work/Postdoc'
alias projects='cd ~/Documents/Work/Postdoc/projects'
alias AML='cd ~/Documents/Work/Postdoc/projects/AML'
alias scd='cd ~/Documents/Work/Postdoc/projects/scd'
alias Lila='cd ~/Documents/Work/Postdoc/projects/Lila'
alias Fusion='cd ~/Documents/Work/Postdoc/projects/Fusion'
alias Myeloid='cd ~/Documents/Work/Postdoc/projects/Myeloid'
alias Classification='cd ~/Documents/Work/Postdoc/projects/Classification'
alias WGS='cd ~/Documents/Work/Postdoc/projects/WGS'
alias Validation='cd ~/Documents/Work/Postdoc/projects/Validation'
alias Niccolo='cd ~/Documents/Work/Postdoc/projects/Myeloma'
alias Eva='cd ~/Documents/Work/Postdoc/projects/Eva'
alias Cargo='cd ~/Documents/Work/Postdoc/projects/Cargo_final'
alias CMML='cd ~/Documents/Work/Postdoc/projects/CMML'
alias MDSU='cd ~/Documents/Work/Postdoc/projects/MDSU'
alias Impute='cd ~/Documents/Work/Postdoc/projects/imputation'
alias notebook='cd ~/Google\ Drive/leukgen/home/moariim/Classification'

# Personnal
alias webpage='cd ~/Documents/Work/Webpage/matahi.github.io'
alias toto='cd ~/Documents/Work/projects'
alias kaggle='cd ~/Documents/Work/kaggle'

# ssh connection 
alias s01='ssh -X moariim@s01.cbio.mskcc.org'
alias luna='ssh -X moariim@luna'
alias selene='ssh -X moariim@selene'


# Personnal
# alias ssh='ssh -X'

# Python Config
# export PYTHONPATH=/usr/local/anaconda3/lib
# export PYTHONPATH=/usr/local/anaconda3/lib/python3.6/site-packages:$PYTHONPATH
PYTHONPATH=/usr/local/lib/python3.6/site-packages:$PYTHONPATH

# SVN editor
SVN_EDITOR=vim

# PATH
PATH=~/Documents/Work/Postdoc/src/homer/bin:$PATH # homer
PATH=~/Documents/Work/Postdoc/src/weblogo:$PATH # webpage
PATH=/usr/local/bin:/usr/local/sbin:$PATH 
PATH=/usr/local/opt/python/libexec/bin:$PATH # python pointing to 3.6 with homebrew

# PKG_CONFIG_PATH
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig/gtk+-2.0.pc:$PKG_CONFIG_PATH
PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig:$PKG_CONFIG_PATH

# Add CFLAGS for python modulesoCFLAGS=-I$(brew --prefix)/include LDFLAGS=-L$(brew --prefix)/lib pip install <package>
CFLAGS=-I$(brew --prefix)/include 
LDFLAGS=-L$(brew --prefix)/lib 
# pip install <package>

# Exporting
export SVN_EDITOR
export PATH
export PKG_CONFIG_PATH
export PYTHONPATH
	
#virtualenv
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# added by Miniconda3 installer
export PATH="/Users/Matahi/miniconda3/bin:$PATH"
