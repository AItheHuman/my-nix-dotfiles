# ## WORK IN PROGRESS ###
{ config, lib, pkgs, ... }:

with lib;

let cfg = config.customizeable.services.unity;

in {
  options = {
    customizeable.services.unity = {
      deps.enable =
        mkEnableOption "Install unity departments for creating your own build";
      enable = mkEnableOption "Install unity for ubuntu";
    };
  };

  config = mkIf cfg.enable {
    home.packages = with pkgs;
      [
        # install

      ];
  };
}
