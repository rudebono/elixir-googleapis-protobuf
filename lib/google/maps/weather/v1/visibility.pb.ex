defmodule Google.Maps.Weather.V1.Visibility.Unit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNIT_UNSPECIFIED, 0
  field :KILOMETERS, 1
  field :MILES, 2
end

defmodule Google.Maps.Weather.V1.Visibility do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :distance, 1, proto3_optional: true, type: :float
  field :unit, 2, type: Google.Maps.Weather.V1.Visibility.Unit, enum: true
end
