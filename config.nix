{
  thisRepository = "github:imincik/nixos-framework";

  adminUser = "admin";
  adminEmail = "admin@example.com";
  adminPublicSSHKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIExampleKeyDataHereReplaceWithYourActualKey user@example.com";

  systemBanner = ''
    You are welcome here, so long as you come in a good faith.
  '';

  nixosStateVersion = "25.05";
}
