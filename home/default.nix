{
  config,
  pkgs,
  lib,
  ...
}:

{
  imports = [
    ./programs/zsh.nix
    ./programs/bash.nix
    ./programs/zellij.nix
    ./programs/starship.nix
    ./packages.nix
    ./env.nix
  ];

  home.stateVersion = "25.05";
}
