export ZSH="/Users/celsalves/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
if [ "$TMUX" = "" ]; then tmux attach -t init || tmux new -s init; fi
source $ZSH/oh-my-zsh.sh
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
POWERLEVEL10K_DISABLE_CONFIGURATION_WIZARD=true
ITERM_ENABLE_SHELL_INTEGRATION_WITH_TMUX=YES
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
export PATH="/Users/$USER/Library/Python/3.9//bin:$PATH"
export SDKMAN_DIR="/Users/$USER/.sdkman"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# 'Git Branch Hierarchy'
alias gbh="git log --graph --simplify-by-decoration --pretty=format:'%d' --all"
alias gbt="git log --all --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gdt="git difftool --tool=vimdiff"
alias gs="gst"
alias gstsa="git stash save --all --include-untracked"
alias gmtool="git mergetool -t meld"
alias gbclean="git branch --merged | grep -v '\*' | grep -v master | grep -v staging | grep -v production | xargs -n 1 git branch -d"
alias gac="git add .; git commit"
alias gav="git add .; git commit -v"
alias gpl="git pull origin"# Added by furycli:

### JAVA HOME
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8.0)

echo $JAVA_HOME