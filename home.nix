{
  config,
  pkgs,
  lib,
  ...
}:

let
  inherit (builtins) filter map toString;
  inherit (lib.filesystem) listFilesRecursive;
  inherit (lib.strings) hasSuffix;
in

{
  imports = filter (hasSuffix ".nix") (
    map toString (filter (p: p != ./default.nix) (listFilesRecursive ./modules))
  );

  home = {
    username = "fr";
    homeDirectory = "/home/fr";
    stateVersion = "25.11";
    file = { };
    sessionVariables = { };
  };

  programs.home-manager.enable = true;
}
