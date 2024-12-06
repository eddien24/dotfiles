{pkgs, ...}: {
  home.packages = with pkgs; [
    gcc # For treesitter
    rustup # For `cargo new`
    python313
  ];
}
