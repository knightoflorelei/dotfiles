# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt nomatch
unsetopt autocd beep extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/knightoflorelei/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Aliases
# git aliases
alias gnit='git init .'
alias gadd='git add --all .'
alias gist='git status .'
alias gush='git push -u origin master'

# navigation
#go back to the previous directory and throw away the echo
alias back='cd - > /dev/null 2>&1'
alias home='cd ~'
alias down='cd ~/Downloads'
alias docs='cd ~/Documents'
alias pics='cd ~/Pictures'
alias mus='cd ~/Music'
alias vids='cd ~/Videos'
alias conf='cd ~/.config'

# utils aliases
alias ll='lsd -l --almost-all'
alias lsd='lsd --almost-all --group-directories-first --oneline'
alias ff='/usr/bin/freshfetch'

# lf exit of last directory
alias lf='lf && cd `cat ~/.config/lf/lf-lwd`'

# general aliases
alias cls='/usr/bin/clear'
alias dots='/usr/bin/git --git-dir=$HOME/.local/usr/dotfiles/ --work-tree=$HOME'

# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" #add homebrew to PATH
# Source plugins installed through Homebrew
source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/linuxbrew/.linuxbrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source /home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Source powerlevel10k installed through homebrew
source /home/linuxbrew/.linuxbrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
