defmodule Google.Ads.Googleads.V19.Services.MutateAssetSetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V19.Services.AssetSetOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V19.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V19.Services.AssetSetOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V19.Resources.AssetSet, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V19.Resources.AssetSet, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V19.Services.MutateAssetSetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Ads.Googleads.V19.Services.MutateAssetSetResult
  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end

defmodule Google.Ads.Googleads.V19.Services.MutateAssetSetResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :asset_set, 2, type: Google.Ads.Googleads.V19.Resources.AssetSet, json_name: "assetSet"
end

defmodule Google.Ads.Googleads.V19.Services.AssetSetService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v19.services.AssetSetService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :MutateAssetSets,
      Google.Ads.Googleads.V19.Services.MutateAssetSetsRequest,
      Google.Ads.Googleads.V19.Services.MutateAssetSetsResponse
end

defmodule Google.Ads.Googleads.V19.Services.AssetSetService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V19.Services.AssetSetService.Service
end
