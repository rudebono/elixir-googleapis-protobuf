defmodule Google.Ads.Admanager.V1.GetPlacementRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListPlacementsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListPlacementsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :placements, 1, repeated: true, type: Google.Ads.Admanager.V1.Placement
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.CreatePlacementRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :placement, 2, type: Google.Ads.Admanager.V1.Placement, deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchCreatePlacementsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ads.Admanager.V1.CreatePlacementRequest,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchCreatePlacementsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :placements, 1, repeated: true, type: Google.Ads.Admanager.V1.Placement
end

defmodule Google.Ads.Admanager.V1.UpdatePlacementRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :placement, 1, type: Google.Ads.Admanager.V1.Placement, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchUpdatePlacementsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ads.Admanager.V1.UpdatePlacementRequest,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchUpdatePlacementsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :placements, 1, repeated: true, type: Google.Ads.Admanager.V1.Placement
end

defmodule Google.Ads.Admanager.V1.BatchActivatePlacementsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchActivatePlacementsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.BatchDeactivatePlacementsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchDeactivatePlacementsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.BatchArchivePlacementsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchArchivePlacementsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.PlacementService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.PlacementService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetPlacement,
      Google.Ads.Admanager.V1.GetPlacementRequest,
      Google.Ads.Admanager.V1.Placement

  rpc :ListPlacements,
      Google.Ads.Admanager.V1.ListPlacementsRequest,
      Google.Ads.Admanager.V1.ListPlacementsResponse

  rpc :CreatePlacement,
      Google.Ads.Admanager.V1.CreatePlacementRequest,
      Google.Ads.Admanager.V1.Placement

  rpc :UpdatePlacement,
      Google.Ads.Admanager.V1.UpdatePlacementRequest,
      Google.Ads.Admanager.V1.Placement

  rpc :BatchCreatePlacements,
      Google.Ads.Admanager.V1.BatchCreatePlacementsRequest,
      Google.Ads.Admanager.V1.BatchCreatePlacementsResponse

  rpc :BatchUpdatePlacements,
      Google.Ads.Admanager.V1.BatchUpdatePlacementsRequest,
      Google.Ads.Admanager.V1.BatchUpdatePlacementsResponse

  rpc :BatchActivatePlacements,
      Google.Ads.Admanager.V1.BatchActivatePlacementsRequest,
      Google.Ads.Admanager.V1.BatchActivatePlacementsResponse

  rpc :BatchDeactivatePlacements,
      Google.Ads.Admanager.V1.BatchDeactivatePlacementsRequest,
      Google.Ads.Admanager.V1.BatchDeactivatePlacementsResponse

  rpc :BatchArchivePlacements,
      Google.Ads.Admanager.V1.BatchArchivePlacementsRequest,
      Google.Ads.Admanager.V1.BatchArchivePlacementsResponse
end

defmodule Google.Ads.Admanager.V1.PlacementService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.PlacementService.Service
end
