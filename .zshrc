export ZSH="/home/qrchack/.oh-my-zsh"

ZSH_TMUX_AUTOSTART=true
ZSH_THEME="robbyrussell"

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

plugins=(
	git
	extract
	python
	sudo
	tmux
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

function cld {
	builtin cd "$@" && ls -F
}

export EDITOR=nano
export PAGER=less
export LESS=-R

# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias .='ls -Fh'
alias .a='ls -FHA'
alias ..='cd ..'

export LESS_TERMCAP_mb=$'\E[1;31m'		# begin bold
export LESS_TERMCAP_md=$'\E[1;36m'		# begin blink
export LESS_TERMCAP_me=$'\E[0m'			# reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m'	# begin reverse video
export LESS_TERMCAP_se=$'\E[0m'			# reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'		# begin underline
export LESS_TERMCAP_ue=$'\E[0m'			# reset underline

eval $(dircolors -b ~/.dircolors)

if [ -n $TMUX ]; then
	\clear
	\neofetch
fi