with (import <nixpkgs> {});
mkShell {
  buildInputs = [
    sbcl
    vim
    entr
    chicken
    tmux
  ];
}
