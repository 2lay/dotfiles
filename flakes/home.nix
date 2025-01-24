{ lib, pkgs, config, ... }: {
  options.home = {
    hm = lib.mkOption {
      type = lib.types.str;
      default = "/home/ellie/home-manager";
    };
  };

  config = {
    home = {
      username = "ellie";
      homeDirectory = "/home/ellie";
      stateVersion = "23.11";
      hm = "/home/ellie/home-manager";
    };

    imports = [
      ./programs/bash.nix
      ./programs/starship.nix
    ];
  };
}
