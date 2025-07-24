defmodule Google.Maps.Routing.V2.TransitPreferences.TransitTravelMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TRANSIT_TRAVEL_MODE_UNSPECIFIED, 0
  field :BUS, 1
  field :SUBWAY, 2
  field :TRAIN, 3
  field :LIGHT_RAIL, 4
  field :RAIL, 5
end

defmodule Google.Maps.Routing.V2.TransitPreferences.TransitRoutingPreference do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TRANSIT_ROUTING_PREFERENCE_UNSPECIFIED, 0
  field :LESS_WALKING, 1
  field :FEWER_TRANSFERS, 2
end

defmodule Google.Maps.Routing.V2.TransitPreferences do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :allowed_travel_modes, 1,
    repeated: true,
    type: Google.Maps.Routing.V2.TransitPreferences.TransitTravelMode,
    json_name: "allowedTravelModes",
    enum: true

  field :routing_preference, 2,
    type: Google.Maps.Routing.V2.TransitPreferences.TransitRoutingPreference,
    json_name: "routingPreference",
    enum: true
end
