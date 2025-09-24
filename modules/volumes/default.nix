{ lib, config, ... }:

with lib;

let
  cfg = config.volumes;
in {
  options.volumes = mkOption {
    type = types.attrsOf types.anything;
    default = {};
  };

  config = {
    fileSystems = cfg.fileSystems;
    swapDevices = mapAttrsToList (_: v: v) (cfg.swapDevices or {});
  };
}
