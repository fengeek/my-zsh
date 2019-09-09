export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE='nerdfont-complete'
# Customise the Powerlevel9k prompts ----------------------------------------- #
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(battery dir_writable dir node_version php_version go_version rust_version swift_version newline status vcs docker_machine)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
# OS Icon -------------------------------------------------------------------- #
POWERLEVEL9K_OS_ICON_FOREGROUND="gold1"
POWERLEVEL9K_OS_ICON_BACKGROUND="black"
# Battery -------------------------------------------------------------------- #
POWERLEVEL9K_BATTERY_VERBOSE="false"
POWERLEVEL9K_BATTERY_STAGES=($'🙀' $'😿' $'😿' $'😾' $'😾' $'😺' $'😺' $'😺' $'😸' $'😸')
# Versions --------------------------------------------------------------- #
POWERLEVEL9K_NODE_VERSION_FOREGROUND="seagreen3"
POWERLEVEL9K_NODE_VERSION_BACKGROUND="black"
POWERLEVEL9K_PHP_VERSION_BACKGROUND="black"
POWERLEVEL9K_PHP_VERSION_FOREGROUND="steelblue1"
POWERLEVEL9K_JAVA_VERSION_BACKGROUND="black"
POWERLEVEL9K_GO_VERSION_BACKGROUND="black"
POWERLEVEL9K_GO_VERSION_BACKGROUND="darkslategray2"
POWERLEVEL9K_RUST_VERSION_BACKGROUND="black"
POWERLEVEL9K_RUST_VERSION_FOREGROUND="lightgoldenrod3"
POWERLEVEL9K_SWIFT_VERSION_BACKGROUND="black"
POWERLEVEL9K_SWIFT_VERSION_FOREGROUND="orangered1"
# Background Jobs ------------------------------------------------------------ #
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='black'
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='lightgoldenrod3'
# Dir Writable --------------------------------------------------------------- #
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND='lightcoral'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND='lightpink4'
# Dir ------------------------------------------------------------------------ #
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_DIR_HOME_BACKGROUND='aquamarine3'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='gold1'
POWERLEVEL9K_DIR_ETC_BACKGROUND='salmon1'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='lightcoral'
# Status --------------------------------------------------------------------- #
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_STATUS_OK_FOREGROUND='gold1'
# Vcs ------------------------------------------------------------------------ #
POWERLEVEL9K_VCS_BRANCH_ICON=''
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='aquamarine3'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='204'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='gold1'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
# Plugins -------------------------------------------------------------------- #
plugins=(
    sudo git docker fedora history systemd ng node vscode
    zsh-autosuggestions
    # zsh-history-substring-search
    zsh-syntax-highlighting
    zsh-nvm
)
# Zsh-Nvm plugin lazy loading
export NVM_LAZY_LOAD=true
# Oh my zsh ------------------------------------------------------------------ #
source $ZSH/oh-my-zsh.sh
# Aliases -------------------------------------------------------------------- #
alias cdp="cd ~/Documents/Projets && ls"
mcode() { code ~/Documents/Projets/"$1" && exit }
mgit() { git add . && git commit -m "$1" && git push }
alias glog="git log --graph --abbrev-commit --decorate --date=relative --all"
alias c="clear"
alias tor="~/Téléchargements/tor-browser_en-US/Browser/start-tor-browser"
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
lt() { lsd --tree --depth=$1 }
# Android SDK ---------------------------------------------------------------- #
export ANDROID_HOME="$HOME/Android/Sdk"
export JAVA_HOME=$(update-alternatives --query javac | sed -n -e 's/Best: *\(.*\)\/bin\/javac/\1/p')
PATH=$PATH:$ANDROID_HOME/tools; PATH=$PATH:$ANDROID_HOME/platform-tools
alias android='$ANDROID_HOME/tools/android'
alias emulator='$ANDROID_HOME/tools/emulator'