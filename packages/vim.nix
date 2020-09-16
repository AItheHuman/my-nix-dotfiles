{ config, lib, pkgs, ... }:

{

  programs.vim = {
    enable = true;
    plugins = [ pkgs.vimPlugins.easymotion ];
    settings = { background = "dark"; };
    extraConfig = "\n    ";
  };
}
