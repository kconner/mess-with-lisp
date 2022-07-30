with (import <nixpkgs> {});
mkShell {
  buildInputs = [
    sbcl
    vim
  ];
}
