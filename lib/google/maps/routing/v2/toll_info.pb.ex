defmodule Google.Maps.Routing.V2.TollInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :estimated_price, 1, repeated: true, type: Google.Type.Money, json_name: "estimatedPrice"
end
