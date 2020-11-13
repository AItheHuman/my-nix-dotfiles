{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.customizeable.editors.vscode;
  extensions = (with pkgs.vscode-extensions; [
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

  ]) ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [{
    # I use this to select shell.nix for Python env management
    name = "nix-env-selector";
    publisher = "arrterian";
    version = "0.1.2";
    sha256 = "1n5ilw1k29km9b0yzfd32m8gvwa2xhh6156d4dys6l8sbfpp2cv9";
  }
  # {
  #   name = "go";
  #   publisher = "golang";
  #   version = "0.15.2";
  #   sha256 = "0whd0a97fd9l1rzw93r1ijr2kzmasvals9rrp5lk1j9iybxv4mf2";
  # }
  # {
  #   name = "color-highlight";
  #   publisher = "naumovs";
  #   version = "2.3.0";
  #   sha256 = "1syzf43ws343z911fnhrlbzbx70gdn930q67yqkf6g0mj8lf2za2";
  # }
  # {
  #   name = "gitlens";
  #   publisher = "eamodio";
  #   version = "10.2.2";
  #   sha256 = "00fp6pz9jqcr6j6zwr2wpvqazh1ssa48jnk1282gnj5k560vh8mb";
  # }
  # {
  #   name = "better-toml";
  #   publisher = "bungcip";
  #   version = "0.3.2";
  #   sha256 = "08lhzhrn6p0xwi0hcyp6lj9bvpfj87vr99klzsiy8ji7621dzql3";
  # }
    ];
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
        extensions = extensions;
      };
    })
    # if Vim is enabled, setup my personal controls
    (mkIf config.customizeable.editors.vim.enable {
      # enable my vim-like controls
      programs.vscode = {
        userSettings = (import ./settings.nix { });
        keybindings = (import ./keybindings.nix { });
      };
    })
    # (mkIf cfg.sun.enable {
    # })
  ];
}
