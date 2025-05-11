# dotfiles

## These are my configuration files I use on my system, to us it install git and stow first

``` bash
sudo pacman -S git stow 
```

## Than clone the repo

``` bash
git clone https://github.com/andris1177/dotfiles.git
cd dotfiles
```

## And than use stow to link thme to the right place

``` bash
stow .
```
