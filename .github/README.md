# My dotfiles

![Desktop](desktop.webp)

## Installing dependencies

### Arch Linux

```bash
# basic packages
sudo pacman -S zsh alacritty neovim stow brightnessctl alsa-utils fastfetch ly tmux fzf bat sxhkd ttf-jetbrains-mono-nerd

# enable ly login manager
sudo systemctl enable ly

# i3 dependencies
sudo pacman -S i3-wm dmenu picom xorg-xinput xss-lock xorg-xauth nitrogen flameshot slock

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Installing dotfiles

Clone this repo and replace your configs with my dotfiles

```bash
git clone https://github.com/yosa12978/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow --adopt .
git restore .
```
