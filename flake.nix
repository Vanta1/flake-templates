{
  description = "Vanta1's flake templates";

  outputs = { self, ... }: {
    templates = {
      rust-project = {
        path = ./rust-project;
        description = "Rust project starting point";
      };
    };
  };
}