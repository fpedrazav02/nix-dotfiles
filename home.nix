{ config, pkgs, ... }:

{
  home.stateVersion = "23.11";

  # 📦 Global packages
  home.packages = with pkgs; [
    fzf
    neovim
    tmux
    ripgrep
    fd
    nodejs
    python3
    nerd-fonts.fira-code
  ];

  # 🐚 Zsh configuration
  programs.zsh = {
    enable = true;
    ohMyZsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git"
        "fzf"
        "docker"
        "colored-man-pages"
        "history-substring-search"
      ];
    };
  };

  # ⚡ Shell aliases
  programs.zsh.shellAliases = {
    vim = "nvim";
    f = "fzf";
  };

  # 🛠️ Environment variables
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # 📄 Dotfiles
  home.file.".zshrc".source = ./zshrc;
  home.file.".tmux.conf".source = ./tmux.conf;
}
