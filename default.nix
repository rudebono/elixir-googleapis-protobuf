let
  nixpkgs = import (fetchTarball {
    url =
      "https://github.com/NixOS/nixpkgs/archive/bd62071220ca7fba84859db4b181ce9fa48a3c1a.tar.gz";
    sha256 = "sha256:0s7dqwd519vdzjn03rragimpc635g6mb71ni81p9liwlwqaxj0nb";
  }) { };
  beam = import (fetchTarball {
    url = "https://github.com/jechol/nix-beam/archive/v6.1.1.tar.gz";
    sha256 = "sha256:0gg9m5vg9vdvjk4zyr7kmwzg91wqwkzb15ybphq15z8b92v95v8p";
  }) { };
in [
  beam.erlang.v24_0
  beam.pkg.v24_0.elixir.v1_12_0
  nixpkgs.protobuf
]
