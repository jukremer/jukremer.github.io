{
  programs = {
    nixfmt.enable = true;
    taplo.enable = true;
    djlint.enable = true;
  };
  settings.global.excludes = [
    "public/**"
    "static/**"
    ".envrc"
    "*.webp"
    "*.xml"
    "*.svg"
  ];
}
