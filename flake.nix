{

  outputs = {
    self,
    ...
  }: {
    decrement = import ./modules/release;
    nixosModules = {
      default = ./modules;
    };

  };

}
