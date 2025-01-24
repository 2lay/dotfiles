{ config, ... }: {
  programs.bash = {
    enable = true;
    initExtra = ''
      source ${config.home.homeDirectory}/home-manager/config/bash
    '';
  };
}
