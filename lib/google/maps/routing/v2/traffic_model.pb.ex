defmodule Google.Maps.Routing.V2.TrafficModel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TRAFFIC_MODEL_UNSPECIFIED, 0
  field :BEST_GUESS, 1
  field :PESSIMISTIC, 2
  field :OPTIMISTIC, 3
end
