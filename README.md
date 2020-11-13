# Building my dotfile configurations with Nix

![My current setup](my-nix-workspace.png)

## Requirements

- Linux running systemd, with SELinux disabled, or MAC
- git
- curl

## Installation

Install Nix

```sh
sh <(curl -L https://nixos.org/nix/install) --daemon  # Install Nix, requires restart

```

Install config

```sh
git clone https://github.com/aith/my-nix-dotfiles.git $HOME/nix-config  # Clone this
cd $HOME/nix-config
bash install.sh {generic, sun} # Choose machine. I recommend generic and updating settings to your liking.
bash build.sh    # Build from configurations
```

## Customization

To change which modules are included in the build, edit the variables under 'customizeable'
in the machine you chose.

To rebuild, use

```sh
bash build.sh
```
