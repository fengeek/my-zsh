# ---------------------------------------------------------------------------- #
#                                    .zshrc                                    #
# ---------------------------------------------------------------------------- #
# Your variables ------------------------------------------------------------- #
HIST_STAMPS="yyyy-mm-dd" # history 命令查看历史输入命令的时间展示格式
DISABLE_UPDATE_PROMPT=true
HISTSIZE=5000
SAVEHIST=5000

YOUR_GITHUB_USERNAME="fengeek"
YOUR_PROJECT_FOLDER="$HOME/Library/Mobile Documents/com~apple~CloudDocs/MyFiles/MyGit"
# Colors --------------------------------------------------------------------- #
# https://user-images.githubusercontent.com/704406/43988708-64c0fa52-9d4c-11e8-8cf9-c4d4b97a5200.png
COLOR_BLACK="000" # black
COLOR_RED="001" # red
COLOR_GREEN="002" # green
COLOR_YELLOW="011" # yellow
COLOR_BLUE="004" # blue
COLOR_DEEPSKYBLUE3="032" # deepskyblue3
COLOR_MAGENTA="005" # magenta
COLOR_CYAN="006" # cyan
COLOR_WHITE="015" # white
COLOR_GREY="245" # grey
COLOR_GREY19="236" # grey19
COLOR_GREY30="239" # grey30
COLOR_GREY37="059" # grey37
COLOR_GREY70="249" # grey70
COLOR_GREY85="253" # grey85
COLOR_HONEYDEW2="194" # gold1
COLOR_MISTRYOSE3="181" # mistyrose3
COLOR_LIGHTYELLOW3="187" # lightyellow3
COLOR_LIGHTYELLOW3="206" # hotpink
COLOR_MAROON="009" # maroon
COLOR_LIGHTGOLDENRD2="222" # lightgoldenrod2
COLOR_COMMENTS="000,bold" # brightblack


Green_font_prefix="\033[32m"
Red_font_prefix="\033[31m"
Green_background_prefix="\033[42;37m"
Red_background_prefix="\033[41;37m"
Font_color_suffix="\033[0m"
Info="${Green_font_prefix}[信息]${Font_color_suffix}"
Error="${Red_font_prefix}[错误]${Font_color_suffix}"
Tip="${Green_font_prefix}[注意]${Font_color_suffix}"
# Oh-My-Zsh ------------------------------------------------------------------ #
export ZSH="$HOME/.oh-my-zsh"
# Plugins
if [ "$(uname)" = "Darwin" ]; then
  plugins=(
      sudo                              # 按两次 ESC 可在命令前面添加 sudo
      zsh_reload                        # 提供 src 命令用于重载 zsh 配置
      zsh-navigation-tools              # CTRL+R 可打开 history 面板，功能很多很强大
      zsh-autosuggestions               # 自动建议
      zsh-syntax-highlighting           # 命令着色
      sublime                           # st 可打开给定文件，stt 可将当前所在文件夹发送到 sublime
      git-open                          # 在 git 目录下通过 git open 在浏览器打开项目的 GitHub 页面
      # zsh-nvm
  )
else
  plugins=(
      sudo                              # 按两次 ESC 可在命令前面添加 sudo
      zsh_reload                        # 提供 src 命令用于重载 zsh 配置
      zsh-navigation-tools              # CTRL+R 可打开 history 面板，功能很多很强大
      zsh-autosuggestions               # 自动建议
      zsh-syntax-highlighting           # 命令着色
      git-open                          # 在 git 目录下通过 git open 在浏览器打开项目的 GitHub 页面
      # zsh-nvm
  )
fi
# Powerlevel9k --------------------------------------------------------------- #
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"

if [ "$(uname)" = "Darwin" ]; then
  # 修改Homebrew Bottles源
  export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
  # brew 不自动更新
  export HOMEBREW_NO_AUTO_UPDATE=true
fi

function pp(){
    STATUS_CODE=$(curl -sL -m 5  www.google.com -o /dev/null -w "%{http_code}\n")
    if [ $STATUS_CODE != 200 ]; then
        read "proxy_ip?当前为宅家模式，输入代理IP:"
        export {http,https}_proxy=http://$proxy_ip:7890
        export all_proxy=socks5://$proxy_ip:7891
        STATUS_CODE=$(curl -sL -m 5  www.google.com -o /dev/null -w "%{http_code}\n")
        if [ $STATUS_CODE != 200 ]; then
            echo -e "${Error}进入留学模式失败，请重新尝试"
            export switch_proxy=0
        else
            export switch_proxy=1
            echo -e "${Info}进入留学模式成功"
        fi
    else
        unset {http,https,all}_proxy
        export switch_proxy=0
        echo -e "${Info}进入宅家模式"
    fi
}

