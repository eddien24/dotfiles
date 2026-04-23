{pkgs, ...}: {
  home.packages = with pkgs; [
    neovim
    unzip
    prettier
    texlab
    perl5Packages.LatexIndent
    tree-sitter-latest
  ];
  home.sessionVariables.EDITOR = "nvim";
}
