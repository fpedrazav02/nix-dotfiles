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
      system = "x86_64-linux"; # Cambia si estás en Mac
      pkgs = import nixpkgs { inherit system; };
    in
    {
      homeConfigurations = {
        # Aquí defines tu username
        fpedraza = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;

          modules = [
            ./home.nix
            {
              home.file.".config/nvim".source = nvim-config;
            }
          ];

          username = "fpedraza";
          homeDirectory = "/home/fpedraza";
        };
      };
    };
}
