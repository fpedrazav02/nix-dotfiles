{ config, pkgs, ... }:

{
  # 🎯 Required by Home Manager, defines the minimal state version
  home.stateVersion = "23.11";

  # 📦 Global packages to install for the user
  home.packages = with pkgs; [
    fzf                # Fuzzy finder
    neovim             # Modern Vim
    tmux               # Terminal multiplexer
    ripgrep            # Fast grep
    fd                 # Friendly find
    nodejs             # JavaScript runtime
    python3            # Python 3 interpreter
    nerd-fonts.fira-code  # FiraCode Nerd Font
    zsh                # Z shell
    lazygit            # Lazygit 
  ];

  # 🐚 Zsh configuration
  programs.zsh = {
    enable = true;              # Enable Zsh
    enableCompletion = true;    # Enable completions

    # ✨ Plugins for better UX
    autosuggestion.enable = true;          # Suggest commands as you type
    syntaxHighlighting.enable = true;      # Highlight command syntax

    plugins = [
      {
        name = "zsh-autocomplete";         # Advanced autocompletion
        src = pkgs.fetchFromGitHub {
          owner = "marlonrichert";
          repo = "zsh-autocomplete";
          rev = "762afacbf227ecd173e899d10a28a478b4c84a3f";
          sha256 = "1357hygrjwj5vd4cjdvxzrx967f1d2dbqm2rskbz5z1q6jri1hm3";
        };
      }
      # Theme plugin
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }

      # Your custom config
      {
        name = "powerlevel10k-config";
        src = ./p10k;
        file = "p10k.zsh";
      }
    ];

    # 📝 Shell aliases
    shellAliases = {
      vim = "nvim";
      f = "fzf";
      gs = "git status";
      ll = "ls -alh";
    };

    # ⏳ History settings
    history = {
      size = 10000;
    };
  };

  # 🛠️ Environment variables
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # 📄 Dotfile: tmux.conf in this repository
  home.file.".tmux.conf".source = ./tmux.conf;
}
