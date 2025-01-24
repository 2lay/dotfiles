{ pkgs, config, ... }: {
  home.packages = [ pkgs.starship ];
  programs.starship.enable = true;
}
