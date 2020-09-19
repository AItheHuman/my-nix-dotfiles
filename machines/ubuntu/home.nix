# For module structure & variables like 'config' or 'options', see
# https://nixos.org/manual/nixos/stable/index.html#sec-option-declarations
# 'imports' holds paths of other modules
# 'options' holds option declarations like "https://nixos.wiki/wiki/Declaration and https://nixos.org/manual/nixos/stable/index.html#sec-option-declarations
# 'config' holds option definitions like "services.httpd.enable = true;"
# The following line turns this home.nix module into a function, with the following variables in
# the attr set.
{ config, lib, pkgs, ... }@args:
with lib; # enables stuff like mkEnableOption

let sources = import ../../nix/sources.nix;

in {
  imports =
    [ # this uses niv's sources, as well as ones installed by home-manager normally.
      # if removed from this list and/or nix-env, the package will be 'removed.' aka,
      # the symlink will be removed.

      # even though they're imported, they're not implemented until their customizeable
      # enable option is enabled
      ../../modules

    ];

  # The following is config.custom.{variables here}
  # custom = {
  #   base.non-nixos.enable = true; # declared in ../core/
  # };

  config = {
    # to use options declared in other modules, you must import those modules
    customizeable = {

      core.non-nixos.enable = true; # declared in ../core/

      wm.dwm.enable = true;

      shell.st.enable = true;
      shell.direnv.enable = true;

      browsers.qutebrowser.enable = true;

      dev.python.enable = true;
    };
    home.username = builtins.getEnv "USER";
    home.homeDirectory = builtins.getEnv "HOME";
    home.stateVersion = "20.09";
    home.sessionVariables = {
      LOCALE_ARCHIVE = "${pkgs.glibcLocales}/lib/locale/locale-archive";
    };
    # Thanks to: https://github.com/bernerdschaefer/dotfiles/blob/f5d864bb77fdedd05db4df9544aa9de4b8e0c776/nixos/configuration.nix#L59/
    nixpkgs.config.packageOverrides = pkgs: {
      dwm = pkgs.dwm.override {
        patches = [
          ../../modules/wm/dwm/6.2/pertag.diff
          ../../modules/wm/dwm/6.2/noborder.diff
          ../../modules/wm/dwm/6.2/main-and-volume.diff
          ../../modules/wm/dwm/6.2/clientindicators-personal.diff
        ];
      };
      st = pkgs.st.override {
        patches = [
          ../../modules/shell/st/0.8.4/scrollback.diff
          ../../modules/shell/st/0.8.4/anysize.diff
          ../../modules/shell/st/0.8.4/colors-and-font.diff
        ];
      };
    };
    # home.packages = with pkgs; [ dwm st dmenu ];
  };
}
