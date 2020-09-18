#!/usr/bin/env bash
cd $(dirname $0)
nix-shell --run "home-manager -n switch"   # Tell home-manager build from config files
