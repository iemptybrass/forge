{

  outputs = {
    self,
    ...
  }: {
    lib = import ./modules/release;
    nixosModules = {
      default = ./modules;
    };

  };

}
