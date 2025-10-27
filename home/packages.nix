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
    bat
    lsd
    awscli2

    # LANG
    nodejs_20
    nodePackages.aws-cdk
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
    marksman
    markdown-oxide
  ];
}
