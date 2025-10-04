{ config, pkgs, lib, ... }:

{
  home.stateVersion = "23.11";

  programs.zsh = {
    enable = true;
    enableCompletion = true;

    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    initContent = ''
      _noop() { :; }
      zle -N insert-unambiguous-or-complete _noop
      zle -N menu-search _noop
      zle -N recent-paths _noop
	  export TERM=xterm-256color
    '';

    loginExtra = ''
      source ${config.home.profileDirectory}/etc/profile.d/hm-session-vars.sh
    '';

    plugins = [
      {
        name = "zsh-autocomplete";
        src = pkgs.fetchFromGitHub {
          owner  = "marlonrichert";
          repo   = "zsh-autocomplete";
          rev    = "762afacbf227ecd173e899d10a28a478b4c84a3f";
          sha256 = "1357hygrjwj5vd4cjdvxzrx967f1d2dbqm2rskbz5z1q6jri1hm3";
        };
      }
    ];

    shellAliases = {
      vim = "nvim";
      f   = "fzf";
      gs  = "git status";
      ll  = "ls -alh";
    };

    history.size = 10000;
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
    bashrcExtra = ''
      if command -v infocmp >/dev/null 2>&1; then
        if ! infocmp "$TERM" >/dev/null 2>&1; then
          export TERM=xterm-256color
        fi
      else
        export TERM=xterm-256color
      fi

      if [[ $- == *i* ]]; then
		source ${pkgs.blesh}/share/blesh/ble.sh
      fi
    '';
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
  };

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
  };

  home.packages = with pkgs; [
	#EDITOR
	helix
	lazygit
	yazi
	
    # TERMINAL PKGS
    fzf
    tmux
    ripgrep
    fd
    uv
    nerd-fonts.code-new-roman

	# LANG
    nodejs_20
    python3

    # TOOLING
    black
    isort
    prettier
    stylua

	# LSP
    basedpyright
	marksman
    typescript-language-server
    lua-language-server
	nixd
	nil
  ];

  home.sessionVariables = {
    EDITOR = "hx";
    SHELL  = "${pkgs.zsh}/bin/zsh";
  };

  home.sessionPath = [
    "${config.home.homeDirectory}/.bin"
    "${config.home.homeDirectory}/.local/bin"
  ];

  home.activation.fixZshrc = ''
    sed -i 's/\r$//' "${config.home.homeDirectory}/.zshrc" || true
  '';

  home.file.".tmux.conf".source = ./tmux.conf;
}
