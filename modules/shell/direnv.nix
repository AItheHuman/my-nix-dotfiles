{ config, options, lib, pkgs, ... }:

with lib; {
  programs.direnv = {
    enable = true;

  };
}
