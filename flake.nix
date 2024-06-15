{
  description = "Vanta1's flake templates";

  outputs = { self, ... }: {
    templates = {
      my-zola-shell = {
        path = ./my-zola-shell;
        description = "Zola is the static site generator i use for my website";
      }
      rust-project = {
        path = ./rust-project;
        description = "Rust project starting point";
      };
    };
  };
}