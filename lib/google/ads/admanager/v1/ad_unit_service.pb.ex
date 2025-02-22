defmodule Google.Ads.Admanager.V1.GetAdUnitRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListAdUnitsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListAdUnitsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ad_units, 1, repeated: true, type: Google.Ads.Admanager.V1.AdUnit, json_name: "adUnits"
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.ListAdUnitSizesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListAdUnitSizesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ad_unit_sizes, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.AdUnitSize,
    json_name: "adUnitSizes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.AdUnitService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.AdUnitService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetAdUnit, Google.Ads.Admanager.V1.GetAdUnitRequest, Google.Ads.Admanager.V1.AdUnit

  rpc :ListAdUnits,
      Google.Ads.Admanager.V1.ListAdUnitsRequest,
      Google.Ads.Admanager.V1.ListAdUnitsResponse

  rpc :ListAdUnitSizes,
      Google.Ads.Admanager.V1.ListAdUnitSizesRequest,
      Google.Ads.Admanager.V1.ListAdUnitSizesResponse
end

defmodule Google.Ads.Admanager.V1.AdUnitService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.AdUnitService.Service
end
