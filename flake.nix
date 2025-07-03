{
  description = "Fpedrazav02 Home Manager config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # Neovim external repo
    nvim-config = {
      url = "github:fpedrazav02/nvim-dotfiles";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, home-manager, nvim-config, ... }:
    let
      system = "x86_64-linux"; # Change for diferent OS
      pkgs = import nixpkgs { inherit system; };
    in
    {
      homeConfigurations = {
        fpedraza = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;

          # Módulos
          modules = [
            ./home.nix
            {
              # Define username and homeDirectory
              home.username = "fpedraza";
              home.homeDirectory = "/home/fpedraza";

              # Neovim external repo
              home.file.".config/nvim".source = nvim-config;
            }
          ];
        };
      };
    };
}
