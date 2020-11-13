{ config, lib, pkgs, ... }:

with lib;

let cfg = config.customizeable.shell.my-scripts;
in {
  options = {
    customizeable.shell.my-scripts = {
      enable = mkEnableOption "Enable my scripts";
    };
  };

  config = mkIf cfg.enable {
    home.file."my-scripts/my-keys-toggle.sh".source =
      ./scripts/my-keys-toggle.sh;
    home.file."my-scripts/my-keys-toggle.sh".executable = null;
    home.file."my-scripts/wifi-connect.sh".source = ./scripts/wifi-connect.sh;
    home.file."my-scripts/wifi-find.sh".source = ./scripts/wifi-find.sh;
    home.file."my-scripts/wifi-delete.sh".source = ./scripts/wifi-delete.sh;
    # home.file.".config/direnv/layout-poetry.sh".source = ./layout-poetry.sh;
    # xdg.configFile."/my-scripts/layout_poetry.sh".source =
    #   ../../modules/shell/xsession/layout_poetry.sh;
  };
}
