# Dotfiles

Inspired by the work of SeniorMars.

Most of the code so far is from [this repo](https://github.com/nvim-lua/kickstart.nvim/tree/master).
___
### Simlinks
```
ln -s ~/.dotfiles/.config/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.config/git/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.config/nvim ~/.config/nvim
ln -s ~/.dotfiles/.config/fish ~/.config/fish
ln -s ~/.dotfiles/.config/fastfetch ~/.config/fastfetch
```
___
### Brefile generation
```
brew bundle dump --describe
```

___
### Sign commits in fish
```
set -Ux GPG_TTY (tty)
```
