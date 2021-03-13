# my deskop's dotfiles
this is my dotfiles for my desktop running artix

# requirement
- bspwm-rounded-corners
- zsh
- zsh-completions
- alacritty
- mpd
- cantata
- dunst
- mpv
- picom
- polybar
- ranger
- rofi
- sxhkd
- vim
- zathura
- xclip
- curl
- git
- paru or yay

# setup
first clone the repo
```
git clone https://github.com/SirCipherz/desktop-dotfiles.git
```
on arch-based distribution you can run this with your favorite aur helper

```
paru -S bspwm-rounded-corners-git zsh zsh-completions alacritty mpd cantata \
dunst-git mpv picom polybar ranger rofi sxhkd vim zathura xclip
```

of course you can remove anything uneeded

## copy the files
```
./install.sh
```

## oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### plugins
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting &&
```

## finally
don't forget to install a nice font and you are good !
