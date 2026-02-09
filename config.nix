{
  # GitHub repository path for this NixOS Framework project.
  # Format: "github:owner/repo".
  thisRepository = "github:imincik/nixos-framework";

  # Username for the administrative user account.
  adminUser = "admin";

  # Email address for the administrative user.
  adminEmail = "admin@example.com";

  # SSH public key for the administrative user.
  # Replace with your actual SSH public key (ssh-ed25519, ssh-rsa, etc.).
  adminPublicSSHKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIExampleKeyDataHereReplaceWithYourActualKey user@example.com";

  # Welcome message displayed to users upon login (MOTD) or when entering shell
  # environment.
  welcomeMessage = ''
    Welcome to a NixOS Framework system.
  '';

  # NixOS state version - determines the default settings for stateful data.
  # Should match the NixOS release version you're using.
  nixosStateVersion = "25.05";
}
