defmodule Google.Maps.Routing.V2.NavigationInstruction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :maneuver, 1, type: Google.Maps.Routing.V2.Maneuver, enum: true
  field :instructions, 2, type: :string
end