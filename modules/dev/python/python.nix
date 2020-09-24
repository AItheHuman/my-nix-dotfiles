{ config, lib, pkgs, ... }:

with lib;

let cfg = config.customizeable.dev.python;

in {
  options = {
    customizeable.dev.python = { enable = mkEnableOption "Enable python"; };
  };

  config = mkIf cfg.enable {
    home.packages = with pkgs; [
      python38
      python38Packages.pip
      python38Packages.ipython
      python38Packages.black
      python38Packages.setuptools
      python38Packages.pylint
      python38Packages.poetry
      # emacs dependencies
      python38Packages.pyflakes
      python38Packages.isort
      python38Packages.nose
      python38Packages.pytest
      python38Packages.flake8
    ];
  };
}
