alias c='clear'
alias cs='cowsay'
alias cdiff='colordiff'
alias gc='git config credential.helper store'
alias gg='git clone'
alias gsp='git submodule foreach git pull'
alias ipy='ipython'
alias kc='kdeconnect-cli'
alias l='ls -la'
alias ls='lsd'
alias lg='lazygit'
alias cat='bat'
alias ms='mailsync'
alias we='weechat'
alias mt='neomutt'
alias r='echo $RANGER_LEVEL'
alias pu='python3 -m pudb'
alias ra='ranger'
alias gip='curl cip.cc'
# ra() {
	#if [ -z "$RANGER_LEVEL" ]
	#then
		#ranger
	#else
		#exit
	#fi
#}
alias s='neofetch'
alias g='onefetch'
alias sra='sudo -E ranger'
alias sudo='sudo -E'
alias vim='nvim'
alias reload='source ~/.zshrc'
alias startup='systemd-analyze plot | display'
alias gs='git config credential.helper store'
alias b='sudo tlp bat'
alias a='sudo tlp ac'
alias gy='git-yolo'
alias nb='newsboat -r'
alias nt="sh -c 'cd $(pwd); st' > /dev/null 2>&1 &"
alias ta='tmux a'
alias t='if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi'
alias lo='lsof -p $(fps) +w'

alias lsesp='ls /dev/ttyUSB*'
alias chmodesp='sudo chmod 777 /dev/ttyUSB0'

# alias ls='exa --icons --color=always'
# alias lt='exa --tree --icons --color=always'
# alias ll='exa --icons --color=always --long'
# alias l='exa --icons --color=always --long --all'

alias roll='java -jar /home/kiteab/kotlin/DailyRecommendation/out/artifacts/DailyRecommendation_jar/DailyRecommendation.jar && paru'
