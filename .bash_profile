export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=/usr/local/Cellar/mongodb/2.4.9/bin:$PATH
eval "$(hub alias -s)"

# rabbitmq
export RABBITMQ=/usr/local/sbin

# rust
export RUSTPATH=$HOME/.cargo/bin

# golang
export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export GOBIN=$GOROOT/bin


export PATH=$PATH:$RABBITMQ:$RUSTPATH:$GOPATH/bin:$GOBIN

# maven
export M2_HOME=/Users/kiven/apache-maven-3.5.0
export PATH=$PATH:$M2_HOME/bin

export PATH="$HOME/.cargo/bin:$PATH"
