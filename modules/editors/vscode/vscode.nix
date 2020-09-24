{ config, lib, pkgs, ... }:

with lib;

let cfg = config.customizeable.editors.vscode;

in {
  options = {
    customizeable.editors.vscode = {
      enable = mkEnableOption "Enable Visual Studio Code";
    };
  };

  config = mkMerge [
    (mkIf cfg.enable {
      programs.vscode = {
        enable = true;
        extensions = with pkgs.vscode-extensions; [
          ## See https://github.com/NixOS/nixpkgs/tree/11c36334bfebed78ee32b8de333938c57a703f15/pkgs/misc/vscode-extensions
          # "firefox-devtools.vscode-firefox-debug"
          # "editorconfig.editorconfig"
          # "pgourlain.erlang"
          # "redhat.java"
          # "arrterian.nix-env-selector"
          bbenoist.Nix
          # redhat.vscode-yaml
          # ms-vscode-remote.remote-ssh
          ms-python.python
          # ms-kubernetes-tools.vscode-kubernetes-tools
          vscodevim.vim
          llvm-org.lldb-vscode
          ms-vscode.cpptools
          # ms-vscode.cpptools
        ];
      };
    })
    (mkIf config.customizeable.editors.vim.enable {
      # enable my vim-like controls
      programs.vscode.userSettings = (import ./settings.nix { });

    })
    # (mkIf cfg.sun.enable {
    # })
  ];
}
