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
      zs = "zellij -s";
      cat = "bat";
      ls = "lsd";
      ff = "aerospace list-windows --all | fzf --bind 'enter:execute-silent(echo {1} | xargs aerospace focus --window-id)+abort'";

    };
    history.size = 10000;
  };
}
