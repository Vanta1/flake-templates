{
  description = "Vanta1's flake templates";

  outputs = { ... }: {
    templates = {
      my-zola-shell = {
        path = ./my-zola-shell;
        description = "Zola is the static site generator i use for my website";
      };
      rust-project = {
        path = ./rust-project;
        description = "Rust project starting point";
      };
      cpp = {
        path = ./cpp;
        description = "C++";
      };
    };
  };
}