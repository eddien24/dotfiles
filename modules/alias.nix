{pkgs, ...}: {
  environment.shellAliases = {
    c = "clear";
    e = "exit";
    cp = "cp -i";
    mv = "mv -i";
    n = "nvim";
    ls = "eza --color=always --git --no-filesize --no-user --no-time --icons=always --long --no-permissions";
    la = "eza -lah --git --icons=always --color=always";
    tree = "eza --tree";
    rm = "rmtrash";
    htop = "btop";
    cat = "bat";
    less = "bat";
    diff = "batdiff";
    man = "batman";
    grep = "batgrep -i";
    icat = "kitten icat";
    s = "kitten ssh";
  };
}
