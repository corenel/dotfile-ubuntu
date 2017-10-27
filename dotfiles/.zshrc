export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64"
export CUDA_HOME=/usr/local/cuda
export ZSH=$HOME/.oh-my-zsh
export TERM=xterm-256color
export GTEST_COLOR=1
export EDITOR='vim'
# export CXX="ccache clang++"
# export CC="ccache clang"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

ZSH_THEME="ys"

plugins=(git autojump zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Alias
# edit config
alias sc='source $HOME/.zshrc'
alias zc='vim $HOME/.zshrc'
alias zs='vim $HOME/.ssh/config'
# ls (from common-aliases)
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias ll='ls -l'      #long list
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'
# make
alias mk='make -j`nproc`'
alias mc='make clean'
# git
alias ci='git add . && git commit -m "ci" && git push'
# grep
alias grep='grep --color'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS}'
alias hst='fc -El 0'
alias hsp='fc -El 0 | grep'
alias psg='ps ax | grep'
# head and tail
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L="| less"
alias -g M="| most"
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"
alias -g P="2>&1| pygmentize -l pytb"
# find
alias fd='find . -type d -name' # find directories in current path
alias ff='find . -type f -name' # find files in current path
alias fdr='sudo find / -type d -name' # find directories in root path
alias ffr='sudo find / -type f -name' # find files in root path
# dangerous operations with prompt
alias rm='rm -i'
# tmux
alias t='TERM=xterm-256color tmux'
alias tl='tmux list-sessions'
alias ta='tmux attach -t'
alias ts='t new -s'
# python
alias py3='python3'
alias py2='python2'
# print info
alias dfh='df -hlT'
alias gput='watch -n 1 nvidia-smi'
# package manager
export apt_pref='apt-get' # change to apt-fast if you like
alias aac='sudo $apt_pref autoclean'
alias aupd='sudo $apt_pref update'
alias aupg='sudo $apt_pref upgrade'
alias audg='sudo $apt_pref update && sudo $apt_pref upgrade'
alias apge='sudo $apt_pref purge'
alias arm='sudo $apt_pref remove'
alias di='sudo dpkg -i'
alias ai='sudo $apt_pref install'
alias acs='apt-cache search'
# shadowsocks
alias ss='$HOME/proxyservice on'
alias ssk='$HOME/proxyservice off'

# proxy
proxy='http://127.0.0.1:6152'
function proxy () {
  export http_proxy=$proxy
  export HTTPS_PROXY=$http_proxy
  export HTTP_PROXY=$http_proxy
  export FTP_PROXY=$http_proxy
  export https_proxy=$http_proxy
  export ftp_proxy=$http_proxy
  export NO_PROXY="local-delivery,local-auth"
  export no_proxy=$NO_PROXY
  echo "Proxy on"
}

function noproxy () {
  unset http_proxy
  unset HTTPS_PROXY
  unset HTTP_PROXY
  unset FTP_PROXY
  unset https_proxy
  unset ftp_proxy
  echo "Proxy off"
}

# virtualenv
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# for ZJUDancer humanoid project
# export ZJUDANCER_ROBOTID=5
# export ZJUDANCER_GUI=1
# export ZJUDANCER_GPU=0
# export ZJUDANCER_SIMULATION=true
# workon humanoid

# ROS
# export PYTHONPATH=${PYTHONPATH}:"/usr/lib/python2.7/dist-packages"
# source /opt/ros/kinetic/setup.zsh
# source $HOME/humanoid/devel/setup.zsh
# source $HOME/humanoid-lib/devel/setup.zsh
# export ROSCONSOLE_FORMAT='[${time} ${file}:${line}]: ${message}'

# alias rcd='roscd'
# alias e='rosed'
# alias rmk='catkin_make -j8'
# alias rt="catkin_make run_tests"
# alias rpkg='catkin_create_pkg'
# alias rcore='roscore &'
# alias rl='roslaunch'
# alias rr='rosrun'

# alias sim='roslaunch dlaunch sim.launch'
# alias config='rl dconfig dconfig.launch'
# alias monitor='QT_DEVICE_PIXEL_RATIO=auto rr dmonitor dmonitor'
# alias dviz="rr dviz dviz"
# alias v="rl dvision default.launch"
# alias m="rl dmotion default.launch"
# alias rmv="rl dlaunch mv.launch"
# alias loglevel="sudo vim $ROS_ROOT/config/rosconsole.config"

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi
