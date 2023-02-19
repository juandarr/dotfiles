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

### Alacritty
[Alacritty](https://alacritty.org) is my current terminal emulator. It is written in Rust and UX is quite flawless. 
It requires minimal configuration since first installation. My dotfiles for Alacritty are
stored in `.config/alacritty/alacritty.yml`. Every possible configuration is commented in 
the [yaml](https://yaml.org) file, so that is good starting point whenever you need to specify some custom setting. 

### Tmux
[Tmux](https://github.com/tmux/tmux) is a terminal multiplexer which is highly customizable and full of features.
In my particular use case Tmux is used as a window manager,  allowing the creation of
sessions, windows (tabs) and panes (instances of terminals inside windows). The keymap
is defined in its customization file `.tmux.conf`, which is located in the user directory.

## Usage
This repo is designed to be imported with the user folder as the root folder (e.g., `/home/user`).
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

### Alacritty
After cloning the repo to the user folder and installing 
Alacritty you will be able to use the terminal with most of the defined custom
settings. To get the custom theme (`catpuccin` is my current choice), run the `bash`
file in `.config/alacritty/get_addons.sh`. If needed, give execution to such file
with `sudo chmod +x file_path`.

### Tmux
Install Tmux for your particular distro. As of 02/19/2023 I am using Fedora, so installing Tmux
is as easy as `sudo dnf install tmux`. Once Tmux has been installed, the configuration file
imported from this repo (located at the user root) will define keymaps, status lines, themes and 
more. 
