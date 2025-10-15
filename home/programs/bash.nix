{ pkgs, ... }:

{
  programs.bash = {
    enable = true;

    bashrcExtra = ''
      if [ -x "${pkgs.zsh}/bin/zsh" ]; then
        exec ${pkgs.zsh}/bin/zsh
      fi
    '';
  };
}
