defmodule Google.Maps.Routing.V2.VehicleInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :emission_type, 2,
    type: Google.Maps.Routing.V2.VehicleEmissionType,
    json_name: "emissionType",
    enum: true
end
