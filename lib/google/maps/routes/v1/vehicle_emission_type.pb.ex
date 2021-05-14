defmodule Google.Maps.Routes.V1.VehicleEmissionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :VEHICLE_EMISSION_TYPE_UNSPECIFIED | :GASOLINE | :ELECTRIC | :HYBRID

  field :VEHICLE_EMISSION_TYPE_UNSPECIFIED, 0

  field :GASOLINE, 1

  field :ELECTRIC, 2

  field :HYBRID, 3
end
