{

  outputs = {
    self,
    ...
  }: {
  
    nixosModules = {
      default = ./modules;
      lib = ./modules/release
    };

  };

}
