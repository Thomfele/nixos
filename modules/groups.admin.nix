
{ config, lib, ... }:

{
  users.users.${config.users.admin}.extraGroups = [ "wheel" "networkmanager" ];
}