function prompt_my_proxy_status(){
    if [ -z $all_proxy ]; then
        p10k segment -f lightgoldenrod1 -t "🏠 宅家"
    else
        if [ $all_proxy = '' ]; then
            p10k segment -f lightgoldenrod1 -t "🏠 宅家"
        else
            p10k segment -f darkseagreen4 -t "🔰 留学"
        fi
    fi
}


# Prompt segments
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
    # background_jobs command_execution_time virtualenv ip time my_proxy_status load battery_joined disk_usage_joined ram_joined custom_hardware
    custom_elementary_icon time dir_writable dir
    newline my_proxy_status status  vcs
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
    # load battery_joined disk_usage_joined ram_joined custom_hardware newline
    # custom_dev host  custom_info
#     node_version custom_dev time host custom_info newline
#       php_version_joined symfony2_version_joined laravel_version_joined
#       swift_version_joined go_version_joined rust_version_joined
#     load battery_joined disk_usage_joined ram_joined custom_hardware
)

# Trims down prompt to show only on current line
# POWERLEVEL9K_TRANSIENT_PROMPT=same-dir
# POWERLEVEL9K_TRANSIENT_PROMPT=always

ZLE_RPROMPT_INDENT=0 # Fix final space for right prompt

ZSH_DISABLE_COMPFIX="true"

# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0C0'
# POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\uE0C2'
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\ue0c6'

# Double-Lined Prompt
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{014}╭─%F{cyan}"
POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_PREFIX='%F{014}├─'   # ├─
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}╰─%F{cyan}\uF460%F{073}\uF460%F{109}\uF460%f "

# Left prompt ---------------------------------------------------------------- #
# GitHub icon
POWERLEVEL9K_VCS_GIT_ICON=$'\uF408 '
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$'\uF408 '

# OS icon
POWERLEVEL9K_OS_ICON_FOREGROUND=$COLOR_BLACK
POWERLEVEL9K_OS_ICON_BACKGROUND=$COLOR_MAGENTA
# User
POWERLEVEL9K_USER_ICON=$'\uF007' # 
POWERLEVEL9K_ROOT_ICON="#"
POWERLEVEL9K_SUDO_ICON=$'\uF09C' # 
POWERLEVEL9K_USER_DEFAULT_FOREGROUND=$COLOR_BLUE
POWERLEVEL9K_USER_DEFAULT_BACKGROUND=$COLOR_GREY30
# Dir Writable
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND=$COLOR_MAGENTA
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_DIR_WRITABLE_VERBOSE="true"
# Dir
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_DIR_HOME_BACKGROUND=$COLOR_YELLOW
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=$COLOR_YELLOW
POWERLEVEL9K_DIR_ETC_BACKGROUND=$COLOR_MAGENTA
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=$COLOR_MAGENTA
# Status
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_STATUS_OK_FOREGROUND=$COLOR_BLACK
POWERLEVEL9K_STATUS_OK_BACKGROUND=$COLOR_GREEN
POWERLEVEL9K_STATUS_ERROR_FOREGROUND=$COLOR_BLACK
POWERLEVEL9K_STATUS_ERROR_BACKGROUND=$COLOR_RED
POWERLEVEL9K_STATUS_VERBOSE="true"
# Vcs
POWERLEVEL9K_VCS_BRANCH_ICON=''
POWERLEVEL9K_VCS_CLEAN_FOREGROUND=$COLOR_GREEN
POWERLEVEL9K_VCS_CLEAN_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=$COLOR_MAGENTA
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=$COLOR_YELLOW
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=$COLOR_BLACK
# Right prompt --------------------------------------------------------------- #
# Host
POWERLEVEL9K_HOST_ICON=$'\uF823' # 
POWERLEVEL9K_SSH_ICON=$'\uF489' # 
POWERLEVEL9K_HOST_LOCAL_FOREGROUND=$COLOR_BLACK
POWERLEVEL9K_HOST_LOCAL_BACKGROUND=$COLOR_YELLOW
POWERLEVEL9K_HOST_REMOTE_FOREGROUND=$COLOR_BLACK
POWERLEVEL9K_HOST_REMOTE_BACKGROUND=$COLOR_YELLOW
# Custom info
POWERLEVEL9K_CUSTOM_INFO="echo $'\uf05a '" # 
POWERLEVEL9K_CUSTOM_INFO_BACKGROUND=$COLOR_CYAN
POWERLEVEL9K_CUSTOM_INFO_FOREGROUND=$COLOR_BLACK
# Custom hardware
POWERLEVEL9K_CUSTOM_HARDWARE="echo $'\uf0ad '" # 
POWERLEVEL9K_CUSTOM_HARDWARE_BACKGROUND=$COLOR_CYAN
POWERLEVEL9K_CUSTOM_HARDWARE_FOREGROUND=$COLOR_BLACK
# Custom dev
POWERLEVEL9K_CUSTOM_DEV="echo $'\uF121 '" # </>
POWERLEVEL9K_CUSTOM_DEV_BACKGROUND=$COLOR_CYAN
POWERLEVEL9K_CUSTOM_DEV_FOREGROUND=$COLOR_BLACK
# Custom proxy status
POWERLEVEL9K_MY_PROXY_STATUS_BACKGROUND=$COLOR_GREY19

