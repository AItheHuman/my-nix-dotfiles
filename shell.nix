let

  sources = import ./nix/sources.nix;

  nixpkgs = sources."nixpkgs-unstable";

  pkgs = import nixpkgs { };

in pkgs.mkShell rec {

  name = "home-manager-shell";

  buildInputs = with pkgs; [
    niv # add niv, which handles dependencies per Nix project.
    # Allow the use of home-manager via nix-shell,
    # even if not installed Ad-hoc with nix-env.
    (import sources.home-manager { inherit pkgs; }).home-manager
  ];

  shellHook = ''
    export NIX_PATH="nixpkgs=${nixpkgs}:home-manager=${sources."home-manager"}"
    export HOME_MANAGER_CONFIG="./home.nix"
  '';

}
