GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\h\[\033[00m\]:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
  # ADD curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o git-completion.bash
  # ADD curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o git-prompt.sh
  # ADD curl https://raw.githubusercontent.com/wp-cli/wp-cli/master/utils/wp-completion.bash -o wp-completion.bash
fi

export XDG_CONFIG_HOME="$HOME/.config"

function emulator { cd "$(dirname "$(which emulator)")" && ./emulator "$@"; }

alias ll='ls -l'
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
alias brew-up="brew upgrade && brew cleanup"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash
eval "$(gh completion -s bash)"


complete -C /usr/local/bin/terraform terraform
