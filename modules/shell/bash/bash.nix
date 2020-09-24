{ config, lib, pkgs, ... }:

with lib;

let cfg = config.customizeable.shell.bash;

in {
  options = {
    customizeable.shell.bash = {
      enable = mkEnableOption "Enable st, simple terminal";
    };
  };

  config = mkIf cfg.enable {
    programs = {
      bash = {
        enable = true;
        initExtra = builtins.readFile ./sun/.bashrc;
        # shellAliases =
        #   builtins.readFile ../../modules/shell/bash/sun/.bash_aliases;
        logoutExtra = builtins.readFile ./sun/.bash_logout;
        profileExtra = builtins.readFile ./sun/.bash_profile;
        enableAutojump = true;
      };
    };
  };
}
