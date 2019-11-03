# ---------------------------------------------------------------------------- #
#                                    .zshrc                                    #
# ---------------------------------------------------------------------------- #
# Your variables ------------------------------------------------------------- #
YOUR_GITHUB="https://github.com/mIaborde"
YOUR_PROJECT_FOLDER="$HOME/Projets"
# https://user-images.githubusercontent.com/704406/43988708-64c0fa52-9d4c-11e8-8cf9-c4d4b97a5200.png
COLOR_PRIMARY="220" # gold1
COLOR_SECONDARY="075" # steelblue1
COLOR_OK="042" # seagreen3
COLOR_WARNING="228" # gold1
COLOR_ERROR="009" # lightred
COLOR_DENIED="210" # lightcoral
COLOR_FLAG="228" # cornsilk1
COLOR_BLACK="000" # black
COLOR_COMMENT="103" # lightslategrey
# Oh-My-Zsh ------------------------------------------------------------------ #
export ZSH="$HOME/.oh-my-zsh"
# Plugins
plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
    # zsh-nvm
)
# Powerlevel9k --------------------------------------------------------------- #
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"
# Prompt segments
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
    os_icon user dir_writable dir
    newline status vcs
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
    # time host custom_info newline
    # heavy : # node_version php_version_joined symfony2_version_joined laravel_version_joined
    # heavy : # swift_version_joined go_version_joined rust_version_joined
    # heavy : # custom_dev
    # load battery_joined disk_usage_joined ram_joined custom_hardware
)
ZLE_RPROMPT_INDENT=0 # Fix final space for right prompt
# Left prompt ---------------------------------------------------------------- #
# OS icon
POWERLEVEL9K_OS_ICON_FOREGROUND=$COLOR_BLACK
POWERLEVEL9K_OS_ICON_BACKGROUND=$COLOR_PRIMARY
# User
POWERLEVEL9K_USER_ICON=$'\uF007' # 
POWERLEVEL9K_ROOT_ICON="#"
POWERLEVEL9K_SUDO_ICON=$'\uF09C' # 
POWERLEVEL9K_USER_DEFAULT_FOREGROUND=$COLOR_PRIMARY
POWERLEVEL9K_USER_DEFAULT_BACKGROUND=$COLOR_BLACK
# Dir Writable
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND=$COLOR_DENIED
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_DIR_WRITABLE_VERBOSE="true"
# Dir
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_DIR_HOME_BACKGROUND=$COLOR_PRIMARY
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=$COLOR_PRIMARY
POWERLEVEL9K_DIR_ETC_BACKGROUND=$COLOR_DENIED
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=$COLOR_DENIED
# Status
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_STATUS_OK_FOREGROUND=$COLOR_BLACK
POWERLEVEL9K_STATUS_OK_BACKGROUND=$COLOR_OK
POWERLEVEL9K_STATUS_ERROR_FOREGROUND=$COLOR_BLACK
POWERLEVEL9K_STATUS_ERROR_BACKGROUND=$COLOR_ERROR
POWERLEVEL9K_STATUS_VERBOSE="true"
# Vcs
POWERLEVEL9K_VCS_BRANCH_ICON=''
POWERLEVEL9K_VCS_CLEAN_FOREGROUND=$COLOR_OK
POWERLEVEL9K_VCS_CLEAN_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=$COLOR_DENIED
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=$COLOR_WARNING
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=$COLOR_BLACK
# Right prompt --------------------------------------------------------------- #
# Host
POWERLEVEL9K_HOST_ICON=$'\uF823' # 
POWERLEVEL9K_SSH_ICON=$'\uF489' # 
POWERLEVEL9K_HOST_LOCAL_FOREGROUND=$COLOR_SECONDARY
POWERLEVEL9K_HOST_LOCAL_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_HOST_REMOTE_FOREGROUND=$COLOR_SECONDARY
POWERLEVEL9K_HOST_REMOTE_BACKGROUND=$COLOR_BLACK
# Custom info
POWERLEVEL9K_CUSTOM_INFO="echo $'\uf05a '" # 
POWERLEVEL9K_CUSTOM_INFO_BACKGROUND=$COLOR_SECONDARY
POWERLEVEL9K_CUSTOM_INFO_FOREGROUND=$COLOR_BLACK
# Custom hardware
POWERLEVEL9K_CUSTOM_HARDWARE="echo $'\uf0ad '" # 
POWERLEVEL9K_CUSTOM_HARDWARE_BACKGROUND=$COLOR_FLAG
POWERLEVEL9K_CUSTOM_HARDWARE_FOREGROUND=$COLOR_BLACK
# Custom dev
POWERLEVEL9K_CUSTOM_DEV="echo $'\uF121 '" # </>
POWERLEVEL9K_CUSTOM_DEV_BACKGROUND=$COLOR_FLAG
POWERLEVEL9K_CUSTOM_DEV_FOREGROUND=$COLOR_BLACK
# Versions
POWERLEVEL9K_NODE_VERSION_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_NODE_VERSION_FOREGROUND="seagreen3"
POWERLEVEL9K_PHP_VERSION_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_PHP_VERSION_FOREGROUND="steelblue1"
POWERLEVEL9K_PHP_VERSION_VISUAL_IDENTIFIER_EXPANSION=$'\uE608 ' # 
POWERLEVEL9K_LARAVEL_VERSION_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_LARAVEL_VERSION_FOREGROUND="orangered1"
POWERLEVEL9K_SYMFONY2_VERSION_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_SYMFONY2_VERSION_FOREGROUND="white"
POWERLEVEL9K_JAVA_VERSION_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_JAVA_VERSION_FOREGROUND="red3a"
POWERLEVEL9K_GO_VERSION_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_GO_VERSION_FOREGROUND="darkslategray2"
POWERLEVEL9K_RUST_VERSION_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_RUST_VERSION_FOREGROUND="lightgoldenrod3"
POWERLEVEL9K_SWIFT_VERSION_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_SWIFT_VERSION_FOREGROUND="darkorange"
# Background Jobs
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND=$COLOR_BLACK
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='lightgoldenrod3'
# Time
POWERLEVEL9K_TIME_ICON=""
POWERLEVEL9K_TIME_FOREGROUND=$COLOR_BLACK
POWERLEVEL9K_TIME_BACKGROUND=$COLOR_SECONDARY
POWERLEVEL9K_TIME_FORMAT="%D{"$'\uf017'" %H:%M "$'\uf073'" %d/%m}" #  
# Load
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND=$COLOR_ERROR
POWERLEVEL9K_LOAD_WARNING_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_LOAD_WARNING_FOREGROUND=$COLOR_WARNING
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND=$COLOR_OK
POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR=$COLOR_ERROR
POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR=$COLOR_WARNING
POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR=$COLOR_OK
# Ram
POWERLEVEL9K_RAM_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_RAM_FOREGROUND=$COLOR_WARNING
# Ip
POWERLEVEL9K_IP_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_IP_FOREGROUND=$COLOR_COMMENT
# Public ip
POWERLEVEL9K_PUBLIC_IP_NONE="offline"
POWERLEVEL9K_PUBLIC_IP_NONE_FOREGROUND=$COLOR_ERROR
POWERLEVEL9K_PUBLIC_IP_HOST="http://ident.me"
# Disk usage
POWERLEVEL9K_DISK_USAGE_NORMAL_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_DISK_USAGE_NORMAL_FOREGROUND=$COLOR_OK
POWERLEVEL9K_DISK_USAGE_WARNING_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_DISK_USAGE_WARNING_FOREGROUND=$COLOR_WARNING
POWERLEVEL9K_DISK_USAGE_CRITICAL_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_DISK_USAGE_CRITICAL_FOREGROUND=$COLOR_ERROR
# Battery
POWERLEVEL9K_BATTERY_LOW_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_BATTERY_LOW_FOREGROUND=$COLOR_ERROR
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND=$COLOR_WARNING
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND=$COLOR_OK
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND=$COLOR_OK
POWERLEVEL9K_BATTERY_VERBOSE="false"
POWERLEVEL9K_BATTERY_STAGES=($'\uf244 ' $'\uf243 ' $'\uf242 ' $'\uf241 ' $'\uf240 ') # 
# Zsh-syntax-highlighting config --------------------------------------------- #
source $ZSH/oh-my-zsh.sh
ZSH_HIGHLIGHT_STYLES[comment]='fg='$COLOR_COMMENT
ZSH_HIGHLIGHT_STYLES[alias]='fg='$COLOR_OK
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg='$COLOR_OK
ZSH_HIGHLIGHT_STYLES[builtin]='fg='$COLOR_OK
ZSH_HIGHLIGHT_STYLES[precommand]='fg='$COLOR_OK',bold'
ZSH_HIGHLIGHT_STYLES[command]='fg='$COLOR_OK
ZSH_HIGHLIGHT_STYLES[function]='fg='$COLOR_OK
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg='$COLOR_OK
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg='$COLOR_ERROR
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg='$COLOR_DENIED
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg='$COLOR_SECONDARY
ZSH_HIGHLIGHT_STYLES[path]='fg='$COLOR_FLAG
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg='$COLOR_FLAG
ZSH_HIGHLIGHT_STYLES[path_approx]='fg='$COLOR_FLAG
ZSH_HIGHLIGHT_STYLES[globbing]='fg='$COLOR_SECONDARY
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg='$COLOR_SECONDARY',bold'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg='$COLOR_FLAG
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg='$COLOR_FLAG
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg='$COLOR_PRIMARY
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg='$COLOR_PRIMARY
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg='$COLOR_PRIMARY
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg='$COLOR_PRIMARY
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg='$COLOR_PRIMARY
ZSH_HIGHLIGHT_STYLES[assign]='fg='$COLOR_SECONDARY
# Aliases & functions -------------------------------------------------------- #
# lsd
alias ls='lsd'
alias la='ls -A'
alias lsa='ls -lA'
lt() { lsa --tree --depth=$1 2>/dev/null || lsd --tree --depth=1 }
lta() { lsa --tree --depth=$1 -A 2>/dev/null || lsd --tree --depth=1 -A }
# shortcuts
alias x="exit"
alias c="clear"
cdp() { cd $YOUR_PROJECT_FOLDER"/$1" && ls }
codep() { code $YOUR_PROJECT_FOLDER"/$1" && exit }
mkcd() { mkdir -p "$1" && cd "$1" }
# git
alias glog="git log --graph --abbrev-commit --decorate --date=relative --all"
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold yellow)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(auto)%d%C(reset)%n''%C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"
gc() { # usage : gc fix "fix detail"
  type="$1"
  detail="$2"
  shift
  case "$type" in
    init)    git commit -m "🎉 Init: $detail" ;;
    improve) git commit -m "👌 Improve: $detail" ;;
    feature) git commit -m "✨ Feature: $detail" ;;
    release) git commit -m "🚀 Release: $detail" ;;
    test)    git commit -m "✅ Test: $detail" ;;
    wip)     git commit -m "🚧 Wip: $detail" ;;
    fix)     git commit -m "🐛 Fix: $detail" ;;
    doc)     git commit -m "📖 Doc: $detail" ;;
    add)     git commit -m "📦 Add: $detail" ;;
    perf)    git commit -m "⚡️ Perf: $detail" ;;
    break)   git commit -m "💥 Break: $detail" ;;
    remove)  git commit -m "🔥 Remove: $detail" ;;
    secure)  git commit -m "🔒 Secure: $detail" ;;
    docker)  git commit -m "🐳 Docker: $detail" ;;
    format)  git commit -m "🎨 Format: $detail" ;;
    config)  git commit -m "🔧 Config: $detail" ;;
    *) echo "Unrecognized commit type: '$type'" >&2; ;;
  esac
  echo $commit
}
ga() { git add . }
gac() { git add . && gc $1 $2 }
gacp() { git add . && gc $1 $2 && git push }
github() {
    xdg-open "$YOUR_GITHUB/$1" 2>/dev/null ||
    gnome-open "$YOUR_GITHUB/$1" 2>/dev/null ||
    open "$YOUR_GITHUB/$1" 2>/dev/null ||
    echo "You need xdg-open, gnome-open or open to use this alias..."
}
# Android SDK ---------------------------------------------------------------- #
# export ANDROID_HOME="$HOME/Android/Sdk"
# export JAVA_HOME=$(update-alternatives --query javac | sed -n -e 's/Best: *\(.*\)\/bin\/javac/\1/p')
# PATH=$PATH:$ANDROID_HOME/tools; PATH=$PATH:$ANDROID_HOME/platform-tools
# alias android='$ANDROID_HOME/tools/android'
# alias emulator='$ANDROID_HOME/tools/emulator'
# Others --------------------------------------------------------------------- #