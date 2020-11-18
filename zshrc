# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/stelios/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

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
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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
alias neural="cd /mnt/Storage/Documents/ECE/Hardware/Neural_Networks/neural_networks"
alias compilers="cd /mnt/Storage/Documents/ECE/Software/Compilers/compilers-ntua"
alias software="cd /mnt/Storage/Documents/ECE/Software"
alias hardware="cd /mnt/Storage/Documents/ECE/Hardware"
alias ece="cd /mnt/Storage/Documents/ECE/"
alias thesis="/mnt/Storage/Documents/ECE/Thesis/Cambridge/"

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
alias gstatus="git status"
alias ignore="gadd .gitignore && gcommit \"Update gitignore\""

# general purpose commands
alias cclear="tput reset"
alias supgrade="sudo apt-get update && (sudo apt-get upgrade || sudo apt-get upgrade -y) && sudo apt autoremove && sudo snap refresh"
alias count="find . -type f | wc -l"
alias image="eog"

#alias ls="ls -F --color=none"
alias ddnd="sudo dnd.py -d"
alias ednd="sudo dnd.py -e"

alias wmax='xdotool key super+Up'
alias clion='nohup /usr/local/bin/clion &>/dev/null &'

alias SR='shutdown -r 0'
alias SS='shutdown 0'
alias lldisks='df -h /dev/sda2 /dev/sdb1'

alias ll='tree -L 1'
alias λλ='tree -L 1'

alias aa='fuck'

alias df='df -h'

alias resetreset='setxkbmap -layout us'

alias sshpi='ssh pi@pi'

alias open="xdg-open . && exit"

# translate aliases
alias trel="trans -b -j :el" # translate word to greek
alias tren="trans -b -j :en" # translate word to english
alias μετ="trans -b -j :en" # translate word to english

eval $(thefuck --alias)


count_file_lines() {
    local subj=$(wc -l $1)
    subj="${subj//$1/}"
    echo ${subj//[[:space:]]}
}


calc() { local in="$(echo " $*" | sed -e 's/\[/(/g' -e 's/\]/)/g')";
       gawk -M -v PREC=201 -M 'BEGIN {printf("%.60g\n",'"${in-0}"')}' < /dev/null
     }

# opam configuration
test -r /home/stelios/.opam/opam-init/init.zsh && . /home/stelios/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
