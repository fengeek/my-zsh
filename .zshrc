export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE='nerdfont-complete'
# Customise the Powerlevel9k prompts ----------------------------------------- #
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir_writable dir node_version php_version laravel_version symfony2_version go_version rust_version swift_version newline status vcs docker_machine)
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
POWERLEVEL9K_LARAVEL_VERSION_BACKGROUND="black"
POWERLEVEL9K_LARAVEL_VERSION_FOREGROUND="orangered1"
POWERLEVEL9K_SYMFONY2_VERSION_BACKGROUND="black"
POWERLEVEL9K_SYMFONY2_VERSION_FOREGROUND="white"
POWERLEVEL9K_JAVA_VERSION_BACKGROUND="black"
POWERLEVEL9K_GO_VERSION_BACKGROUND="black"
POWERLEVEL9K_GO_VERSION_BACKGROUND="darkslategray2"
POWERLEVEL9K_RUST_VERSION_BACKGROUND="black"
POWERLEVEL9K_RUST_VERSION_FOREGROUND="lightgoldenrod3"
POWERLEVEL9K_SWIFT_VERSION_BACKGROUND="black"
POWERLEVEL9K_SWIFT_VERSION_FOREGROUND="darkorange"
# Background Jobs ------------------------------------------------------------ #
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='black'
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='lightgoldenrod3'
# Dir Writable --------------------------------------------------------------- #
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND='lightcoral'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND='lightpink4'
# Dir ------------------------------------------------------------------------ #
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_DIR_HOME_BACKGROUND='seagreen3'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='gold1'
POWERLEVEL9K_DIR_ETC_BACKGROUND='salmon1'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='lightcoral'
# Status --------------------------------------------------------------------- #
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_STATUS_OK_FOREGROUND='seagreen3'
# Vcs ------------------------------------------------------------------------ #
POWERLEVEL9K_VCS_BRANCH_ICON=''
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='seagreen3'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='204'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='gold1'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
# Time ----------------------------------------------------------------------- #
POWERLEVEL9K_TIME_ICON=""
POWERLEVEL9K_TIME_FOREGROUND="black"
POWERLEVEL9K_TIME_BACKGROUND="gold1"
# POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M \uf073 %d.%m}"
POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M}"
# Plugins -------------------------------------------------------------------- #
plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
    # zsh-nvm
)
# Oh my zsh ------------------------------------------------------------------ #
source $ZSH/oh-my-zsh.sh
# Aliases -------------------------------------------------------------------- #
alias cdp="cd ~/Documents/Projets && ls"
mcode() { code ~/Documents/Projets/"$1" && exit }
alias x="exit"
alias c="clear"
# lsd aliases & functions
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
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
alias gitlog="git log --graph --abbrev-commit --decorate --date=relative --all"
alias gitlg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold yellow)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(auto)%d%C(reset)%n''%C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"
# Android SDK ---------------------------------------------------------------- #
# export ANDROID_HOME="$HOME/Android/Sdk"
# export JAVA_HOME=$(update-alternatives --query javac | sed -n -e 's/Best: *\(.*\)\/bin\/javac/\1/p')
# PATH=$PATH:$ANDROID_HOME/tools; PATH=$PATH:$ANDROID_HOME/platform-tools
# alias android='$ANDROID_HOME/tools/android'
# alias emulator='$ANDROID_HOME/tools/emulator'