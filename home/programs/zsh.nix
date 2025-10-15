{ ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls -l";
      y = "yazi";
      z = "zellij";
    };
    history.size = 10000;
  };
}
