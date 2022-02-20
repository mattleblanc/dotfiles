# Matt LeBlanc
# matt.leblanc@cern.ch
# .bashrc

# colours
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# ATLAS Environment Variables
function setupATLAS()
{
    export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
    export ALRB_localConfigDir=/home/common

    source ${ATLAS_LOCAL_ROOT_BASE}/user/atlasLocalSetup.sh
}

# for ATLAS git shifts -- port forwarding
alias l1shift='ssh -N -L localhost:9999:aibuild080.cern.ch: mleblanc@lxplus.cern.ch'

# Never open the emacs GUI! Ever!!
alias emacs='emacs -nw'

# Never open the ROOT splash, either! Although it's a lot better these days.
alias root='root -l'

#alias python='/usr/local/Cellar/python/2.7.14/bin/python2.7'
#source /Users/mleblanc/perl5/perlbrew/etc/bashrc
#alias python='/usr/bin/python'
alias python='python3'

# ssh stuff
alias usc='ssh -Y usc'
alias lx='ssh -Y lxplus'
alias sq='ssh -Y mlb@squirrel.dhcp.lbl.gov'
alias sqpf='ssh -N -f -L localhost:8889:localhost:8889 mlb@squirrel.dhcp.lbl.gov'
alias big='ssh -Y big'
alias bigger='ssh -Y bigger'
alias uc='ssh -Y mlb@login.af.uchicago.edu'

# ugh ROOT why are you like this
#. $(brew --prefix root6)/libexec/thisroot.sh
# . /Users/mleblanc/root/build/bin/thisroot.sh
. /Users/mleblanc/root-install/bin/thisroot.sh
#. /opt/homebrew/bin/thisroot.sh

alias usage='du -hs * | sort -hr'

export PATH=/usr/local/sbin:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin:$PATH
export PATH=/Users/mleblanc/fastjet-install/bin:$PATH
export PATH=/Users/mleblanc/Library/Python/2.7/bin:$PATH
export PATH=/Users/mleblanc/Repositories/pandamonium:$PATH
export PATH=/opt/homebrew/bin:$PATH
export PYTHON=/opt/homebrew/bin/python3
export PYTHONPATH=/Users/mleblanc/fastjet-install/lib/python3.9/site-packages/:$PYTHONPATH
#export PYTHONPATH=/Users/mleblanc/fastjet-install/lib/python2.7/site-packages/:$PYTHONPATH
export CPATH=/Users/mleblanc/fastjet-install/include:/Users/mleblanc/pythia/include/Pythia8/:$CPATH

# Stop git from opening diffs and logs in less
export GIT_PAGER=cat git log

# pico-8 rules
alias pico8='/Applications/PICO-8.app/Contents/MacOS/pico8'

# cuda stuff
#export CUDA_ROOT=/usr/local/cuda
#export LD_LIBRARY_PATH=$CUDA_ROOT/lib:$LD_LIBRARY_PATH
#export DYLD_LIBRARY_PATH=$CUDA_ROOT/lib:$DYLD_LIBRARY_PATH
#export LIBRARY_PATH=$CUDA_ROOT/lib:$LIBRARY_PATH
#export PATH=/usr/local/cuda/bin:$PATH

# mute macOS message about zsh being the default, bash 4 life
export BASH_SILENCE_DEPRECATION_WARNING=1
