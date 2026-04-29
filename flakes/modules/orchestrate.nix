# Example 1

{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs, ... }:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
    in {
      nixosConfigurations = {
        vm1 = lib.nixosSystem {
          inherit system;
          modules = [ ./vm1/configuration.nix ];
        };
        vm2 = lib.nixosSystem {
          inherit system;
          modules = [ ./vm2/configuration.nix ];
        };
      };
    };
}

# Example 2

{
  description = "NixOS configurations for multiple hosts";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }:
  let
    system = "x86_64-linux";
  in
  {
    nixosConfigurations = {
      host1 = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          {
            networking = {
              hostName = "host1";
              ipAddress = "192.168.1.10";  # Set the IP address for host1
            };
          }
        ];
      };

      host2 = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          {
            networking = {
              hostName = "host2";
              ipAddress = "192.168.1.20";  # Set the IP address for host2
            };
          }
        ];
      };
    };
  };
}
