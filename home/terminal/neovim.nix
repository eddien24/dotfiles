{pkgs, ...}: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    extraPackages = with pkgs; [
      gcc
      unzip
      lua-language-server
      nodePackages.prettier
      texlab
      perl538Packages.LatexIndent
    ];
    plugins = with pkgs.vimPlugins; [
      nvim-treesitter.withAllGrammars
    ];
  };
}
