{pkgs, ...}: {
  programs.git = {
    enable = true;
    settings = {
      credential.helper = "store";
      init.defaultBranch = "main";
      user = {
          name = "Eddie Nguyen";
          email = "edward_nguyen@brown.edu"; 
      };
    };
  };
}
