# My-ZSH

Guide to install Zsh + Oh-my-Zsh + PowerLevel10k + NerdFonts + some CLI utils for an awesome shell.

---

<p align="center">
  <img height="250" src="./capture.png">
  <br>
</p>

---

## 👨‍💻 Zsh

📖 https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH

- 🐧 Linux
  ```bash
  # Fedora
  sudo dnf install util-linux-user zsh lsd
  # Debian/Ubuntu
  sudo apt install zsh lsd
  ```
- 🍎 OSX
  ```bash
  brew install zsh lsd
  ```

## 📦 Oh-My-Zsh

📖 https://github.com/robbyrussell/oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# OR
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

## 🔠 NerdFonts

📖 https://github.com/ryanoasis/nerd-fonts

```bash
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Fira Code Regular Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete.ttf
```

## 💪 PowerLevel10k

📖 https://github.com/romkatv/powerlevel10k

```bash
# PowerLevel10K
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
# Plugins
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# Only if you want to use NVM as Oh-My-Zsh plugin
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
```

## ⚙️ Zsh config

Put the .zshrc at the root of your home directory, for example via command line:

```bash
cd && curl -fLo ".zshrc" https://github.com/miaborde/my-zsh/raw/master/.zshrc
# uncomment zsh-nvm in plugins section if you use it.
```

## 🔧 Changing monospace fonts system-wide

For Gnome (Linux) users only :

```bash
gsettings set org.gnome.desktop.interface monospace-font-name 'FiraCode Nerd Font Regular 14'
```

## 🕹 Enjoy
