# Dotfiles

A compilation of dotfiles for the most important software I use in my Linux distro of choice.

## Software

### Zsh
[Zsh](https://zsh.sourceforge.io) is a shell designed for interactive use, although is also a powerful scripting
language.

### Nvim
My currrent configuration uses Neovim 8.3, Packer as the plugin manager and 
Mason to manage LSP server/utility installation, such as linters, formatters 
and debuggers.
For more information go to [Nvim readme page](.config/nvim/README.md).

## Alacritty
[Alacritty](https://alacritty.org) is my current terminal emulator. It is written in Rust and UX is quite flawless. 
It requires minimal configuration since first installation. My dotfiles for Alacritty are
stored in `.config/alacritty/alacritty.yml`. Every possible configuration is commented in 
the [yaml](https://yaml.org) file, so that is good starting point whenever you need to specify some custom setting. 

## Usage
This repo is designed to be imported in the user folder as root (e.g., `/home/user`).
Folders inside `.config` for `zsh` and `nvim` are expected to be empty or without
any file name conflicting with the ones defined in this repo. The usual procedure
to put the dotfiles to use is as follows:

### Nvim
Installing [Neovim](https://neovim.io/) and opening for the first time should suffice for it to load The
dot files and start to import every plugin component defined in its configuration
files.  

### Zsh

```bash
git init
git remote add origin https://github.com/juandarr/dotfiles
git pull origin main
```

Don't forget to clone the `Zsh` plugins using the `bash` script in `.config/zsh/plugins`.
If needed, give execution permissions to such file with `sudo chmod +x get_plugins.sh`.
The names of the main plugin files (extension `.zsh`) should match the ones defined
inside `.zshrc`.
