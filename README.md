# dotfiles

## These are my configuration files I use on my system, to us it install git and stow first

``` bash
sudo pacman -S git stow hyprland hyprpaper hyprlock waybar ttf-jetbrains-mono-nerd rofi 
```

## Than clone the repo

``` bash
git clone https://github.com/andris1177/dotfiles.git
cd dotfiles
```

## Don't forget to set your monitor specific settings in .config/hypr/monitors.conf and in .config/hypr/workspaces.conf. Also change the hyprpaper config which you can find in .config/hypr/hyprpaper.conf.

### wiki for the hyprland display settings: https://wiki.hyprland.org/Configuring/Monitors/
### wiki for hyprpaper: https://wiki.hyprland.org/Hypr-Ecosystem/hyprpaper/

## And than use stow to link them to the right place

``` bash
stow .
```

## I got my wallpapers from here https://gitlab.com/dwt1/wallpapers

![Alt text](images/example.png)
