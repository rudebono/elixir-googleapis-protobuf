defmodule Google.Ads.Admanager.V1.CustomTargetingKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :custom_targeting_key_id, 2,
    type: :int64,
    json_name: "customTargetingKeyId",
    deprecated: false

  field :ad_tag_name, 3, type: :string, json_name: "adTagName", deprecated: false
  field :display_name, 4, type: :string, json_name: "displayName", deprecated: false

  field :type, 5,
    type: Google.Ads.Admanager.V1.CustomTargetingKeyTypeEnum.CustomTargetingKeyType,
    enum: true,
    deprecated: false

  field :status, 6,
    type: Google.Ads.Admanager.V1.CustomTargetingKeyStatusEnum.CustomTargetingKeyStatus,
    enum: true,
    deprecated: false

  field :reportable_type, 7,
    type:
      Google.Ads.Admanager.V1.CustomTargetingKeyReportableTypeEnum.CustomTargetingKeyReportableType,
    json_name: "reportableType",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.GetCustomTargetingKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListCustomTargetingKeysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListCustomTargetingKeysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :custom_targeting_keys, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.CustomTargetingKey,
    json_name: "customTargetingKeys"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.CustomTargetingKeyService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.CustomTargetingKeyService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetCustomTargetingKey,
      Google.Ads.Admanager.V1.GetCustomTargetingKeyRequest,
      Google.Ads.Admanager.V1.CustomTargetingKey

  rpc :ListCustomTargetingKeys,
      Google.Ads.Admanager.V1.ListCustomTargetingKeysRequest,
      Google.Ads.Admanager.V1.ListCustomTargetingKeysResponse
end

defmodule Google.Ads.Admanager.V1.CustomTargetingKeyService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.CustomTargetingKeyService.Service
end