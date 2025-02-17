{ pkgs, ... }:
{
  projectRootFile = "flake.nix";
  programs = {
    nixfmt.enable = true;
    gofmt.enable = true;
    taplo.enable = true;
    prettier = {
      enable = true;
      settings = {
        plugins = [
          "${pkgs.prettier-plugin-go-template}/lib/node_modules/prettier-plugin-go-template/lib/index.js"
        ];
        overrides = [
          {
            files = [ "*.html" ];
            options.parser = "go-template";
          }
        ];
      };
    };
  };
  settings.global.excludes = [
    "archetypes/**"
    "public/**"
    "static/**"
    ".envrc"
    "*.webp"
    "*.xml"
    "*.svg"
  ];
}
