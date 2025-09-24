{ lib, config, ... }:

with lib;

let
  cfg = config.zfs;
in {
  options.zfs = mkOption {
    type = types.attrsOf types.anything;
    default = {};
  };

  config = {
    boot.zfs = removeAttrs cfg [ "service" ];
    services.zfs = cfg.service or {};
  };
}
