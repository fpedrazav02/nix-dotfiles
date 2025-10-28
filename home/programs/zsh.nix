{ ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;

    autosuggestion = {
      enable = true;
      strategy = [
        "match_prev_cmd"
        "completion"
        "history"
      ];
    };

    shellAliases = {
      ll = "ls -l";
      y = "yazi";
      z = "zellij";
      za = "zellij attach";
      cat = "bat";
      ls = "lsd";
    };
    history.size = 10000;
  };
}
