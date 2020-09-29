{ config, lib, pkgs, ... }:

with lib;

let cfg = config.customizeable.services.gimp;

in {
  options = {
    customizeable.services.gimp = { enable = mkEnableOption "Enable gimp"; };
  };

  config = mkIf cfg.enable {
    home.packages = [ pkgs.gimp ];
    # Thanks to: https://github.com/bernerdschaefer/dotfiles/blob/f5d864bb77fdedd05db4df9544aa9de4b8e0c776/nixos/configuration.nix#L59/
  };
}
