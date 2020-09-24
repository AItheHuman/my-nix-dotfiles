{ config, pkgs, lib, ... }:

with lib;

let cfg = config.customizeable.services.syncthing;

in {
  options = {
    customizeable.services.syncthing = {
      enable = mkEnableOption "Enable syncthing";
    };
  };

  config = mkIf cfg.enable {
    home.packages = [ pkgs.gtk3 pkgs.gobject-introspection pkgs.glibc ];
    # services.networking.syncthing = {
    #   enable = true;
    # declarative = {
    #   devices = {
    #     earth.id =
    #       "5D46IPO-ZIYSHH5-DSAZT5D-T2M77GY-PD6WNSB-S27R4XO-NUN2M5T-WL44YQA";
    #   };
    # };
  };

}
