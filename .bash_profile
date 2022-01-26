export PATH=/usr/local/bin:$PATH
if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

if which plenv > /dev/null; then eval "$(plenv init -)"; fi
eval "$(rbenv init -)"
export PATH="/usr/local/opt/redis@3.2/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/Library/Android/sdk/tools/
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools/
export PATH=$PATH:$HOME/.composer/vendor/bin/
export PATH=$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin
export PATH=./vendor/bin:$PATH
export PATH=./node_modules/.bin:$PATH
export ANDROID_HOME=$HOME/Library/Android/sdk/
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion