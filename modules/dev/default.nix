{ config, lib, pkgs, ... }:

{
  imports = [ ./python/python.nix ./cpp/cpp.nix ];
}
