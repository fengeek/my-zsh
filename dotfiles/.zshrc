# ---------------------------------------------------------------------------- #
#                                    .zshrc                                    #
# ---------------------------------------------------------------------------- #
# Your variables ------------------------------------------------------------- #
YOUR_GITHUB_USERNAME="fengeek"
YOUR_PROJECT_FOLDER="$HOME/Library/Mobile Documents/com~apple~CloudDocs/MyFiles/MyGit"
# Colors --------------------------------------------------------------------- #
# https://user-images.githubusercontent.com/704406/43988708-64c0fa52-9d4c-11e8-8cf9-c4d4b97a5200.png
COLOR_BLACK="000" # black
COLOR_ERROR="001" # red
COLOR_OK="002" # green
COLOR_WARNING="003" # yellow
COLOR_PRIMARY="004" # blue
COLOR_DENIED="005" # magenta
COLOR_STRING="006" # cyan
COLOR_WHITE="015" # white
COLOR_COMMENTS="000,bold" # brightblack
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

# 修改Homebrew Bottles源
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

# brew 不自动更新
export HOMEBREW_NO_AUTO_UPDATE=true

function pp(){
    STATUS_CODE=$(curl -sL -m 5  www.google.com -o /dev/null -w "%{http_code}\n")
    if [ $STATUS_CODE != 200 ]; then
        read 'proxy_ip?当前为河蟹模式模式，输入代理IP:'
        export {http,https}_proxy=http://$proxy_ip:7890
        export all_proxy=socks5://$proxy_ip:7891
        STATUS_CODE=$(curl -sL -m 5  www.google.com -o /dev/null -w "%{http_code}\n")
        if [ $STATUS_CODE != 200 ]; then
            echo -e '进入代理模式失败，请重新尝试'
            export switch_proxy=0
        else
            export switch_proxy=1
            echo -e '进入代理模式成功'
        fi
    else
        unset {http,https,all}_proxy
        export switch_proxy=0
        echo -e '进入河蟹模式'
    fi
}

function prompt_my_proxy_status(){
    if [ -z $all_proxy ]; then
        p10k segment -f red -t "🇨🇳  河蟹"
    else
        if [ $all_proxy = '' ]; then
            p10k segment -f red -t "🇨🇳  河蟹"
        else
            p10k segment -f green -t "🌏 代理"
        fi
    fi
}


