{pkgs, ...}: {
  environment.shellAliases = {
    c = "clear";
    e = "exit";
    cp = "cp -i";
    mv = "mv -i";
    s = "sudo !!";
    n = "nvim";
    less = "less -IFR";
    grep = "rg -i";
    ls = "eza --color=always --git --no-filesize --no-user --no-time --icons=always --long --no-permissions";
    la = "eza -lah --git --no-user --icons=always --color=always";
    tree = "eza --tree";
    rm = "rmtrash";
    htop = "btop";
  };
}
