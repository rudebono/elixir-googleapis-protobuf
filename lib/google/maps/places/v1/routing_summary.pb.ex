defmodule Google.Maps.Places.V1.RoutingSummary.Leg do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :duration, 1, type: Google.Protobuf.Duration
  field :distance_meters, 2, type: :int32, json_name: "distanceMeters"
end

defmodule Google.Maps.Places.V1.RoutingSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :legs, 1, repeated: true, type: Google.Maps.Places.V1.RoutingSummary.Leg
  field :directions_uri, 2, type: :string, json_name: "directionsUri"
end
