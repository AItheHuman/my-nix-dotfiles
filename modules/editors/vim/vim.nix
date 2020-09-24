{ config, lib, pkgs, ... }:

with lib;

let cfg = config.customizeable.editors.vim;

in {
  options = {
    customizeable.editors.vim = { enable = mkEnableOption "Enable vim"; };
  };
  config = mkIf cfg.enable {
    programs.vim = {
      enable = true;
      plugins = [ pkgs.vimPlugins.easymotion ];
      settings = { background = "dark"; };
    };
    home.file.".vimrc".source = ./.vimrc;
  };
}
