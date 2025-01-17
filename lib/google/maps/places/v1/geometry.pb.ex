defmodule Google.Maps.Places.V1.Circle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :center, 1, type: Google.Type.LatLng, deprecated: false
  field :radius, 2, type: :double, deprecated: false
end
