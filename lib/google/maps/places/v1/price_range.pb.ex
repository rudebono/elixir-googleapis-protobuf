defmodule Google.Maps.Places.V1.PriceRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :start_price, 1, type: Google.Type.Money, json_name: "startPrice"
  field :end_price, 2, type: Google.Type.Money, json_name: "endPrice"
end