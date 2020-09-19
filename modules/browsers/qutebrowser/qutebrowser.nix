{ config, lib, pkgs, ... }:

with lib;

let cfg = config.customizeable.browsers.qutebrowser;

in {
  options = {
    customizeable.browsers.qutebrowser = {
      enable = mkEnableOption "Enable qutebrowser";
    };
  };

  # Home-manager implemetation, instead of nixpkgs
  config = mkIf cfg.enable {
    programs.qutebrowser = {
      enable = true;
      extraConfig = builtins.readFile ./config.py;
    };
  };
}
