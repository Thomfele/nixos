
{ pkgs, ... }:

  let
    service = "flatpak";
  in

{

  services.${service}.enable = true;

}

  # flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
