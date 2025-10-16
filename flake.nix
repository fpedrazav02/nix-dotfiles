{
  description = "Dynamic Home Manager config (user@system)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    { nixpkgs, home-manager, ... }:
    let
      mkHome =
        { username, system }:
        let
          pkgs = import nixpkgs { inherit system; };
          homeDirectory = if pkgs.stdenv.isDarwin then "/Users/${username}" else "/home/${username}";
        in
        home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [
            ./home/default.nix
            {
              home.username = username;
              home.homeDirectory = homeDirectory;
              home.stateVersion = "25.05";
              programs.home-manager.enable = true;
            }
          ];
        };

      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      # Change username
      usernames = [ "fpedraza" ];
    in
    {
      homeConfigurations = builtins.listToAttrs (
        builtins.concatMap (
          system:
          map (username: {
            name = "${username}@${system}";
            value = mkHome { inherit username system; };
          }) usernames
        ) systems
      );
    };
}
