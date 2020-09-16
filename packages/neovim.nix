{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs;
    with stdenv.lib;
    [ rnix-lsp ] ++ optionals stdenv.isLinux [ python-language-server ];
  programs.neovim = {
    enable = true;
    configure = { };
    extraConfig = builtins.readFile ../configs/neovim/init.vim;
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
}
