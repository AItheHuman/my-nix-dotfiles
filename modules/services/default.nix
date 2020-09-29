{ config, lib, pkgs, ... }:

{
  imports = [ ./syncthing/syncthing.nix ./gimp/gimp.nix ];
}
