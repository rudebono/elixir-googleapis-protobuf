defmodule Google.Maps.Places.V1.Polyline do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :polyline_type, 0

  field :encoded_polyline, 1, type: :string, json_name: "encodedPolyline", oneof: 0
end
