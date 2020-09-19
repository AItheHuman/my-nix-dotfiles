#!/usr/bin/env bash
set -euo pipefail

if [[ -L ~/.nix-channels ]]; then
    rm ~/.nix-channels
fi
rm -f ~/.nix-channels.*

CHANNEL_SUFFIX=
NIX_CHANNEL_NAME=nixpkgs

case "${1}" in
    --nixos) NIX_CHANNEL_NAME=nixpkgs ;;
    # --small) CHANNEL_SUFFIX=-small ;;
esac

nix-channel --add https://nixos.org/channels/nixos-20.03${CHANNEL_SUFFIX} ${NIX_CHANNEL_NAME}
nix-channel --add https://nixos.org/channels/nixos-unstable unstable
nix-channel --add https://github.com/rycee/home-manager/archive/release-20.03.tar.gz home-manager

cat ~/.nix-channels
