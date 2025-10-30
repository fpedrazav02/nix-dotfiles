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
    ./programs/writing
    ./packages.nix
    ./env.nix
  ];

  home.stateVersion = "25.05";
}
