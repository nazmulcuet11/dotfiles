#!/bin/bash
# .make.sh
# This script creates symlinks from ~/ to dotfiles dir

# dir=~/dotfiles
# olddir=~/dotfiles-old
# files=".bashrc .vimrc .zshrc .gitconfig"

# echo "Creating $olddir for backup of any existing dotfiles in ~ dir ..."
# mkdir --parents $olddir
# echo "... complete."

# for file in $files; do
# 	echo "Moving $file from ~ to $olddir"
# 	mv ~/$file $olddir/
# 	echo "Creating symlink to $file in home directory"
# 	ln --symbolic $dir/$file ~/$file
# done



git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

mv ~/.zshrc ~/dotfiles-old/
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.p10k.zsh ~/.p10k.zsh