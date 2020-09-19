{ config, lib, pkgs, ... }:

{
  imports = [ ./st/st.nix ./direnv/direnv.nix ./xsession/xsession.nix ];
}
