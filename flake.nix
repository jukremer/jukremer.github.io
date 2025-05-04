{
  description = "Hugo website";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    treefmt = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      systems,
      treefmt,
      ...
    }:
    let
      eachSystem = f: nixpkgs.lib.genAttrs (import systems) (system: f nixpkgs.legacyPackages.${system});

      treefmtEval = eachSystem (pkgs: treefmt.lib.evalModule pkgs ./treefmt.nix);
    in
    {
      devShells = eachSystem (pkgs: {
        default = pkgs.mkShell {
          name = "Hugo website";
          buildInputs = with pkgs; [
            go
            hugo
          ];
        };
      });

      formatter = eachSystem (pkgs: treefmtEval.${pkgs.system}.config.build.wrapper);

      checks = eachSystem (pkgs: {
        formatting = treefmtEval.${pkgs.system}.config.build.check self;
      });

      apps = eachSystem (pkgs: {
        default = {
          type = "app";
          meta = {
            description = "Build my blog";
            homepage = "https://jankremer.eu";
            license = nixpkgs.lib.licenses.cc0;
          };
          program =
            (pkgs.writeShellScript "build-website" ''
              set -e
              ${pkgs.hugo}/bin/hugo --minify
            '').outPath;
        };
      });
    };
}
