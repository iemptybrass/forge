{

  outputs = {
    self,
    ...
  }: {
  
    nixosModules = {
      default = ./modules;
    };

  };

}
