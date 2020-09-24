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
    home.packages = with pkgs;
      [
        # chromium
        python38Packages.pyqt5
        ## install
        # python38Packages.pypeg2
        # python38Packages.setuptools
        # python38Packages.jinja2
        # python38Packages.pygments
        # python38Packages.pyyaml
        # python38Packages.attrs
      ];

    programs.qutebrowser = {
      enable = true;
      extraConfig = builtins.readFile ./config.py;
    };
  };
}
