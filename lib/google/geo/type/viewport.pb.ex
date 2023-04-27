defmodule Google.Geo.Type.Viewport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :low, 1, type: Google.Type.LatLng
  field :high, 2, type: Google.Type.LatLng
end