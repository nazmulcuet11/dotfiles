# Terminal
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
<br><br>
Naviaget to ```iTerm2->Preference->General->Preference->Load preference from a custom folder or URL```
and set it to ```Users/your_user_name/dotfiles```<br>
Quit iTerm2 and open again.<br>
Agai naviagate to ```iTerm2->Preference->General->Preference```<br>
Check Save changes to folder when iTerm2 quits. <br><br>
Set iTerm2 font to MesloLGS NF.


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

---

# VLC Media Player
Copy and replace(if existing) vlcrc file to
### Linux
```~/.config/vlc/vlcrc```

### Mac
```~/Library/Preferences/org.videolan.vlc/vlcrc```
### Windows
```C:\Users\%username%\Application Data\vlc\vlcrc```
<br><br>
using symbolic links won't work here because changing preferences in vlc media player removes existing vlcrc file and creates a new one, so after changing configuartion symbolic link will be deleted and a new vlcrc file will be created. 
<br><br>
## VLC Media Player Option Two
Symbolic link entire `org.videolan.vlc` folder through dotfiles. Doesn't fully know the pros and cons yet.
```bash
ln -s ~/dotfiles/org.videolan.vlc ~/Library/Preferences/org.videolan.vlc 
```


