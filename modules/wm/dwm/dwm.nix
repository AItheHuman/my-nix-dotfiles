{ config, lib, pkgs, ... }:

with lib;

let cfg = config.customizeable.wm.dwm;

in {
  options = {
    customizeable.wm.dwm = { enable = mkEnableOption "Enable DWM"; };
  };

  config = mkIf cfg.enable { home.packages = [ pkgs.dwm pkgs.dmenu ]; };
}
