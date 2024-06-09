{
  inputs,
  pkgs,
  ...
}: {
  home.packages = [
    pkgs.hyprcursor
  ];

  home.file.".icons/McMojave" = {
    recursive = true;
    source = ./McMojave;
  };
}
