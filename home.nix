{ config, pkgs, lib, ... }:  # <-- Añadimos "lib" aquí

{
  # 🎯 Required by Home Manager
  home.stateVersion = "23.11";

  # 📦 Global packages
  home.packages = with pkgs; [
    lsd
    fzf
    neovim
    tmux
    ripgrep
    fd
    nodejs
    python3
    nerd-fonts.fira-code
    zsh
    lazygit
  ];

  # 🐚 Zsh configuration
  programs.zsh = {
    enable = true;
    enableCompletion = true;

    # ✨ Built-in plugins
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    # 🛠️ Manual extra initialization
    initExtra = ''
      # Stub missing ZLE widgets
      zle -N insert-unambiguous-or-complete true
      zle -N menu-search              true
      zle -N recent-paths             true

      # Source syntax highlighter at the very end
      source ${pkgs.zsh-syntax-highlighting}/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    '';

    # 📦 External plugins loaded by Home Manager
    plugins = [
      {
        name = "zsh-autocomplete";
        src = pkgs.fetchFromGitHub {
          owner = "marlonrichert";
          repo  = "zsh-autocomplete";
          rev   = "762afacbf227ecd173e899d10a28a478b4c84a3f";
          sha256 = "1357hygrjwj5vd4cjdvxzrx967f1d2dbqm2rskbz5z1q6jri1hm3";
        };
      }
      {
        name = "powerlevel10k";
        src  = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
      {
        name = "powerlevel10k-config";
        src  = ./p10k;
        file = "p10k.zsh";
      }
    ];

    # 📝 Aliases and history
    shellAliases = {
      vim = "nvim";
      f   = "fzf";
      gs  = "git status";
      ll  = "ls -alh";
      ls  = "lsd";
    };
    history.size = 10000;
  };

  # 🛠️ Environment variables
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # 📄 Dotfiles
  home.file.".tmux.conf".source = ./tmux.conf;
}
