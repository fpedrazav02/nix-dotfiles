{ pkgs, ... }:

{
  home.packages = with pkgs; [
    #EDITOR
    helix
    lazygit
    yazi

    # TERMINAL PKGS
    fzf
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

    # LSP
    basedpyright
    typescript-language-server
    nixd
    nil
  ];
}
