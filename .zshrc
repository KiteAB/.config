export ZSH="$HOME/.oh-my-zsh"

plugins=(git
	z
	zsh-autosuggestions
	fast-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Enable 256 color
export TERM="xterm-256color"

# Initialize command prompt
export PS1="%n@%m:%~%# "

eval $(thefuck --alias)

# alias settings
alias s=neofetch
alias up='sudo pacman -Syu'
alias c=clear
alias ra=ranger
alias cs=cowsay
alias vim=nvim
