let
  nixpkgs = import (fetchTarball {
    url =
      "https://github.com/NixOS/nixpkgs/archive/79cb2cb9869d7bb8a1fac800977d3864212fd97d.tar.gz";
    sha256 = "16q1z81ppgd69w00a4lclhjmmr37jazij157z49w7psbbna7il95";
  }) { };
  beam = import (fetchTarball {
    url = "https://github.com/jechol/nix-beam/archive/v5.7.tar.gz";
    sha256 = "0qfsm80rq5k2fby5dd464m992pgqb1pgvv5r22j4xbrwvpwkkivx";
  }) { };
in [
  beam.erlang.v23_3
  beam.pkg.v23_3.elixir.v1_11_4
  nixpkgs.protobuf
]
