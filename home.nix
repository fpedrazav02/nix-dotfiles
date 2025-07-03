{ config, pkgs, ... }:

{
  # 🎯 Required by Home Manager, defines the minimal state version
  home.stateVersion = "23.11";

  # 📦 Global packages to install for the user
  home.packages = with pkgs; [
    fzf                            # Fuzzy finder
    neovim                         # Modern Vim
    tmux                           # Terminal multiplexer
    ripgrep                        # Fast grep alternative
    fd                             # User-friendly find
    nodejs                         # JavaScript runtime
    python3                        # Python 3 interpreter
    nerd-fonts.fira-code           # FiraCode Nerd Font for Powerlevel10k
    zsh                            # Z shell
    zsh-autosuggestions            # Suggest commands as you type
    zsh-autocomplete               # Advanced autocompletion
    zsh-syntax-highlighting        # Syntax highlighting for commands
    zsh-powerlevel10k              # Powerlevel10k prompt theme
  ];

  # 🐚 Zsh configuration
  programs.zsh = {
    enable = true;                      # Enable Zsh as shell
    enableCompletion = true;            # Enable Zsh completion system
    autosuggestions.enable = true;      # Enable autosuggestions
    syntaxHighlighting.enable = true;   # Enable syntax highlighting

    # Shell aliases
    shellAliases = {
      vim = "nvim";                     # Use Neovim when typing 'vim'
      f = "fzf";                        # Short alias for fzf
      gs = "git status";                # Git status shortcut
      ll = "ls -alh";                   # Better ls
    };
  };

  # 🛠️ Environment variables
  home.sessionVariables = {
    EDITOR = "nvim";                    # Default editor
  };

  # 📄 Dotfiles configuration
  # This expects that you have the files in the same folder as home.nix
  home.file.".zshrc".source = ./zshrc;
  home.file.".p10k.zsh".source = ./p10k.zsh;

  # 💡 Note:
  # Your .zshrc should include:
  # - Source of Oh My Zsh (if you clone it yourself)
  # - Source of Powerlevel10k theme
  # - Source ~/.p10k.zsh for configuration
}
