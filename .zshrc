# ---------------------------------------------------------------------------- #
#                                    .zshrc                                    #
# ---------------------------------------------------------------------------- #
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"
# Plugins -------------------------------------------------------------------- #
plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
    # zsh-nvm
)
# Customise the Powerlevel9k prompts ----------------------------------------- #
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
    os_icon user dir_writable dir
    newline status vcs
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
    # load_joined battery_joined ram_joined time host custom_hardware
    # newline node_version php_version_joined symfony2_version_joined laravel_version_joined swift_version_joined go_version_joined rust_version_joined
    # custom_dev
)
ZLE_RPROMPT_INDENT=0 # Fix p9k > p10k compatibility
# Colors --------------------------------------------------------------------- #
# https://user-images.githubusercontent.com/704406/43988708-64c0fa52-9d4c-11e8-8cf9-c4d4b97a5200.png
COLOR_PRIMARY="220" # gold1
COLOR_SECONDARY="075" # steelblue1
COLOR_OK="042" # seagreen3
COLOR_WARNING="220" # gold1
COLOR_ERROR="009" # lightred
COLOR_DENIED="210" # lightcoral
COLOR_FLAG="228" # cornsilk1
COLOR_BLACK="000" # black
COLOR_COMMENT="103" # lightslategrey
# OS icon -------------------------------------------------------------------- #
POWERLEVEL9K_OS_ICON_FOREGROUND=$COLOR_BLACK
POWERLEVEL9K_OS_ICON_BACKGROUND=$COLOR_PRIMARY
# User ----------------------------------------------------------------------- #
POWERLEVEL9K_USER_ICON=$'\uF007' # 
POWERLEVEL9K_ROOT_ICON="#"
POWERLEVEL9K_SUDO_ICON=$'\uF09C' # 
POWERLEVEL9K_USER_DEFAULT_FOREGROUND=$COLOR_PRIMARY
POWERLEVEL9K_USER_DEFAULT_BACKGROUND=$COLOR_BLACK
# Host ----------------------------------------------------------------------- #
POWERLEVEL9K_HOST_ICON=$'\uF823' # 
POWERLEVEL9K_SSH_ICON=$'\uF489' # 
POWERLEVEL9K_HOST_LOCAL_FOREGROUND=$COLOR_SECONDARY
POWERLEVEL9K_HOST_LOCAL_BACKGROUND=$COLOR_BLACK
# Custom hardware ------------------------------------------------------------ #
POWERLEVEL9K_CUSTOM_HARDWARE="echo $'\uf05a '" # 
POWERLEVEL9K_CUSTOM_HARDWARE_BACKGROUND=$COLOR_SECONDARY
POWERLEVEL9K_CUSTOM_HARDWARE_FOREGROUND=$COLOR_BLACK
# Custom dev ----------------------------------------------------------------- #
POWERLEVEL9K_CUSTOM_DEV="echo $'\uF44F '" # 
POWERLEVEL9K_CUSTOM_DEV_BACKGROUND=$COLOR_OK
POWERLEVEL9K_CUSTOM_DEV_FOREGROUND=$COLOR_BLACK
# Versions ------------------------------------------------------------------- #
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
# Background Jobs ------------------------------------------------------------ #
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND=$COLOR_BLACK
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='lightgoldenrod3'
# Dir Writable --------------------------------------------------------------- #
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND=$COLOR_DENIED
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND=$COLOR_BLACK
# Dir ------------------------------------------------------------------------ #
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_DIR_HOME_BACKGROUND=$COLOR_SECONDARY
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=$COLOR_PRIMARY
POWERLEVEL9K_DIR_ETC_BACKGROUND=$COLOR_DENIED
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=$COLOR_DENIED
# Status --------------------------------------------------------------------- #
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_STATUS_OK_FOREGROUND=$COLOR_BLACK
POWERLEVEL9K_STATUS_OK_BACKGROUND=$COLOR_OK
POWERLEVEL9K_STATUS_ERROR_FOREGROUND=$COLOR_BLACK
POWERLEVEL9K_STATUS_ERROR_BACKGROUND=$COLOR_ERROR
POWERLEVEL9K_STATUS_VERBOSE="true"
# Vcs ------------------------------------------------------------------------ #
POWERLEVEL9K_VCS_BRANCH_ICON=''
POWERLEVEL9K_VCS_CLEAN_FOREGROUND=$COLOR_OK
POWERLEVEL9K_VCS_CLEAN_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=$COLOR_ERROR
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=$COLOR_WARNING
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=$COLOR_BLACK
# Time ----------------------------------------------------------------------- #
POWERLEVEL9K_TIME_ICON=""
POWERLEVEL9K_TIME_FOREGROUND=$COLOR_BLACK
POWERLEVEL9K_TIME_BACKGROUND=$COLOR_SECONDARY
POWERLEVEL9K_TIME_FORMAT="%D{"$'\uf017'" %H:%M "$'\uf073'" %d/%m}" #  
# Load ----------------------------------------------------------------------- #
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND=$COLOR_ERROR
POWERLEVEL9K_LOAD_WARNING_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_LOAD_WARNING_FOREGROUND=$COLOR_WARNING
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND=$COLOR_OK
POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR=$COLOR_ERROR
POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR=$COLOR_WARNING
POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR=$COLOR_OK
# Ram ------------------------------------------------------------------------ #
POWERLEVEL9K_RAM_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_RAM_FOREGROUND=$COLOR_SECONDARY
# Battery -------------------------------------------------------------------- #
POWERLEVEL9K_BATTERY_LOW_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_BATTERY_LOW_FOREGROUND=$COLOR_ERROR
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND=$COLOR_WARNING
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND=$COLOR_OK
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND=$COLOR_OK
POWERLEVEL9K_BATTERY_LOW_VISUAL_IDENTIFIER_COLOR=$COLOR_ERROR
POWERLEVEL9K_BATTERY_CHARGING_VISUAL_IDENTIFIER_COLOR=$COLOR_WARNING
POWERLEVEL9K_BATTERY_CHARGED_VISUAL_IDENTIFIER_COLOR=$COLOR_OK
POWERLEVEL9K_BATTERY_DISCONNECTED_VISUAL_IDENTIFIER_COLOR=$COLOR_OK
POWERLEVEL9K_BATTERY_VERBOSE="false"
# Oh my zsh ------------------------------------------------------------------ #
source $ZSH/oh-my-zsh.sh
# Plugin HighLight config ---------------------------------------------------- #
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
# Aliases -------------------------------------------------------------------- #
alias cdp="cd ~/Documents/Projets && ls"
mcode() { code ~/Documents/Projets/"$1" && exit }
alias x="exit"
alias c="clear"
# lsd aliases & functions
alias ls='lsd'
lt() { lsd --tree --depth=$1 }
# git aliases & functions
gitinit() { git add . && git commit -m "🎉 Init: $1" && git push }
gitimprove() { git add . && git commit -m "👌 Improve: $1" && git push }
gitfeature() { git add . && git commit -m "✨ Feature: $1" && git push }
gitrelease() { git add . && git commit -m "🚀 Release: $1" && git push }
gtest() { git add . && git commit -m "✅ Test: $1" && git push }
gitwip() { git add . && git commit -m "🚧 Wip: $1" && git push }
gitfix() { git add . && git commit -m "🐛 Fix: $1" && git push }
gitdoc() { git add . && git commit -m "📖 Doc: $1" && git push }
gitadd() { git add . && git commit -m "📦 Add: $1" && git push }
gitperf() { git add . && git commit -m "⚡️ Perf: $1" && git push }
gitbreak() { git add . && git commit -m "💥 Break: $1" && git push }
gitremove() { git add . && git commit -m "🔥 Remove: $1" && git push }
gitsecure() { git add . && git commit -m "🔒 Secure: $1" && git push }
gitdocker() { git add . && git commit -m "🐳 Docker: $1" && git push }
gitformat() { git add . && git commit -m "🎨 Format: $1" && git push }
gitconfig() { git add . && git commit -m "🔧 Config: $1" && git push }
alias glog="git log --graph --abbrev-commit --decorate --date=relative --all"
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold yellow)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(auto)%d%C(reset)%n''%C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"
# Android SDK ---------------------------------------------------------------- #
# export ANDROID_HOME="$HOME/Android/Sdk"
# export JAVA_HOME=$(update-alternatives --query javac | sed -n -e 's/Best: *\(.*\)\/bin\/javac/\1/p')
# PATH=$PATH:$ANDROID_HOME/tools; PATH=$PATH:$ANDROID_HOME/platform-tools
# alias android='$ANDROID_HOME/tools/android'
# alias emulator='$ANDROID_HOME/tools/emulator'
# Others --------------------------------------------------------------------- #