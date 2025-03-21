defmodule Google.Maps.Routing.V2.Location do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :lat_lng, 1, type: Google.Type.LatLng, json_name: "latLng"
  field :heading, 2, type: Google.Protobuf.Int32Value
end
