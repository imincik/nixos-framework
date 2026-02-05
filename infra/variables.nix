{
  projectConfig,
  ...
}:

{
  # Global outputs
  output = {
    admin_user = {
      value = "${projectConfig.adminUser}";
      description = "Admin user";
    };
  };
}
