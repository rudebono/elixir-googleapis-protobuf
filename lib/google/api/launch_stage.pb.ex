defmodule Google.Api.LaunchStage do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :LAUNCH_STAGE_UNSPECIFIED, 0
  field :UNIMPLEMENTED, 6
  field :PRELAUNCH, 7
  field :EARLY_ACCESS, 1
  field :ALPHA, 2
  field :BETA, 3
  field :GA, 4
  field :DEPRECATED, 5
end