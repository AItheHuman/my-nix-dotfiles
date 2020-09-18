{ config, lib, pkgs, ... }@args:

with lib;

let
  # other thing;
  # other thing;

in {

  imports = {
   ../editors/neovim/neovim.nix
  };

  options = {
    customizeables.core.non-nixos = { # declare options for other modules to use
      enable = mkOption {
        description = "config for non-NixOS systems";
        default = true;
        type = types.bool;
      };

      # Another way to do the above
      installNix = mkEnableOption "nix installation" // { default = true; };
    };
  };

  config = {
    # implementation: what does this module provide, if enabled?
    targets.genericLinux.enable = true;
  };
}
