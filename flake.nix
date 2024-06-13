{
  description = "System Configuration for NixOS laptop & WSL";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
    nixos-wsl.url = "github:nix-community/NixOS-WSL/main";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    nixos-wsl,
    ...
  } @ inputs: {
    nixosConfigurations = {
      eddie-gbook = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/gbook
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.eddie = import ./home/gbook.nix;
          }
        ];
      };

      wsl = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/wsl
          nixos-wsl.nixosModules.default
          {
            wsl = {
              enable = true;
              defaultUser = "eddie";
              wslConf.network.hostname = "wsl";
            };
            system.stateVersion = "23.11";
          }

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.eddie = import ./home/wsl.nix;
          }
        ];
      };
    };
  };
}
