{
  inputs,
  config,
  projectConfig,
  ...
}:

{
  flake.terraformConfigurations =
    let
      system = "x86_64-linux";

      # Import deployments.nix with mkDeployment function
      hosts = import ../deployments.nix {
        mkDeployment = hostname: import ../hosts/${hostname}/config.nix;
      };

      # Single unified deployment for all infrastructure
      all = inputs.terranix.lib.terranixConfiguration {
        inherit system;
        modules = [
          ../infra/variables.nix
          ../infra/hetzner-ssh-key.nix
          ../infra/hetzner-all-hosts.nix
        ];
        extraArgs = {
          inherit projectConfig hosts;
        };
      };
    in
    {
      inherit all;
    };
}
