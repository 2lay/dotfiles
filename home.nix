{ lib, pkgs, ... }:
{
    home = {
        packages = with pkgs; [
            hello
        ];

        username = "ellie";
        homeDirectory = "/home/ellie";

        # IMPORTANT: Do not change this after the first build
        stateVersion = "23.11";
    };
}
