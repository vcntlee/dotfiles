if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# added by Anaconda 1.9.1 installer
export PATH="/Users/Vicente_Lee/anaconda/bin:$PATH"

export JAVA_HOME=$(/usr/libexec/java_home)

alias wifion="networksetup -setairportpower en1 on" 
alias wifioff="networksetup -setairportpower en1 off"
alias volume0="osascript -e 'set volume 0'" 
alias sandcpp="cd ~/Desktop/desktop/cpp_sandbox"
alias eecs280="cd ~/Desktop/desktop/EECS280"
alias eecs281="cd ~/Desktop/desktop/EECS281"
alias eecs402="cd ~/Desktop/desktop/EECS402"
alias deepfield="cd ~/deepfield-bootstrap"
alias chrome="open -a google\ chrome"
alias iostut2="open ~/Desktop/desktop/iosTutorials/The\ iOS\ Apprentice\ 2\ -\ Checklists/iOS_Apprentice_2_Checklists_v3.3.pdf"
alias iosapp2="open ~/Desktop/desktop/iosApps/Checklists/Checklists.xcodeproj"
alias dsk="cd ~/Desktop/desktop"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#shell color
export CLICOLOR=1
# a(black), b(red), c(green), d(brown), e(blue), f(magenta), g(cyan), h(light grey), x(default foreground or background)

export LSCOLORS=CxFxCxDxbxegedabagaced

export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export DOCKER_HOST=tcp://10.40.42.42:4243
export EDITOR=vim
PS1='\[\e[33m\]\d \[\e[0;36m\]\t\[\e[0m\] \[\e[32m\]Vicente \[\e[33m\]\w\[\e[0m\]\$ '

#git auto-completion
if [ -f ~/.git-completion.bash ]; then
      . ~/.git-completion.bash
  fi

stdocker(){
    deepfield
    vagrant resume
    ./pdocker.py login
}
redocker(){
    ~/deepfield-bootstrap/pdocker.py login
}

vmstop(){
    deepfield
    vagrant suspend
}

function activate(){
    if [ $# -eq 0 ]; then 
        source venv/bin/activate #default
    elif [ $# -eq 1 ]; then 
        source "$1"/bin/activate #arg based
    fi
}

export PATH=/usr/local/bin:/usr/local/sbin:$PATH
