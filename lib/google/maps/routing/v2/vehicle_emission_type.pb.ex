defmodule Google.Maps.Routing.V2.VehicleEmissionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :VEHICLE_EMISSION_TYPE_UNSPECIFIED, 0
  field :GASOLINE, 1
  field :ELECTRIC, 2
  field :HYBRID, 3
  field :DIESEL, 4
end