# Prompt segments
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
    os_icon user dir_writable dir
    newline my_proxy_status status vcs
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
    # node_version custom_dev time host custom_info newline
      # php_version_joined symfony2_version_joined laravel_version_joined
      # swift_version_joined go_version_joined rust_version_joined
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
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_DIR_HOME_BACKGROUND=$COLOR_PRIMARY
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=$COLOR_STRING
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
# # Host
# POWERLEVEL9K_HOST_ICON=$'\uF823' # 
# POWERLEVEL9K_SSH_ICON=$'\uF489' # 
# POWERLEVEL9K_HOST_LOCAL_FOREGROUND=$COLOR_STRING
# POWERLEVEL9K_HOST_LOCAL_BACKGROUND=$COLOR_BLACK
# POWERLEVEL9K_HOST_REMOTE_FOREGROUND=$COLOR_STRING
# POWERLEVEL9K_HOST_REMOTE_BACKGROUND=$COLOR_BLACK
# # Custom info
# POWERLEVEL9K_CUSTOM_INFO="echo $'\uf05a '" # 
# POWERLEVEL9K_CUSTOM_INFO_BACKGROUND=$COLOR_STRING
# POWERLEVEL9K_CUSTOM_INFO_FOREGROUND=$COLOR_BLACK
# # Custom hardware
# POWERLEVEL9K_CUSTOM_HARDWARE="echo $'\uf0ad '" # 
# POWERLEVEL9K_CUSTOM_HARDWARE_BACKGROUND=$COLOR_STRING
# POWERLEVEL9K_CUSTOM_HARDWARE_FOREGROUND=$COLOR_BLACK
# # Custom dev
# POWERLEVEL9K_CUSTOM_DEV="echo $'\uF121 '" # </>
# POWERLEVEL9K_CUSTOM_DEV_BACKGROUND=$COLOR_STRING
# POWERLEVEL9K_CUSTOM_DEV_FOREGROUND=$COLOR_BLACK
# # Versions
# POWERLEVEL9K_NODE_VERSION_BACKGROUND=$COLOR_BLACK
# POWERLEVEL9K_NODE_VERSION_FOREGROUND=$COLOR_PRIMARY
# POWERLEVEL9K_PHP_VERSION_BACKGROUND=$COLOR_BLACK
# POWERLEVEL9K_PHP_VERSION_FOREGROUND="steelblue1"
# POWERLEVEL9K_PHP_VERSION_VISUAL_IDENTIFIER_EXPANSION=$'\uE608 ' # 
# POWERLEVEL9K_LARAVEL_VERSION_BACKGROUND=$COLOR_BLACK
# POWERLEVEL9K_LARAVEL_VERSION_FOREGROUND="orangered1"
# POWERLEVEL9K_SYMFONY2_VERSION_BACKGROUND=$COLOR_BLACK
# POWERLEVEL9K_SYMFONY2_VERSION_FOREGROUND="white"
# POWERLEVEL9K_JAVA_VERSION_BACKGROUND=$COLOR_BLACK
# POWERLEVEL9K_JAVA_VERSION_FOREGROUND="red3a"
# POWERLEVEL9K_GO_VERSION_BACKGROUND=$COLOR_BLACK
# POWERLEVEL9K_GO_VERSION_FOREGROUND="darkslategray2"
# POWERLEVEL9K_RUST_VERSION_BACKGROUND=$COLOR_BLACK
# POWERLEVEL9K_RUST_VERSION_FOREGROUND="lightgoldenrod3"
# POWERLEVEL9K_SWIFT_VERSION_BACKGROUND=$COLOR_BLACK
# POWERLEVEL9K_SWIFT_VERSION_FOREGROUND="darkorange"
# # Background Jobs
# POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND=$COLOR_BLACK
# POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='lightgoldenrod3'
# # Time
# POWERLEVEL9K_TIME_ICON=""
# POWERLEVEL9K_TIME_FOREGROUND=$COLOR_BLACK
# POWERLEVEL9K_TIME_BACKGROUND=$COLOR_STRING
# POWERLEVEL9K_TIME_FORMAT="%D{"$'\uf017'" %H:%M "$'\uf073'" %d/%m}" #  
# # Load
# POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND=$COLOR_BLACK
# POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND=$COLOR_ERROR
# POWERLEVEL9K_LOAD_WARNING_BACKGROUND=$COLOR_BLACK
# POWERLEVEL9K_LOAD_WARNING_FOREGROUND=$COLOR_WARNING
# POWERLEVEL9K_LOAD_NORMAL_BACKGROUND=$COLOR_BLACK
# POWERLEVEL9K_LOAD_NORMAL_FOREGROUND=$COLOR_OK
# POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR=$COLOR_ERROR
# POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR=$COLOR_WARNING
# POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR=$COLOR_OK
# # Ram
# POWERLEVEL9K_RAM_BACKGROUND=$COLOR_BLACK
# POWERLEVEL9K_RAM_FOREGROUND=$COLOR_WARNING
# # Ip
# POWERLEVEL9K_IP_BACKGROUND=$COLOR_BLACK
# POWERLEVEL9K_IP_FOREGROUND=$COLOR_COMMENT
# # Public ip
# POWERLEVEL9K_PUBLIC_IP_NONE="offline"
# POWERLEVEL9K_PUBLIC_IP_NONE_FOREGROUND=$COLOR_ERROR
# POWERLEVEL9K_PUBLIC_IP_HOST="http://ident.me"
# # Disk usage
# POWERLEVEL9K_DISK_USAGE_NORMAL_BACKGROUND=$COLOR_BLACK
# POWERLEVEL9K_DISK_USAGE_NORMAL_FOREGROUND=$COLOR_OK
# POWERLEVEL9K_DISK_USAGE_WARNING_BACKGROUND=$COLOR_BLACK
# POWERLEVEL9K_DISK_USAGE_WARNING_FOREGROUND=$COLOR_WARNING
# POWERLEVEL9K_DISK_USAGE_CRITICAL_BACKGROUND=$COLOR_BLACK
# POWERLEVEL9K_DISK_USAGE_CRITICAL_FOREGROUND=$COLOR_ERROR
# # Battery
# POWERLEVEL9K_BATTERY_LOW_BACKGROUND=$COLOR_BLACK
# POWERLEVEL9K_BATTERY_LOW_FOREGROUND=$COLOR_ERROR
# POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND=$COLOR_BLACK
# POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND=$COLOR_WARNING
# POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND=$COLOR_BLACK
# POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND=$COLOR_OK
# POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND=$COLOR_BLACK
# POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND=$COLOR_OK
# POWERLEVEL9K_BATTERY_VERBOSE="false"
# POWERLEVEL9K_BATTERY_STAGES=($'\uf244 ' $'\uf243 ' $'\uf242 ' $'\uf241 ' $'\uf240 ') # 
# Zsh Syntax colors ---------------------------------------------------------- #
source $ZSH/oh-my-zsh.sh
ZSH_HIGHLIGHT_STYLES[comment]='fg='$COLOR_COMMENTS
ZSH_HIGHLIGHT_STYLES[alias]='fg='$COLOR_PRIMARY
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg='$COLOR_PRIMARY
ZSH_HIGHLIGHT_STYLES[builtin]='fg='$COLOR_PRIMARY
ZSH_HIGHLIGHT_STYLES[precommand]='fg='$COLOR_PRIMARY',bold'
ZSH_HIGHLIGHT_STYLES[command]='fg='$COLOR_PRIMARY
ZSH_HIGHLIGHT_STYLES[function]='fg='$COLOR_PRIMARY
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg='$COLOR_PRIMARY
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg='$COLOR_ERROR
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg='$COLOR_DENIED
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg='$COLOR_WARNING
ZSH_HIGHLIGHT_STYLES[path]='fg='$COLOR_STRING',underline'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg='$COLOR_STRING',underline'
ZSH_HIGHLIGHT_STYLES[path_approx]='fg='$COLOR_STRING',underline'
ZSH_HIGHLIGHT_STYLES[globbing]='fg='$COLOR_WARNING
# ZSH_HIGHLIGHT_STYLES[history-expansion]='fg='$COLOR_STRING',bold'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg='$COLOR_WARNING
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg='$COLOR_WARNING
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg='$COLOR_STRING
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg='$COLOR_STRING
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg='$COLOR_STRING
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg='$COLOR_STRING
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg='$COLOR_STRING
ZSH_HIGHLIGHT_STYLES[assign]='fg='$COLOR_WARNING
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg='$COLOR_COMMENTS
# Aliases & functions -------------------------------------------------------- #
# pretty ls (require lsd)
alias ls="lsd"
lt() { lsd --tree --depth $1 2>/dev/null || lsd --tree --depth 1 }
lta() { lsd --tree --depth $1 -A 2>/dev/null || lsd --tree --depth 1 -A }
# pretty curl (require jq)
jcurl() { curl $@ | jq -C | less -R }
# better cp (require rsync)
rcp() { rsync -avhW --progress $1 $2 }
# shortcuts
alias x="exit"
alias c="clear"
alias l="ls"
alias la="ls -A"
alias ll="ls -l"
alias lla="ls -lA"
cdp() { cd $YOUR_PROJECT_FOLDER"/$1" && ll -A }
mkcd() { mkdir -p "$1" && cd "$1" }
# git
glog() { git log --graph --abbrev-commit --decorate --date=relative --all }
glg() { git log --graph --abbrev-commit --decorate --format=format:'%C(bold yellow)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(auto)%d%C(reset)%n''%C(white)%s%C(reset) %C(dim white)- %an%C(reset)' }
gc() { # usage : gc fix "commit message"
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
    backup)  git commit -m "💾 Backup: $detail" ;;
    merge)   git commit -m "🔀 Merge: $detail" ;;
    *) echo "Unrecognized commit type: '$type'" >&2; ;;
  esac
  echo $commit
}
ga() { git add . }
gac() { git add . && gc $1 $2 }
gacp() { git add . && gc $1 $2 && git push }
gm() { git merge $1 --no-commit }
gls() { curl "https://api.github.com/users/$YOUR_GITHUB_USERNAME/repos" -s | jq '[.[].svn_url]' }
gh() {
  xdg-open "https://github.com/$YOUR_GITHUB_USERNAME/$1" 2>/dev/null ||
  gnome-open "https://github.com/$YOUR_GITHUB_USERNAME/$1" 2>/dev/null ||
  open "https://github.com/$YOUR_GITHUB_USERNAME/$1" 2>/dev/null ||
  echo "You need xdg-open, gnome-open or open to use this alias..."
}
# Android SDK ---------------------------------------------------------------- #
# export ANDROID_HOME="$HOME/Android/Sdk"
# export JAVA_HOME=$(update-alternatives --query javac | sed -n -e 's/Best: *\(.*\)\/bin\/javac/\1/p')
# PATH=$PATH:$ANDROID_HOME/tools; PATH=$PATH:$ANDROID_HOME/platform-tools
# alias android='$ANDROID_HOME/tools/android'
# alias emulator='$ANDROID_HOME/tools/emulator'
# Others --------------------------------------------------------------------- #
