defmodule Google.Maps.Routes.V1.Waypoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location_type:
            {:location, Google.Maps.Routes.V1.Location.t() | nil} | {:place_id, String.t()},
          via: boolean,
          vehicle_stopover: boolean,
          side_of_road: boolean
        }

  defstruct location_type: nil,
            via: false,
            vehicle_stopover: false,
            side_of_road: false

  oneof :location_type, 0

  field :location, 1, type: Google.Maps.Routes.V1.Location, oneof: 0
  field :place_id, 2, type: :string, json_name: "placeId", oneof: 0
  field :via, 3, type: :bool
  field :vehicle_stopover, 4, type: :bool, json_name: "vehicleStopover"
  field :side_of_road, 5, type: :bool, json_name: "sideOfRoad"
end
defmodule Google.Maps.Routes.V1.Location do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lat_lng: Google.Type.LatLng.t() | nil,
          heading: Google.Protobuf.Int32Value.t() | nil
        }

  defstruct lat_lng: nil,
            heading: nil

  field :lat_lng, 1, type: Google.Type.LatLng, json_name: "latLng"
  field :heading, 2, type: Google.Protobuf.Int32Value
end
