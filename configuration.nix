
{ ... }:

{

  imports =
    [
      ./hardware-configuration.nix

      ./modules/admin.nix
      ./modules/admin.applications.nix

      ./modules/boot.esp.nix
      ./modules/ssh.disable.nix

      ./modules/ws.hostname.nix
      ./modules/ws.dhcp.nix

      ./modules/system.nix
      ./modules/services.nix

      ./modules/alsa.nix
      ./modules/applications.nix
      ./modules/bluetooth.nix
      ./modules/clamav.nix
      ./modules/firewall.nix
      ./modules/print.nix

      ./modules/packages.nix
      ./modules/flakes.nix
      ./modules/flatpak.nix
      ./modules/gnome.nix
      ./modules/kvm.nix

    ];

}
