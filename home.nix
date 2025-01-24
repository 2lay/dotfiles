{ lib, pkgs, config, ... }:
{
    home = {
        packages = with pkgs; [
            hello
        ];
        username = "ellie";
        homeDirectory = "/home/ellie";
        stateVersion = "23.11";
    };
    programs.bash = {
        enable = true;
        initExtra = builtins.readFile ./config/bash/bashrc;
    };
    programs.starship = {
        enable = true;
        settings = {};
    };
}
