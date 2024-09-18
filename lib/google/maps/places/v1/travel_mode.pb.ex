defmodule Google.Maps.Places.V1.TravelMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TRAVEL_MODE_UNSPECIFIED, 0
  field :DRIVE, 1
  field :BICYCLE, 2
  field :WALK, 3
  field :TWO_WHEELER, 4
end