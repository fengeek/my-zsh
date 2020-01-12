# My-ZSH

Guide to install Zsh + Oh-my-Zsh + PowerLevel10k + NerdFonts + some CLI utils for an awesome shell.

---

<p align="center">
  <img height="250" src="./capture.png">
  <br>
</p>

---

## 👨‍💻 Zsh & CLI-tools

📖 https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH

```bash
# 🐧 Linux Fedora
sudo dnf install util-linux-user zsh lsd jq
# 🐧 Linux Debian based (Ubuntu, Mint, Deepin...)
sudo apt install zsh lsd jq
# 🍎 OSX
brew install zsh lsd jq
```

## 📦 Oh-My-Zsh

📖 https://github.com/robbyrussell/oh-my-zsh

```bash
# ✌️ all
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## 💪 PowerLevel10k

📖 https://github.com/romkatv/powerlevel10k

```bash
# ✌️ For all
git clone https://github.com/romkatv/powerlevel10k $ZSH_CUSTOM/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

## 🔠 Fonts

📖 https://github.com/ryanoasis/nerd-fonts

```bash
# 🐧 Linux
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
# 🍎 OSX
cd ~/Library/Fonts
# ✌️ Then for all
curl -fLo "FiraCode-Bold.ttf" https://github.com/tonsky/FiraCode/raw/master/distr/ttf/FiraCode-Bold.ttf
curl -fLo "FiraCode-Light.ttf" https://github.com/tonsky/FiraCode/raw/master/distr/ttf/FiraCode-Light.ttf
curl -fLo "FiraCode-Medium.ttf" https://github.com/tonsky/FiraCode/raw/master/distr/ttf/FiraCode-Medium.ttf
curl -fLo "FiraCode-Regular.ttf" https://github.com/tonsky/FiraCode/raw/master/distr/ttf/FiraCode-Regular.ttf
curl -fLo "FiraCode-Retina.ttf" https://github.com/tonsky/FiraCode/raw/master/distr/ttf/FiraCode-Retina.ttf
mkdir Fira-Code && mv *.ttf Fira-Code
curl -fLo "FiraCode-Nerd-Font-Bold.ttf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Bold/complete/Fira%20Code%20Bold%20Nerd%20Font%20Complete.ttf
curl -fLo "FiraCode-Nerd-Font-Light.ttf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Light/complete/Fira%20Code%20Light%20Nerd%20Font%20Complete.ttf
curl -fLo "FiraCode-Nerd-Font-Medium.ttf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Medium/complete/Fira%20Code%20Medium%20Nerd%20Font%20Complete.ttf
curl -fLo "FiraCode-Nerd-Font-Regular.ttf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete.ttf
curl -fLo "FiraCode-Nerd-Font-Retina.ttf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Retina/complete/Fira%20Code%20Retina%20Nerd%20Font%20Complete.ttf
mkdir FiraCode-Nerd-Font && mv *.ttf FiraCode-Nerd-Font
```

## 🔧 Changing default terminal monospace font

```bash
# 🐧 Linux (Gnome DE)
gsettings set org.gnome.desktop.interface monospace-font-name 'FiraCode Nerd Font Regular 14'
```

> **🍎 OSX**  
> Open Terminal --> Go to Preferences -->  
> Go to Profiles -- and under text, you can change the font for **'Fira Code Regular Nerd Font Complete 14'**.

## 🔌 NVM as an Oh-My-ZSH plugin

📖 https://github.com/lukechilds/zsh-nvm

```bash
# ✌️ For all
git clone https://github.com/lukechilds/zsh-nvm $ZSH_CUSTOM/plugins/zsh-nvm

# uncomment 'zsh-nvm' in your .zshrc plugins section.
```

## ⚙️ My Zsh config

```bash
cd && curl -fLo ".zshrc" https://github.com/miaborde/my-zsh/raw/master/dotfiles/.zshrc
```

## ⚔️ Tmux

```bash
# 🐧 Linux Fedora
sudo dnf install tmux
# 🐧 Linux Debian based (Ubuntu, Mint, Deepin...)
sudo apt install tmux
# 🍎 OSX
brew install tmux
# ✌️ Then for all
cd && curl -fLo ".tmux.conf" https://github.com/miaborde/my-zsh/raw/master/dotfiles/.tmux.conf
```

## 🕹 Enjoy
