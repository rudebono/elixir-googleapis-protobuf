defmodule Google.Ads.Admanager.V1.CustomTargetingValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :ad_tag_name, 4, type: :string, json_name: "adTagName", deprecated: false
  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false

  field :match_type, 6,
    type: Google.Ads.Admanager.V1.CustomTargetingValueMatchTypeEnum.CustomTargetingValueMatchType,
    json_name: "matchType",
    enum: true,
    deprecated: false

  field :status, 7,
    type: Google.Ads.Admanager.V1.CustomTargetingValueStatusEnum.CustomTargetingValueStatus,
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.GetCustomTargetingValueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListCustomTargetingValuesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListCustomTargetingValuesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :custom_targeting_values, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.CustomTargetingValue,
    json_name: "customTargetingValues"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.CustomTargetingValueService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.CustomTargetingValueService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetCustomTargetingValue,
      Google.Ads.Admanager.V1.GetCustomTargetingValueRequest,
      Google.Ads.Admanager.V1.CustomTargetingValue

  rpc :ListCustomTargetingValues,
      Google.Ads.Admanager.V1.ListCustomTargetingValuesRequest,
      Google.Ads.Admanager.V1.ListCustomTargetingValuesResponse
end

defmodule Google.Ads.Admanager.V1.CustomTargetingValueService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.CustomTargetingValueService.Service
end