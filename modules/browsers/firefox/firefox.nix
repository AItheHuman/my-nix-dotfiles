{ config, lib, pkgs, ... }:

with lib;

let cfg = config.customizeable.browsers.firefox;

in {
  options = {
    customizeable.browsers.firefox = {
      enable = mkEnableOption "Enable st, simple terminal";
    };
  };

  config = mkIf cfg.enable { programs.firefox.enable = true; };
}
