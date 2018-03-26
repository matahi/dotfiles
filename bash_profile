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
## Python Config
#############
# export PYTHONPATH=/usr/local/lib/python2.7/site-packages/
# export PYTHONPATH=/usr/local/lib/python2.7/site-packages/:/usr/local/Cellar/python/2.7.11/bin

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
alias toto='cd ~/Documents/Work/projects'
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

# ssh connection 
alias s01='ssh -X moariim@s01.cbio.mskcc.org'
alias luna='ssh -X moariim@luna'
alias selene='ssh -X moariim@selene'


# Personnal
# alias ssh='ssh -X'

#############
## SVN editor
#############
export SVN_EDITOR=vim


# export PATH=:/usr/local/Cellar/macvim/8.0-144_3/bin:/usr/local/Cellar/vim/8.0.1400_4/bin:$PATH:~/Documents/Work/Postdoc/src/homer/bin:~/Documents/Work/Postdoc/src/weblogo
export PATH=:/usr/local/Cellar/macvim/8.0-145_2/bin:/usr/local/Cellar/vim/8.0.1600/bin:$PATH:~/Documents/Work/Postdoc/src/homer/bin:~/Documents/Work/Postdoc/src/weblogo

# added by Anaconda3 5.0.1 installer
export PATH=/usr/local/anaconda3/bin:$PATH
# export PATH="/Users/Matahi/anaconda3/bin:$PATH"

