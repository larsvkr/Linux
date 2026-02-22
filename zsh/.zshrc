#aliases
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'
alias ec="$EDITOR $HOME./zshrc" #Edit .zshrc
alias sc="source $HOME/.zshrc" #Reload zhc configuration

#Set up prompt- if you load Theme with zplugin as in this example this will be overridden
autoload -Uz promptinit
promptinit
prompt adam1   #see Zsh prompt Theme below 

#Use emacs keybindings even if out Editor is set to vi
bindkey -e 

setopt histignorealldups sharehistory

#keep 5000 lines of history within thhe shell and save it to ~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history

#Use modern completing system 
autoload -Uz compinit
compinit

#zplug manage plugins
source /usr/share/zplug/init.zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "junegunn/fzf"
zplug "themes/robbyrussel", from:oh-my-zsh, as:theme #Theme

#zplug - install/load new plugins when zsh is started or reloaded
if ! zplug check --verbose; then 
	printf"(Install? [y/n]: " 
	if read -q; then 
		echo; zplug install
	fi 
fi 
zplug load --verbose

