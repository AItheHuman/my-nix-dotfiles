{ config, lib, pkgs, ... }:

with lib; # enables stuff like mkEnableOption

let sources = import ../../nix/sources.nix;

in {
  imports = [ ./config.nix ../../modules ];

  config = {
    # to use options declared in other modules, you must import those modules

    customizeable = {

      wm.dwm.enable = true;
      shell.st.enable = true;
      shell.xsession.sun.enable = true;
      shell.xsession.mykeys.enable = true;
      shell.bash.enable = true;
      shell.my-scripts.enable = true;

      core.non-nixos.enable = true;

      editors.neovim.enable = true;
      editors.vim.enable = true;

      # syncthing doesn't work boot
      # services.syncthing.enable = true;
    };

    ## These are packages without any personal configuration
    home.packages = with pkgs; [
      alacritty
    ];


    home.username = builtins.getEnv "USER";
    home.homeDirectory = builtins.getEnv "HOME";
    home.stateVersion = "20.09";
    home.sessionVariables = {
      LOCALE_ARCHIVE = "${pkgs.glibcLocales}/lib/locale/locale-archive";
    };
  };
}
