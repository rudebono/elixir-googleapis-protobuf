defmodule Google.Type.LatLng do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :latitude, 1, type: :double
  field :longitude, 2, type: :double
end
