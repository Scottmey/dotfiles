ZSH=$HOME/.oh-my-zsh

ZSH_THEME="pygmalion"

alias c="clear"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias pg-start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg-stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

COMPLETION_WAITING_DOTS="true"

plugins=(github git brew node npm osx python bundler gitignore react-native)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_201, x86_64`

export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH=".git/safe/../../bin:.git/safe/../../vendor/bundle/bin:$PATH"
export PATH="$HOME/.node/bin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/2.6.0/bin/:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
