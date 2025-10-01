{
  release =
    let
      parts = builtins.split "\\." nixpkgs.lib.trivial.release;
    in
      if builtins.length parts < 2 then
        nixpkgs.lib.trivial.release
      else
        let
          major = builtins.fromJSON (builtins.elemAt parts 0);
          minor = (builtins.elemAt parts 1);
        in
          "${builtins.toString (major - 1)}.${minor}";
}
