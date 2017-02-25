alias g='git'
alias git='hub'
# alias rm='rm -i'
alias df='df -h'
alias ..='cd ..'
alias tf='tail -f'
alias vi='vim'
alias ll='ls -al'
alias work='source ~/eleme_work_space/pro/bin/activate'
alias gogo='cd ${GOPATH}'
# . /Users/shenjialong/eleme_work_space/pro/z/z.sh
# [ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(pyenv init -)"

alias rm=trash
alias r=trash
alias rl='ls -al ~/.trash'  # show files in ~/.trash
alias ur=undelfile  # undelete file

undelfile(){
    mv -i ~/.trash/$@ ./
}

trash(){
    mv $@ ~/.trash
}

cleartrash(){
    # echo -n "Clear sure?[n]: "
    # read confirm
    # [ $confirm = 'y' ] || [ $confirm = 'Y' ] && /bin/rm -rf ~/.trash/*
    /bin/rm -rf ~/.trash/*
}
