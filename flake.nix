{
  description = "Vanta1's flake templates";

  outputs = { ... }: {
    templates = {
      rust = {
        path = ./rust;
        description = "Rust project starting point";
      };
      cpp = {
        path = ./cpp;
        description = "C++";
      };
      zola = {
        path = ./zola;
        description = "Zola is the static site generator i use for my website";
      };
    };
  };
}