defmodule Google.Ads.Admanager.V1.Placement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :placement_id, 2, type: :int64, json_name: "placementId", deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :description, 4, type: :string, deprecated: false
  field :placement_code, 5, type: :string, json_name: "placementCode", deprecated: false

  field :status, 6,
    type: Google.Ads.Admanager.V1.PlacementStatusEnum.PlacementStatus,
    enum: true,
    deprecated: false

  field :targeted_ad_units, 7,
    repeated: true,
    type: :string,
    json_name: "targetedAdUnits",
    deprecated: false

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.GetPlacementRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListPlacementsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListPlacementsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :placements, 1, repeated: true, type: Google.Ads.Admanager.V1.Placement
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.PlacementService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.PlacementService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetPlacement,
      Google.Ads.Admanager.V1.GetPlacementRequest,
      Google.Ads.Admanager.V1.Placement

  rpc :ListPlacements,
      Google.Ads.Admanager.V1.ListPlacementsRequest,
      Google.Ads.Admanager.V1.ListPlacementsResponse
end

defmodule Google.Ads.Admanager.V1.PlacementService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.PlacementService.Service
end