# Terminal
---
### Install homebrew
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
### Install oh-my-zsh
```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
### Install Nerd Font
```bash
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
```
Install the following fonts: <br>
- [MesloLGS NF Regular.ttf
](https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf)
- [MesloLGS NF Bold.ttf](https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold.ttf)
- [MesloLGS NF Italic.ttf](https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Italic.ttf)
- [MesloLGS NF Bold Italic.ttf](https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold%20Italic.ttf)

open Terminal → Preferences → Profiles → Text and set Font to MesloLGS NF.

### Install power-level-10k theme for oh-my-zsh
```bash
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```
Set ```ZSH_THEME=powerlevel10k/powerlevel10k``` in your ```~/.zshrc```.

### Install iTerm2(Optional)
Download iTerm2 from https://www.iterm2.com/
```md
// ToDo: Write iTerm2 sync procedure
```

### Install zsh-autosuggestions plugin
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
Add the plugin to the list of plugins for Oh My Zsh to load (inside ```~/.zshrc```):

### Create symbolic links
Clone this repository to your home folder
```bash
cd ~
git clone git@github.com:nazmulcuet11/dotfiles.git
```
Create symbolic links for .bashrc(optional), .zshrc, .p10k.zsh to home folder
```bash
cd ~
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.p10k.zsh ~/.p10k.zsh 
```

-- VLC Media Player Configuration --
copy and replace(if existing) vlcrc file to
for linux/unix ~/.config/vlc/vlcrc
For Mac /Users/badrobot/Library/Preferences/org.videolan.vlc/vlcrc
for windows C:\Users\%username%\Application Data\vlc\vlcrc

-- .gitconfig, .zshrc, .vimrc --
1. Move all files in the list(.gitconfig, .zshrc, .vimrc) from home directory to an dotfiles-old directory for backup
2. Make a symbolic link of this files in the dotfiles directory to home directory

-- powerline --
make a link of the powerline folder in ~/.config folder


