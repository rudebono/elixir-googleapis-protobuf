defmodule Google.Maps.Routing.V2.PolylineDetails.RoadFeatureState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ROAD_FEATURE_STATE_UNSPECIFIED, 0
  field :EXISTS, 1
  field :DOES_NOT_EXIST, 2
end

defmodule Google.Maps.Routing.V2.PolylineDetails.PolylinePointIndex do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_index, 1, proto3_optional: true, type: :int32, json_name: "startIndex"
  field :end_index, 2, proto3_optional: true, type: :int32, json_name: "endIndex"
end

defmodule Google.Maps.Routing.V2.PolylineDetails.FlyoverInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :flyover_presence, 1,
    type: Google.Maps.Routing.V2.PolylineDetails.RoadFeatureState,
    json_name: "flyoverPresence",
    enum: true,
    deprecated: false

  field :polyline_point_index, 2,
    type: Google.Maps.Routing.V2.PolylineDetails.PolylinePointIndex,
    json_name: "polylinePointIndex"
end

defmodule Google.Maps.Routing.V2.PolylineDetails.NarrowRoadInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :narrow_road_presence, 1,
    type: Google.Maps.Routing.V2.PolylineDetails.RoadFeatureState,
    json_name: "narrowRoadPresence",
    enum: true,
    deprecated: false

  field :polyline_point_index, 2,
    type: Google.Maps.Routing.V2.PolylineDetails.PolylinePointIndex,
    json_name: "polylinePointIndex"
end

defmodule Google.Maps.Routing.V2.PolylineDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :flyover_info, 12,
    repeated: true,
    type: Google.Maps.Routing.V2.PolylineDetails.FlyoverInfo,
    json_name: "flyoverInfo"

  field :narrow_road_info, 13,
    repeated: true,
    type: Google.Maps.Routing.V2.PolylineDetails.NarrowRoadInfo,
    json_name: "narrowRoadInfo"
end
