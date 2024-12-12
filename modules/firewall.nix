{pkgs, ...}: {
  networking.firewall.allowedTCPPortRanges = [
    {
      from = 8080;
      to = 8081;
    }
  ];
}
