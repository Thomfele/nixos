# nixos

# FLAKES

Create a remote server on KVM

1) Spin up a minimal NixOS VM change password on nixos user and copy its IP address

2) To seperate Flakes from your Host (inside /etc/nixos) you need to create a separate folder:

- mkdir /etc/nixos/flakes

3) Copy flake.nix and flake.txt (for instructions) into the main flakes-directory

4) Create a new directory "modules" in this directory:

- mkdir /etc/nixos/flakes/modules

5) Copy all module/.nix files into /modules

6) follow example commands on flake.txt, change ip- and username in users.nix

7) Notice

- Adjust your settings in flake.nix
- SSH is turned on by default, also for root
- Default username is 'admin', default password is 'passwd'
