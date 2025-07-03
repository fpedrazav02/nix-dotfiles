{ config, pkgs, ... }:

{
  home.stateVersion = "23.11";

  # Global packages
  home.packages = with pkgs; [
    fzf
    neovim
    tmux
    ripgrep
    fd
    nodejs
    python3
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];


  #ZSH CONFIG
  programs.zsh = {
    enable = true;
    ohMyZsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git"
        "zsh-autosuggestions"
        "fast-syntax-highlighting"
        "zsh-autocomplete"
        "fzf"
        "docker"
        "colored-man-pages"
        "history-substring-search"
      ];
    };
  };

  # Shell aliases
  shellAliases = {
      vim = "nvim";
      f = "fzf";
    };


  # ENV variables
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  home.file.".zshrc".source = ./zshrc;
  home.file.".tmux.conf".source = ./tmux.conf;
}
