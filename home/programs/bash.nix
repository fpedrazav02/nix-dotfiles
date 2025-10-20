{ pkgs, ... }:

{
  programs.bash = {
    enable = true;

    bashrcExtra = ''
      alias zsh=${pkgs.zsh}/bin/zsh
    '';
  };
}
