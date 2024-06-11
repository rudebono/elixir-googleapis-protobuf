defmodule Google.Ads.Googleads.V17.Services.MutateAdGroupAssetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V17.Services.AdGroupAssetOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V17.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V17.Services.AdGroupAssetOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V17.Resources.AdGroupAsset, oneof: 0
  field :update, 3, type: Google.Ads.Googleads.V17.Resources.AdGroupAsset, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.MutateAdGroupAssetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V17.Services.MutateAdGroupAssetResult
end

defmodule Google.Ads.Googleads.V17.Services.MutateAdGroupAssetResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :ad_group_asset, 2,
    type: Google.Ads.Googleads.V17.Resources.AdGroupAsset,
    json_name: "adGroupAsset"
end

defmodule Google.Ads.Googleads.V17.Services.AdGroupAssetService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v17.services.AdGroupAssetService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :MutateAdGroupAssets,
      Google.Ads.Googleads.V17.Services.MutateAdGroupAssetsRequest,
      Google.Ads.Googleads.V17.Services.MutateAdGroupAssetsResponse
end

defmodule Google.Ads.Googleads.V17.Services.AdGroupAssetService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V17.Services.AdGroupAssetService.Service
end