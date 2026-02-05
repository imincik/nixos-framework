# SSH Key - shared across all hosts
{ projectConfig, ... }:

{
  resource.hcloud_ssh_key.admin = {
    name = "admin-${projectConfig.adminUser}";
    public_key = projectConfig.adminPublicSSHkey;
  };
}
