{
  description = "Fpedrazav02 Home Manager config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      mkHome =
        { system, username }:
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
            }
          ];
        };
    in
    {
      homeConfigurations = builtins.listToAttrs (
        builtins.concatMap (system:
          map (username: {
            name = "${username}@${system}";
            value = mkHome { inherit system username; };
          }) [ (builtins.getEnv "USER") ]
        ) systems
      );
    };
}
