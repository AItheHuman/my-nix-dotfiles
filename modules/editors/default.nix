{ config, lib, pkgs, ... }:

{
  imports = [ ./neovim/neovim.nix ./vim/vim.nix ./vscode/vscode.nix ];
}
