defmodule Google.Ads.Googleads.V21.Services.MutateAssetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V21.Services.AssetOperation,
    deprecated: false

  field :partial_failure, 5, type: :bool, json_name: "partialFailure"

  field :response_content_type, 3,
    type: Google.Ads.Googleads.V21.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true

  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V21.Services.AssetOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V21.Resources.Asset, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V21.Resources.Asset, oneof: 0
end

defmodule Google.Ads.Googleads.V21.Services.MutateAssetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V21.Services.MutateAssetResult
end

defmodule Google.Ads.Googleads.V21.Services.MutateAssetResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :asset, 2, type: Google.Ads.Googleads.V21.Resources.Asset
end

defmodule Google.Ads.Googleads.V21.Services.AssetService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v21.services.AssetService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :MutateAssets,
      Google.Ads.Googleads.V21.Services.MutateAssetsRequest,
      Google.Ads.Googleads.V21.Services.MutateAssetsResponse
end

defmodule Google.Ads.Googleads.V21.Services.AssetService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V21.Services.AssetService.Service
end
