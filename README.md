<p align="center">
  <img height="150" src="https://camo.githubusercontent.com/5c385f15f3eaedb72cfcfbbaf75355b700ac0757/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6f686d797a73682f6f682d6d792d7a73682d6c6f676f2e706e67">
  <p align="center">Guide to install Zsh + Oh-my-Zsh + PowerLevel10k + NerdFonts + some CLI utils for an awesome shell.</p>
  <br>
</p>

# Zsh
📖 https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH
```bash
sudo dnf install util-linux-user
sudo dnf install zsh lsd
```

# Oh-My-Zsh
📖 https://github.com/robbyrussell/oh-my-zsh
```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# OR
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

# NerdFonts
📖 https://github.com/ryanoasis/nerd-fonts
```bash
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Fira Code Regular Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete.ttf
```

# PowerLevel10k
📖 https://github.com/romkatv/powerlevel10k
```bash
# PowerLevel10K
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
# Plugins
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
```

# Zsh config
```bash
cd && curl -fLo ".zshrc" https://github.com/miaborde/my-zsh/raw/master/.zshrc
```