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

# alias
alias sc='source ~/.zshrc'
alias zc='vim ~/.zshrc'
alias mk='make -j`nproc`'
alias mc='make clean'
alias ci='g add . && g ci -m "ci" && g push'
alias hsg='history | grep'
alias psg='ps ax | grep'
alias t='TERM=xterm-256color tmux'
alias tl='tmux list-sessions'
alias ta='tmux attach -t'
alias ts='t new -s'
alias py3='python3'
alias py2='python2'
alias gput='watch -n 1 nvidia-smi'
alias install='sudo apt-get install'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
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
# workon humanoid

# for ZJUDancer humanoid project
# export ZJUDANCER_ROBOTID=5
# export ZJUDANCER_GUI=1
# export ZJUDANCER_GPU=0
# export ZJUDANCER_SIMULATION=true

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
