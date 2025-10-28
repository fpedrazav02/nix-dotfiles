{ pkgs, ... }:

{
  programs.bash = {
    enable = true;

    bashrcExtra = ''
      alias zsh=${pkgs.zsh}/bin/zsh
    '';

    shellAliases = {
      ll = "ls -l";
      y = "yazi";
      z = "zellij";
      za = "zellij attach";
      zs = "zellij -s";
      cat = "bat";
      ls = "lsd";
    };
  };
}
