{ config, ... }:
{
    programs.bash = {
        enable = true;
        initExtra = ''
            source ${config.home.hm}/config/bash
        '';
    };
}
