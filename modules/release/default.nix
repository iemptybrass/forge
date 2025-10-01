{
  decrementRelease = release:
    let
      match = builtins.match ''([0-9]+)\.([0-9]+)'' release;
    in
      if match == null then
        release
      else
        let
          major = builtins.fromJSON (builtins.elemAt match 0);
          minor = builtins.elemAt match 1;
        in
          "${builtins.toString (major - 1)}.${minor}";
}
