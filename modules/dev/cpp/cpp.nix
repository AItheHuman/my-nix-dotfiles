{ config, lib, pkgs, ... }:

with lib;

let cfg = config.customizeable.dev.cpp;

in {
  options = {
    customizeable.dev.cpp = {
      enable = mkEnableOption "Enable c++ development";
    };
  };

  config = mkIf cfg.enable { home.packages = with pkgs; [ gcc ]; };
}
