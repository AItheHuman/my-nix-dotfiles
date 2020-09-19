{ config, lib, pkgs, ... }:

with lib;

let cfg = config.customizeable.shell.st;

in {
  options = {
    customizeable.shell.st = {
      enable = mkEnableOption "Enable st, simple terminal";
    };
  };

  config = mkIf cfg.enable { home.packages = [ pkgs.st ]; };
}
