{
  allowUnfree = true;

  packageOverrides = pkgs:
    with pkgs; {
      # this can be installed like nix-env -iA nixpkgs.myPackages
      # I also dont think it can be placed in home.nix
      myPackages = pkgs.buildEnv {
        name = "my-packages";
        paths = [ jq silver-searcher ];
        # this defines the folders that are included in the environment of myPackages
        pathsToLink = [ "/share" "/bin" ];
      };
    };

}
