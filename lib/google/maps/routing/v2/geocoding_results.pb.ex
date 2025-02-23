defmodule Google.Maps.Routing.V2.GeocodingResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :origin, 1, type: Google.Maps.Routing.V2.GeocodedWaypoint
  field :destination, 2, type: Google.Maps.Routing.V2.GeocodedWaypoint
  field :intermediates, 3, repeated: true, type: Google.Maps.Routing.V2.GeocodedWaypoint
end

defmodule Google.Maps.Routing.V2.GeocodedWaypoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :geocoder_status, 1, type: Google.Rpc.Status, json_name: "geocoderStatus"

  field :intermediate_waypoint_request_index, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "intermediateWaypointRequestIndex"

  field :type, 3, repeated: true, type: :string
  field :partial_match, 4, type: :bool, json_name: "partialMatch"
  field :place_id, 5, type: :string, json_name: "placeId"
end
