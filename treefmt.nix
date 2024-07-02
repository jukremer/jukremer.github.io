{
  projectRootFile = "flake.nix";
  programs = {
    nixfmt.enable = true;
    gofmt.enable = true;
    taplo.enable = true;
    prettier.enable = true;
  };
}
