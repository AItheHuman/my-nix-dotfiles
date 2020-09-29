{ config, lib, pkgs, ... }:

with lib;

let sources = import ../../nix/sources.nix;

in {
  imports = [
    ./config.nix
    ../../modules

  ];

  config = {

    customizeable = {

      #### Option 1: ADD YOUR CONFIGURED PACKAGES HERE (After declaring & defining in a module) ####

      wm.dwm.enable = true;
      shell.xsession.sun.enable = true;

      ## These is for my keyboard configuration. I don't recommend it, hehe.
      # shell.xsession.mykeys.enable = true;
      shell.bash.enable = true;
      shell.st.enable = true;
      shell.direnv.enable = true;
      shell.my-scripts.enable = true;

      core.non-nixos.enable = true; # declared in ../core/

      ## I recommend changing removing my weird key configurations
      ## for these programs. TODO
      # editors.neovim.enable = true;
      # editors.vim.enable = true;
      # editors.vscode.enable = true;
      # browsers.qutebrowser.enable = true;

      browsers.firefox.enable = true;

      # Buggy for me
      # services.syncthing.enable = true;

      dev.python.enable = true;
    };

    #### Option 2: ADD PACKAGE NAMES HERE (If you don't want personal configuration) ####
    home.packages = with pkgs; [
      dropbox
      # gcc
      zlib
      zoom-us
    ];

    # Enable, nix-shell replacement for project dependency management
    services.lorri.enable = true;

    home.username = builtins.getEnv "USER";
    home.homeDirectory = builtins.getEnv "HOME";
    home.stateVersion = "20.09";
    home.sessionVariables = {
      LOCALE_ARCHIVE = "${pkgs.glibcLocales}/lib/locale/locale-archive";
    };
  };
}
