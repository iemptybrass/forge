{

  outputs = {
    self,
    ...
  }: {
        lib = ./modules/release;
    nixosModules = {
      default = ./modules;
    };

  };

}
