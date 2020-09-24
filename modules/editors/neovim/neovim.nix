{ config, pkgs, lib, ... }:

with lib;

let cfg = config.customizeable.editors.neovim;

in {
  options = {
    customizeable.editors.neovim = { enable = mkEnableOption "Enable Neovim"; };
  };

  config = mkIf cfg.enable {
    home.packages = with pkgs;
      with stdenv.lib;
      [ rnix-lsp ] ++ optionals stdenv.isLinux [ python-language-server ];
    programs.neovim = {
      enable = true;
      configure = { };
      extraConfig = builtins.readFile ./init.vim;
      plugins = with pkgs.vimPlugins; [
        completion-nvim
        fzf-vim
        vim-easymotion
        vim-commentary
        vim-fugitive
        vim-gitgutter
        vim-surround
      ];
    };
  };
}
