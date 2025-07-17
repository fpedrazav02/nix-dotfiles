{
  description = "Fpedrazav02 Home Manager config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }:
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
            }
          ];
        };
      };
    };
}
