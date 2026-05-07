
{ lib, ... }:

let
  cfg = lib.mkOption {
    type = lib.types.str;
    default = "guest";
    description = "guest";
  };
in

{
  options.users.special = cfg;
}
