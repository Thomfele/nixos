
{ config, lib, ... }:

{
  users.users.${config.users.special}.extraGroups = [ "" ];
}

