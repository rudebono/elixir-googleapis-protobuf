let
  nixpkgs = import
    (fetchTarball {
      url = "https://github.com/NixOS/nixpkgs/archive/e8d262d4ce382d68bb76d7467fe055ca5fc31832.tar.gz";
      sha256 = "sha256:0kzr2pc2r19l1q01abb68314kn18l2nvy3wkg1zzsfj5b60r7lcz";
    })
    { };
in
nixpkgs.mkShell {
  buildInputs = with nixpkgs;
    [
      erlang # 24.2
      elixir # 1.13.4
      protobuf # 3.19.4
    ];
}
