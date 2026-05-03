
{ config, ... }:

  let
    admin = "admin";
    service = "qemu";
  in

{

  users.users.${admin} = {
    isNormalUser = true;
    description = "${admin}";
    group = "users";
    extraGroups = [ "wheel" "networkmanager" "audio" "libvirtd" "podman" ];
    initialPassword = "passwd";
    home  = "/home/${admin}";
    createHome = true;
    shell = "/run/current-system/sw/bin/bash";
    #packages = with pkgs; [
    # some package
    #];
  };

  users.users.${service} = {
    isNormalUser = true;
    description = "${service}";
    group = "users";
    #extraGroups = [ "wheel" "networkmanager" "audio" ];
    createHome = false;
    #packages = with pkgs; [
    # some package
    #];
  };

  # Allow the user to log in as root with a password.
  users.users.root.initialPassword = "passwd";

  # Don't require sudo/root to `reboot` or `poweroff`.
  security.polkit.enable = true;

}
