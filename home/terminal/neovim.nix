{pkgs, ...}: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    extraPackages = with pkgs; [
      gcc
      unzip
      lua-language-server
      prettier
      texlab
      perl5Packages.LatexIndent
    ];
  };

  home.packages = with pkgs; [
    tree-sitter-latest
  ];
}
