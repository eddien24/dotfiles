{
  description = "System Configuration for NixOS laptop & WSL";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-26.05";
    nixpkgs-zotero.url = "github:NixOS/nixpkgs/b2433d29596bc700a008ba0c70aa1659e7595b0c";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
    nixos-wsl.url = "github:nix-community/NixOS-WSL/main";
    tree-sitter = {
      url = "github:tree-sitter/tree-sitter/v0.26.8";
    };
  };

  outputs = inputs: let
    system = "x86_64-linux";
    treeSitterOverlay = final: prev: {
      tree-sitter-latest = inputs.tree-sitter.packages.${prev.system}.default;
    };
    zoteroOverlay = final: prev: {
      zotero =
        (import inputs.nixpkgs-zotero {
          inherit system;
          config.allowUnfree = true;
        }).zotero;
    };
    pkgs = import inputs.nixpkgs {
      inherit system;
      overlays = [treeSitterOverlay zoteroOverlay];
      config.allowUnfree = true;
    };
  in {
    nixosConfigurations = {
      eddie-gbook = inputs.nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {inherit inputs pkgs;};
        modules = [
          ./hosts/gbook
          {nixpkgs.overlays = [treeSitterOverlay zoteroOverlay];}
          inputs.home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.eddie = import ./home/gbook.nix;
          }
        ];
      };

      wsl = inputs.nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/wsl
          inputs.nixos-wsl.nixosModules.default
          {
            wsl = {
              enable = true;
              defaultUser = "eddie";
              wslConf.network.hostname = "wsl";
            };
            system.stateVersion = "23.11";
          }

          inputs.home-manager.nixosModules.home-manager
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
