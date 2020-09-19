{ config, lib, pkgs, ... }:

{
  imports = [ ./browsers ./core ./dev ./editors ./services ./shell ./wm ];
}
