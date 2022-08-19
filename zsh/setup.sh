#!/bin/bash

eval $INSTALL_CMD unzip
eval $INSTALL_CMD wget

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip

mkdir -p ~/.local/share/fonts
mv FiraCode.zip ~/.local/share/fonts/
cd ~/.local/share/fonts/
unzip FiraCode.zip
rm FiraCode.zip
cd -

rm ~/.zshrc
ln -s $PWD/.zshrc ~/

export RUNZSH=no
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

zsh -c "p10k configure"
zsh -c "git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k"

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

