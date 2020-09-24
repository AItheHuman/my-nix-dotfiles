{ config, options, lib, pkgs, ... }:

with lib;

let cfg = customizeable.shell.direnv;

in {

  options = {
    customizeable.shell.direnv = { enable = mkEnableOption "Enable Direnv"; };
  };

  config = {
    programs.direnv = {
      enable = true;
      enableNixDirenvIntegration = true;
      stdlib = builtins.readFile ./layout_poetry.sh;
    };
  };
}
