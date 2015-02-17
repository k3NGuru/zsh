# Path to your oh-my-zsh installation.
 export ZSH=/home/sserver/.oh-my-zsh




# Set name of the theme to load.
 # Look in ~/.oh-my-zsh/themes/
 # Optionally, if you set this to "random", it'll load a random theme each
 # time that oh-my-zsh is loaded.
 ZSH_THEME="miloshadzic"




# Uncomment the following line to use case-sensitive completion.
 # CASE_SENSITIVE="true"




# Uncomment the following line to disable bi-weekly auto-update checks.
 # DISABLE_AUTO_UPDATE="true"




# Uncomment the following line to change how often to auto-update (in days).
 # export UPDATE_ZSH_DAYS=13




# Uncomment the following line to disable colors in ls.
 # DISABLE_LS_COLORS="true"




# Uncomment the following line to disable auto-setting terminal title.
 # DISABLE_AUTO_TITLE="true"




# Uncomment the following line to enable command auto-correction.
 # ENABLE_CORRECTION="true"




# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"




# Uncomment the following line if you want to disable marking untracked files
 # under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
 # DISABLE_UNTRACKED_FILES_DIRTY="true"




# Uncomment the following line if you want to change the command execution time
 # stamp shown in the history command output.
 # The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"




# Would you like to use another custom folder than $ZSH/custom?
 # ZSH_CUSTOM=/path/to/new-custom-folder




# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
 # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
 # Example format: plugins=(rails git textmate ruby lighthouse)
 # Add wisely, as too many plugins slow down shell startup.
 plugins=(git yum sudo zsh_reload)




# User configuration




export PATH="/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/sserver/.local/bin:/home/sserver/bin"
 # export MANPATH="/usr/local/man:$MANPATH"




source $ZSH/oh-my-zsh.sh




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




# ssh
 # export SSH_KEY_PATH="~/.ssh/dsa_id"




# Set personal aliases, overriding those provided by oh-my-zsh libs,
 # plugins, and themes. Aliases can be placed here, though oh-my-zsh
 # users are encouraged to define aliases within the ZSH_CUSTOM folder.
 # For a full list of active aliases, run `alias`.
 #
 # Example aliases
 # alias zshconfig="mate ~/.zshrc"
 # alias ohmyzsh="mate ~/.oh-my-zsh"#
 alias cl='clear'




# -------------------------------------------------------------------
 # BIND
 # -------------------------------------------------------------------
 # Keypad
 # # 0 . Enter
 bindkey -s "^[Op" "0"
 bindkey -s "^[Ol" "."
 bindkey -s "^[OM" "^M"
 # # 1 2 3
 bindkey -s "^[Oq" "1"
 bindkey -s "^[Or" "2"
 bindkey -s "^[Os" "3"
 # # 4 5 6
 bindkey -s "^[Ot" "4"
 bindkey -s "^[Ou" "5"
 bindkey -s "^[Ov" "6"
 # # 7 8 9
 bindkey -s "^[Ow" "7"
 bindkey -s "^[Ox" "8"
bindkey -s "^[Oy" "9"
 # # + -  * /
bindkey -s "^[Ok" "+"
 bindkey -s "^[Om" "-"
bindkey -s "^[Oj" "*"
 bindkey -s "^[Oo" "/"




# Home End
 bindkey "^[OB" down-line-or-search
 bindkey "^[OC" forward-char
 bindkey "^[OD" backward-char
 bindkey "^[OF" end-of-line
 bindkey "^[OH" beginning-of-line
 bindkey "^[[1~" beginning-of-line
 bindkey "^[[3~" delete-char
 bindkey "^[[4~" end-of-line
 bindkey "^[[5~" up-line-or-history
 bindkey "^[[6~" down-line-or-history
 bindkey "^?" backward-delete-char





 # -------------------------------------------------------------------
 # FUNCTIONS
 # -------------------------------------------------------------------
  
 # return my IP address
  function myip() {
      ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
      ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
       ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
       ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
       ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
  }




# Archive
 extract () {
   if [ -f $1 ] ; then
     case $1 in
       *.tar.bz2) tar xvjf $1   ;;
       *.tar.gz)  tar xvzf $1   ;;
       *.tar.xz)  tar xvfJ $1   ;;
       *.bz2)     bunzip2 $1    ;;
       *.rar)     unrar x $1    ;;
       *.gz)      gunzip $1     ;;
       *.tar)     tar xvf $1    ;;
       *.tbz2)    tar xvjf $1   ;;
       *.tgz)     tar xvzf $1   ;;
       *.zip)     unzip $1      ;;
       *.Z)       uncompress $1 ;;
       *.7z)      7z x $1       ;;
       *)         echo "'$1' cannot be extracted via >extract<" ;;
     esac
   else
     echo "'$1' is not a valid file"
   fi
 }
