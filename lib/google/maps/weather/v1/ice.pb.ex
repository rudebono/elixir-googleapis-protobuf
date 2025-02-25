defmodule Google.Maps.Weather.V1.IceThickness.Unit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNIT_UNSPECIFIED, 0
  field :MILLIMETERS, 1
  field :INCHES, 2
end

defmodule Google.Maps.Weather.V1.IceThickness do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :thickness, 1, proto3_optional: true, type: :float
  field :unit, 2, type: Google.Maps.Weather.V1.IceThickness.Unit, enum: true
end
