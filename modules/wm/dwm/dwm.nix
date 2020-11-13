{ config, lib, pkgs, ... }:

with lib;

let cfg = config.customizeable.wm.dwm;

in {
  options = {
    customizeable.wm.dwm = { enable = mkEnableOption "Enable DWM"; };
  };

  config = mkIf cfg.enable {
    home.packages = [ pkgs.dwm pkgs.dmenu ];
    # Thanks to: https://github.com/bernerdschaefer/dotfiles/blob/f5d864bb77fdedd05db4df9544aa9de4b8e0c776/nixos/configuration.nix#L59/
    nixpkgs.config.packageOverrides = pkgs: {
      dwm = pkgs.dwm.override {
        patches = [
          ./6.2/pertag.diff
          ./6.2/noborder.diff
          ./6.2/mainandvol.diff
          ./6.2/clientindicators-personal.diff
        ];
      };
    };
    # services.dwm-status.enable = true;
    # services.dwm-status.order = [
    #   "audio"
    #   "backlight"
    #   "battery"
    #   "cpu_load"
    #   "temperature"
    #   "network"
    #   "time"
    # ];
  };
}
