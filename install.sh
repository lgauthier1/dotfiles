#!/usr/bin/env bash

##################
# Softwares
###################
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

##################
# Softwares
###################
echo "install https://www.nerdfonts.com/font-downloads"

##################
# Softwares
###################
brew install --cask iterm2
brew install --cask google-drive
brew install --cask macpass
brew install --cask brave-browser
brew install --cask visual-studio-code
brew install --cask pgadmin4
brew install --cask slack
brew install jq
brew install fzf
brew install tmux
brew install htop
brew install bat
brew install neovim
brew install exa
npm install -g asciidoctor @asciidoctor/core asciidoctor-pdf asciidoctor-kroki
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash


##################
# Config terminal
###################
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# install spaceship-prompt:
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

ln -s dotfiles/.zshrc .zshrc
ln -s dotfiles/.gitconfig .gitconfig
ln -s dotfiles/.spaceshiprc.zsh .spaceshiprc.zsh
ln -s dotfiles/.tmux.conf .tmux.conf

##################
# MacOs settings
###################

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40


