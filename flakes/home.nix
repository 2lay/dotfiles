{ lib, pkgs, config, ... }:
with lib;
{
    options.home = {
        hm = mkOption {
            type = types.str;
            default = "/home/ellie/home-manager";
        };
    };

    config = {
        home = {
            packages = with pkgs; [
                hello
                starship
            ];
            username = "ellie";
            homeDirectory = "/home/ellie";
            stateVersion = "23.11";
            hm = "/home/ellie/home-manager";
        };
        programs.bash = {
            enable = true;
            initExtra = ''
                source ${config.home.hm}/config/bash
            '';
        };
        programs.starship = {
            enable = true;
            settings = {};
        };
    };
}