POWERLEVEL9K_CUSTOM_ELEMENTARY_ICON="echo  `hostname |awk -F '.' '{print $1}'` "
POWERLEVEL9K_CUSTOM_ELEMENTARY_ICON_BACKGROUND='lightcoral'
POWERLEVEL9K_CUSTOM_ELEMENTARY_ICON_FOREGROUND='black'


# Versions
POWERLEVEL9K_NODE_VERSION_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_NODE_VERSION_FOREGROUND=$COLOR_BLUE
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
POWERLEVEL9K_TIME_BACKGROUND=$COLOR_CYAN
POWERLEVEL9K_TIME_FORMAT="%D{"$'\uf017'" %H:%M "$'\uf073'" %m/%d}" #  
# Load
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND=$COLOR_RED
POWERLEVEL9K_LOAD_WARNING_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_LOAD_WARNING_FOREGROUND=$COLOR_YELLOW
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND=$COLOR_GREEN
POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR=$COLOR_RED
POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR=$COLOR_YELLOW
POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR=$COLOR_GREEN
# Ram
POWERLEVEL9K_RAM_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_RAM_FOREGROUND=$COLOR_YELLOW
# Ip
POWERLEVEL9K_IP_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_IP_FOREGROUND=$COLOR_COMMENT
# Public ip
POWERLEVEL9K_PUBLIC_IP_NONE="offline"
POWERLEVEL9K_PUBLIC_IP_NONE_FOREGROUND=$COLOR_RED
POWERLEVEL9K_PUBLIC_IP_HOST="http://ident.me"
# Disk usage
POWERLEVEL9K_DISK_USAGE_NORMAL_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_DISK_USAGE_NORMAL_FOREGROUND=$COLOR_GREEN
POWERLEVEL9K_DISK_USAGE_WARNING_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_DISK_USAGE_WARNING_FOREGROUND=$COLOR_YELLOW
POWERLEVEL9K_DISK_USAGE_CRITICAL_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_DISK_USAGE_CRITICAL_FOREGROUND=$COLOR_RED
# Battery
POWERLEVEL9K_BATTERY_LOW_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_BATTERY_LOW_FOREGROUND=$COLOR_RED
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND=$COLOR_YELLOW
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND=$COLOR_GREEN
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND=$COLOR_BLACK
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND=$COLOR_GREEN
POWERLEVEL9K_BATTERY_VERBOSE="false"
POWERLEVEL9K_BATTERY_STAGES=($'\uf244 ' $'\uf243 ' $'\uf242 ' $'\uf241 ' $'\uf240 ') # 
# Zsh Syntax colors ---------------------------------------------------------- #
source $ZSH/oh-my-zsh.sh
ZSH_HIGHLIGHT_STYLES[comment]='fg='$COLOR_COMMENTS
ZSH_HIGHLIGHT_STYLES[alias]='fg='$COLOR_BLUE
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg='$COLOR_BLUE
ZSH_HIGHLIGHT_STYLES[builtin]='fg='$COLOR_BLUE
ZSH_HIGHLIGHT_STYLES[precommand]='fg='$COLOR_BLUE',bold'
ZSH_HIGHLIGHT_STYLES[command]='fg='$COLOR_BLUE
ZSH_HIGHLIGHT_STYLES[function]='fg='$COLOR_BLUE
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg='$COLOR_BLUE
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg='$COLOR_RED
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg='$COLOR_MAGENTA
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg='$COLOR_YELLOW
ZSH_HIGHLIGHT_STYLES[path]='fg='$COLOR_CYAN',underline'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg='$COLOR_CYAN',underline'
ZSH_HIGHLIGHT_STYLES[path_approx]='fg='$COLOR_CYAN',underline'
ZSH_HIGHLIGHT_STYLES[globbing]='fg='$COLOR_YELLOW
# ZSH_HIGHLIGHT_STYLES[history-expansion]='fg='$COLOR_CYAN',bold'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg='$COLOR_YELLOW
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg='$COLOR_YELLOW
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg='$COLOR_CYAN
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg='$COLOR_CYAN
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg='$COLOR_CYAN
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg='$COLOR_CYAN
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg='$COLOR_CYAN
ZSH_HIGHLIGHT_STYLES[assign]='fg='$COLOR_YELLOW
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg='$COLOR_COMMENTS
# Aliases & functions -------------------------------------------------------- #
# pretty ls (require lsd)
command -v lsd &> /dev/null && alias ls="lsd"
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
alias go="git-open"
alias cat="bat"
alias lsgp="ls | xargs -P10 -I{} git -C {} pull"
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
