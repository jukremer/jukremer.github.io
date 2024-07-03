{
  description = "Hugo website";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.treefmt.url = "github:numtide/treefmt-nix";

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
          program =
            (pkgs.writeShellScript "build-website" ''
              set -e
              ${pkgs.hugo}/bin/hugo --minify
            '').outPath;
        };

        test = {
          type = "app";
          program =
            (pkgs.writeShellScript "test-website" ''
              set -e
              ${pkgs.hugo}/bin/hugo --environment="development"
            '').outPath;
        };

        server = {
          type = "app";
          program =
            (pkgs.writeShellScript "serve-website" ''
              set -e
              ${pkgs.hugo}/bin/hugo server
            '').outPath;
        };
      });
    };
}
