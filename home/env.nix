{ config, pkgs, ... }:

{
  home.sessionVariables = {
    EDITOR = "hx";
    SHELL = "${pkgs.zsh}/bin/zsh";
  };

  home.sessionPath = [
    "${config.home.homeDirectory}/.bin"
    "${config.home.homeDirectory}/.local/bin"
  ];
}
