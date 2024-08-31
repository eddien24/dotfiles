{
  config,
  lib,
  ...
}: {
  system.activationScripts = {
    enableLingering = let
      touchUserLinger = username: _: "touch /var/lib/systemd/linger/${username}";
    in ''
      # remove all existing lingering users
      rm -rf /var/lib/systemd/linger
      mkdir -p /var/lib/systemd/linger
      # enable for the subset of declared users
      ${lib.concatStringsSep "\n" (lib.mapAttrsToList touchUserLinger config.users.users)}
    '';
  };
}
