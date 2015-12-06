export PATH=/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin:/usr/local/share/python:/usr/local/bin:$PATH

##Colorful ls
alias ls="ls -hG"
alias ll='ls -lh'
export PS1='\[\033[01;32m\]\u@MaxMBP: \[\033[01;31m\]\W \$ \[\033[00m\]'

set -o vi

#export TERM=rxvt-unicode
#export EDITOR=/usr/bin/vim
#export VISUAL="/usr/bin/vim -p -X"
export HISTFILESIZE=5000

export TEXMFHOME=~/Library/texmf


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


#alias uploadScripts="scp ~/tubcloud/TUBWebpage/MnmlBio_UltraLinx/files/scripts/ss15/* maxkoenig@sshgate.tu-berlin.de:~/public_html/files/scripts/ss15/"
alias uploadScripts="scp ~/tubcloud/Uni/ss15/Wahrscheinlichkeit/WTIII.pdf maxkoenig@sshgate.tu-berlin.de:~/public_html/files/scripts/ss15/; scp ~/tubcloud/Uni/ss15/Differentialgleichungen/DiffIIA.pdf maxkoenig@sshgate.tu-berlin.de:~/public_html/files/scripts/ss15/; scp ~/tubcloud/Uni/ss15/FunctionalAnalysis/FAIII.pdf maxkoenig@sshgate.tu-berlin.de:~/public_html/files/scripts/ss15/"
alias sshlogin="ssh maxkoenig@master.ml.tu-berlin.de"
alias testAway="python -m unittest discover"

alias vimIPprep="stty stop undef # to unmap ctrl-s"


set show-mode-in-prompt on

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
