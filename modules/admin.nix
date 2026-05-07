
{ lib, ... }:

let
  cfg = lib.mkOption {
    type = lib.types.str;
    default = "floris";
    description = "floris";
  };
in

{

  options.users.admin = cfg;

}
