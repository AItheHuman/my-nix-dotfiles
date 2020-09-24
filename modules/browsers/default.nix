{ config, lib, pkgs, ... }:

{
  imports = [ ./qutebrowser/qutebrowser.nix ./firefox/firefox.nix ];
}
