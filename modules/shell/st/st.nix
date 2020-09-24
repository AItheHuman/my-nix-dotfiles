{ config, lib, pkgs, ... }:

with lib;

let cfg = config.customizeable.shell.st;

in {
  options = {
    customizeable.shell.st = {
      enable = mkEnableOption "Enable st, simple terminal";
    };
  };

  config = mkIf cfg.enable {
    home.packages = [ pkgs.st ];
    nixpkgs.config.packageOverrides = pkgs: {
      st = pkgs.st.override {
        patches = [
          ./0.8.4/scrollback.diff
          ./0.8.4/anysize.diff
          ./0.8.4/colors-and-font.diff
        ];
      };
    };
  };
}
