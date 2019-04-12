with import <nixpkgs> {};


stdenv.mkDerivation rec {
  name = "venv";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    jsonnet
  ];
}
