{
    description = "Ellie's Home Manager config";

    inputs =  {
        nixpgs.url = "nixpks/nixos-24.11-pre";

        home-manager = {
            url = "github.com:nix-community/home-manager/release-24.11-pre";
            inputs.nixpgs.follows = "nixpkgs";
        };
    };

    outputs = { nixpkgs, home-manager, ... }:
        let
            lib = nixpkgs.lib;
            system = "x86_64-linux";
            pkgs = import nikpkgs { inherit system; };
        in {
            homeConfigurations = {
                profile = home-manager.lib.homeManagerConfiguration {
                    inherit pkgs;
                    modules = [ ./home.nix ];
                };
            };
        };
}
