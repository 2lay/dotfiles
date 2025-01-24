{ lib, pkgs, config, ... }: {
  home = {
    username = "ellie";
    homeDirectory = "/home/ellie";
    stateVersion = "23.11";
  };

  imports = [
    ./programs/starship.nix
    ./programs/bash.nix
    ./programs/code-cursor.nix
    ./programs/spotify.nix
    ./programs/legcord.nix
    ./programs/prismlauncher.nix
    ./programs/hyfetch.nix
  ];
}
