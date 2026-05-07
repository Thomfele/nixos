
{ pkgs, config, ... }:

{

  users.groups.${config.users.admin} = {
    name = "${config.users.admin}";
  };

  users.users.${config.users.admin} = {
    name = "${config.users.admin}";
    group = "${config.users.admin}";
    isNormalUser = true;
    description = "${config.users.admin}";
    initialPassword = "passwd";
    home  = "/home/${config.users.admin}";
    createHome = true;
    shell = "/run/current-system/sw/bin/bash";
    packages = with pkgs; [
      angryipscanner
      rpiboot
      rpi-imager
      virt-manager
    ];
  };

  users.groups.${config.users.special} = {
    name = "${config.users.special}";
  };

  users.users.${config.users.special} = {
    name = "${config.users.special}";
    group = "${config.users.special}";
    isNormalUser = true;
    description = "${config.users.special}";
    initialPassword = "passwd";
    home  = "/home/${config.users.special}";
    createHome = true;
    shell = "/run/current-system/sw/bin/bash";
    #packages = with pkgs; [
    # some package
    #];
  };

  # Allow the user to log in as root with a password.
  users.users.root.initialPassword = "passwd"; # Change after deploy

  # Don't require sudo/root to `reboot` or `poweroff`.
  #security.polkit.enable = true;

}
