defmodule Google.Maps.Roads.V1op.TravelMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TRAVEL_MODE_UNSPECIFIED, 0
  field :DRIVING, 1
  field :CYCLING, 2
  field :WALKING, 3
end

defmodule Google.Maps.Roads.V1op.SnapToRoadsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :location, 1, type: Google.Type.LatLng
  field :original_index, 2, type: Google.Protobuf.UInt32Value, json_name: "originalIndex"
  field :place_id, 3, type: :string, json_name: "placeId"
end

defmodule Google.Maps.Roads.V1op.SnapToRoadsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :snapped_points, 1,
    repeated: true,
    type: Google.Maps.Roads.V1op.SnappedPoint,
    json_name: "snappedPoints"

  field :warning_message, 2, type: :string, json_name: "warningMessage"
end

defmodule Google.Maps.Roads.V1op.ListNearestRoadsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :points, 1, type: :string

  field :travel_mode, 2,
    type: Google.Maps.Roads.V1op.TravelMode,
    json_name: "travelMode",
    enum: true
end

defmodule Google.Maps.Roads.V1op.ListNearestRoadsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :snapped_points, 1,
    repeated: true,
    type: Google.Maps.Roads.V1op.SnappedPoint,
    json_name: "snappedPoints"
end

defmodule Google.Maps.Roads.V1op.RoadsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.maps.roads.v1op.RoadsService",
    protoc_gen_elixir_version: "0.13.0"

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