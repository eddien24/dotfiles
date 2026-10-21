{
  config,
  lib,
  ...
}: {
  system.activationScripts = {
    enableLingering = let
      realUsers = lib.filterAttrs (_: u: u.isNormalUser or false) config.users.users;
      touchCmds =
        lib.concatStringsSep "\n"
        (lib.mapAttrsToList
          (name: _: "touch /var/lib/systemd/linger/${name}")
          realUsers);
    in ''
      rm -rf /var/lib/systemd/linger
      mkdir -p /var/lib/systemd/linger
      ${touchCmds}
    '';
  };
}
