{ config, lib, pkgs, ... }:

with lib;

let cfg = config.customizeable.shell.xsession;

in {
  options = {
    customizeable.shell.xsession = {
      sun.enable = mkEnableOption "Enable my personal xsession";
      mykeys.enable = mkEnableOption "Enable my personal keys";
    };
  };

  # mkMerge concats the initExtra's in order
  config = mkMerge [
    (mkIf cfg.sun.enable {
      xsession.enable = true;
      xsession.initExtra = builtins.readFile ./sun/.xsession;
    })
    (mkIf cfg.mykeys.enable {
      xsession.initExtra = builtins.readFile ./mykeys.sh;
    })
    (mkIf config.customizeable.wm.dwm.enable {
      # this is how home-manager calls dwm, as opposed to 'exec dwm'
      # But how do I get rid of these ~'s?
      xsession.windowManager.command = "~/.nix-profile/bin/dwm";
      xsession.initExtra = ''
        bash ~/nix-config/modules/shell/xsession/dwm_status.sh &
      '';
    })
    # (mkIf cfg.sun.enable {

    # })
  ];
}
