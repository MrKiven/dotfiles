export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=/usr/local/Cellar/mongodb/2.4.9/bin:$PATH
eval "$(hub alias -s)"

# rabbitmq
export RABBITMQ=/usr/local/sbin

# rust
export RUSTPATH=$HOME/.cargo/bin

# golang
export GOPATH=$HOME/eleme_work_space/go_workspace
export GOROOT=/usr/local/go


export PATH=$PATH:$RABBITMQ:$RUSTPATH:$GOPATH/bin:$GOROOT/bin
