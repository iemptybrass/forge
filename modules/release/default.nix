{ nixpkgs ? null }:
let
  crelease = if nixpkgs == null then null else nixpkgs.lib.trivial.release;
in
{
  release =
    releaseStr:
      let
        r = if releaseStr == null then crelease else releaseStr;
        match = builtins.match ''([0-9]+)\.([0-9]+)'' r;
      in
        if match == null then
          r
        else
          let
            major = builtins.fromJSON (builtins.elemAt match 0);
            minor = builtins.elemAt match 1;
          in
            "${builtins.toString (major - 1)}.${minor}";
}
