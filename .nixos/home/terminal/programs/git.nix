{pkgs, ...}: {
  programs.git = {
    enable = true;
    extraConfig = {
      credential.helper = "store";
      init.defaultBranch = "main";
    };
    userEmail = "edward_nguyen@brown.edu";
    userName = "Eddie Nguyen";
  };
}
