{

  outputs = {
    self,
    ...
  }: {
    self = import ./modules/release;
    nixosModules = {
      default = ./modules;
    };

  };

}
