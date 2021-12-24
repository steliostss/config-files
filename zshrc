# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#export LS_OPTIONS='-g -h'
#eval "$(dircolors -b)"
alias ls='ls -g -h'
LS_COLORS='di=0;35' ; export LS_COLORS

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/stelios/.oh-my-zsh"

# Path to tex
export PATH="/home/stelios/.opam/default/bin:/usr/local/texlive/2020/bin/x86_64-linux:/home/stelios/spicetify-cli:/home/stelios/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:"

# Path to spicetify
export SPICETIFY_INSTALL="/home/stelios/spicetify-cli"

# Path for python
export PYTHONPATH="/home/stelios/Documents/Cambridge/Uncertainty/src/"
export PYTHONPATH=${PYTHONPATH}:"/home/stelios/Documents/Cambridge/Uncertainty/src/misc/"
export PYTHONPATH=${PYTHONPATH}:"/home/stelios/Documents/Cambridge/Uncertainty/src/uncertain/"
export PYTHONPATH=${PYTHONPATH}:"/home/stelios/Documents/Cambridge/Uncertainty/tests/speed-estimation"
export PYTHONPATH=${PYTHONPATH}:"/home/stelios/Documents/Cambridge/Uncertainty/tests/operators/"
# export PYTHONPATH=${PYTHONPATH}:"/home/stelios/Documents/Cambridge/Uncertainty/tests/speed-estimation/gps"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	catimg
	chucknorris
	clipboard
	colored-man-pages
	copydir
	copyfile
	cp
	dirhistory
	extract
	genpass
	history
	last-working-dir
	)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# export PATH=~/anaconda3/bin:$PATH

# ece ntua commands
alias sshparlab="ssh -t parlab30@orion.cslab.ece.ntua.gr ssh parlab30@scirouter.cslab.ece.ntua.gr"
alias parlab="cd /mnt/Storage/Documents/ECE/Hardware/Parallel_Processing_Systems/parlab"
alias aintua="cd /mnt/Storage/Documents/ECE/Software/Artificial_Intelligence"
alias neural="cd /mnt/Storage/Documents/ECE/Hardware/Neural_Networks/"
alias compilers="cd /mnt/Storage/Documents/ECE/Software/Compilers/compilers-ntua"
alias software="cd /mnt/Storage/Documents/ECE/Software"
alias hardware="cd /mnt/Storage/Documents/ECE/Hardware"
alias ece="cd /mnt/Storage/Documents/ECE/"
alias thesis="cd ~/Documents/Cambridge/thesis"
alias thesiscode="cd ~/Documents/Cambridge/Uncertainty/"
alias cca="code ~/uncertainty.code-workspace && thesiscode && cd tests"
alias ccs="code ~/uncertainty.code-workspace && thesis"

alias storage="cd /mnt/Storage/"


# FEUP commands
alias pdistrib="cd /mnt/Storage/Documents/ECE/Erasmus/porto/courses/distrib_systems"
alias pmulti="cd /mnt/Storage/Documents/ECE/Erasmus/porto/courses/multimedia"
alias aifeup="cd /mnt/Storage/Documents/ECE/Erasmus/porto/courses/AI"
alias pemb="cd /mnt/Storage/Documents/ECE/Erasmus/porto/courses/embedded_feup"

# git commands
alias gadd="git add"
alias gcommit="git commit -m"
alias gpush="git pull && git push"
alias gpull="git pull"
alias gfetch="git fetch"
alias gstatus="git status -s"
alias gdiff="git diff"
alias ignore="gadd .gitignore && gcommit \"Update gitignore\""
alias trivial="gadd . && git commit \"Trivial commit\" && git push"

# general purpose commands
alias cclear="tput reset"
alias supgrade="sudo apt-get update && (sudo apt-get upgrade || sudo apt-get upgrade -y) && sudo apt autoremove && sudo snap refresh"
alias count="find . -type f | wc -l"
alias image="eog"

#alias ls="ls -F --color=none"
alias ddnd="sudo dnd.py -d"
alias ednd="sudo dnd.py -e"
alias fdnd="sudo dnd.py -f"

alias wmax='xdotool key super+Up'
alias clion='nohup /usr/local/bin/clion &>/dev/null &'
alias mediarestart='systemctl --user restart gsd-media-keys.target'

alias SR='shutdown -r 0'
alias SS='shutdown 0'
alias lldisks='df -h /dev/sda2 /dev/sdb1 /dev/sda4'
alias memory='~/git_clones/config-files/memory.sh'

alias ll='tree -h -L 1'
alias λλ='tree -h -L 1'
# alias ls='ls -g -h'
alias mkdir='mkdir -v'
alias aa='fuck'

alias df='df -h'

alias resetreset='setxkbmap -layout us'

alias sshpi='ssh pi@pi'

alias open="xdg-open . && exit"
alias python="python3"
alias rm="rm -v"

# translate aliases
alias trel="trans -b -j :el" # translate word to greek
alias tren="trans -b -j :en" # translate word to english
alias μετ="trans -b -j :en" # translate word to english

eval $(thefuck --alias)

gsearch() {
	for term in $@ ; do
		search="$search%20$term"
	done
	google-chrome "https://www.google.com/search?q="$search
}

count_file_lines() {
	local subj=$(wc -l $1)
	subj="${subj//$1/}"
	echo ${subj//[[:space:]]}
}


# calculator
calc() { local in="$(echo " $*" | sed -e 's/\[/(/g' -e 's/\]/)/g')";
       gawk -M -v PREC=201 -M 'BEGIN {printf("%.60g\n",'"${in-0}"')}' < /dev/null
     }

# multiply
mul() {
	local prod=1;
	for i in $*;
	do
		prod=$(($prod*$i));
	done
  printf "%.2f\n" "$prod";
}


# add
add() {
	local sum=0;
	for i in $*;
	do
		sum=$(($sum+$i));
	done
	printf "%.2f\n" "$sum";
}

# opam configuration
test -r /home/stelios/.opam/opam-init/init.zsh && . /home/stelios/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# solution adapted from: http://askubuntu.com/questions/505594
# TODO: use a list of warnings instead of cramming all of them to a single grep.
# TODO: generalize gedit() to allow the same treatment for several commands
#       without duplicating the function with only a different name
# output filter. takes: name_for_history some_command [arguments]
# the first argument is required both for history, but also when invoking to bg
# such that it shows Done <name> ... instead of e.g. Done /usr/bin/gedit ...
# suppress-gnome-warnings() {
#     # $1 is the name which should appear on history but is otherwise unused.
#     historyName=$1
#     shift
#
#     if [ -n "$*" ]; then
#         # write the real command to history without the prefix
#         # syntax adapted from http://stackoverflow.com/questions/4827690
#         history -s "$historyName ${@:2}"
#
#         # catch the command output
#         errorMsg=$( $* 2>&1 )
#
#         # check if the command output contains not a (one of two) GTK-Warnings
#         if ! $(echo $errorMsg | grep -q 'Gtk-WARNING\|connect to accessibility bus'); then
#             echo $errorMsg
#         fi
#     fi
# }
# gedit() {
# 	suppress-gnome-warnings $FUNCNAME $(which $FUNCNAME) $@
# }

# python3() {
# 	suppress-gnome-warnings $FUNCNAME $(which $FUNCNAME) $@
# }

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH=/path/to/dune-common/bin:${PATH}
