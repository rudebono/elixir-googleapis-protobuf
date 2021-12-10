defmodule Google.Maps.Roads.V1op.TravelMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TRAVEL_MODE_UNSPECIFIED | :DRIVING | :CYCLING | :WALKING

  field :TRAVEL_MODE_UNSPECIFIED, 0
  field :DRIVING, 1
  field :CYCLING, 2
  field :WALKING, 3
end
defmodule Google.Maps.Roads.V1op.SnapToRoadsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          path: String.t(),
          interpolate: boolean,
          asset_id: String.t(),
          travel_mode: Google.Maps.Roads.V1op.TravelMode.t()
        }

  defstruct path: "",
            interpolate: false,
            asset_id: "",
            travel_mode: :TRAVEL_MODE_UNSPECIFIED

  field :path, 1, type: :string
  field :interpolate, 2, type: :bool
  field :asset_id, 3, type: :string, json_name: "assetId"

  field :travel_mode, 4,
    type: Google.Maps.Roads.V1op.TravelMode,
    json_name: "travelMode",
    enum: true
end
defmodule Google.Maps.Roads.V1op.SnappedPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: Google.Type.LatLng.t() | nil,
          original_index: Google.Protobuf.UInt32Value.t() | nil,
          place_id: String.t()
        }

  defstruct location: nil,
            original_index: nil,
            place_id: ""

  field :location, 1, type: Google.Type.LatLng
  field :original_index, 2, type: Google.Protobuf.UInt32Value, json_name: "originalIndex"
  field :place_id, 3, type: :string, json_name: "placeId"
end
defmodule Google.Maps.Roads.V1op.SnapToRoadsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapped_points: [Google.Maps.Roads.V1op.SnappedPoint.t()],
          warning_message: String.t()
        }

  defstruct snapped_points: [],
            warning_message: ""

  field :snapped_points, 1,
    repeated: true,
    type: Google.Maps.Roads.V1op.SnappedPoint,
    json_name: "snappedPoints"

  field :warning_message, 2, type: :string, json_name: "warningMessage"
end
defmodule Google.Maps.Roads.V1op.ListNearestRoadsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          points: String.t(),
          travel_mode: Google.Maps.Roads.V1op.TravelMode.t()
        }

  defstruct points: "",
            travel_mode: :TRAVEL_MODE_UNSPECIFIED

  field :points, 1, type: :string

  field :travel_mode, 2,
    type: Google.Maps.Roads.V1op.TravelMode,
    json_name: "travelMode",
    enum: true
end
defmodule Google.Maps.Roads.V1op.ListNearestRoadsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapped_points: [Google.Maps.Roads.V1op.SnappedPoint.t()]
        }

  defstruct snapped_points: []

  field :snapped_points, 1,
    repeated: true,
    type: Google.Maps.Roads.V1op.SnappedPoint,
    json_name: "snappedPoints"
end
defmodule Google.Maps.Roads.V1op.RoadsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.maps.roads.v1op.RoadsService"

  rpc :SnapToRoads,
      Google.Maps.Roads.V1op.SnapToRoadsRequest,
      Google.Maps.Roads.V1op.SnapToRoadsResponse

  rpc :ListNearestRoads,
      Google.Maps.Roads.V1op.ListNearestRoadsRequest,
      Google.Maps.Roads.V1op.ListNearestRoadsResponse
end

defmodule Google.Maps.Roads.V1op.RoadsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Maps.Roads.V1op.RoadsService.Service
end
