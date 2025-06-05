defmodule Google.Ads.Googleads.V20.Services.MutateAssetGroupSignalsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.AssetGroupSignalOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V20.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V20.Services.AssetGroupSignalOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :operation, 0

  field :exempt_policy_violation_keys, 3,
    repeated: true,
    type: Google.Ads.Googleads.V20.Common.PolicyViolationKey,
    json_name: "exemptPolicyViolationKeys",
    deprecated: false

  field :create, 1, type: Google.Ads.Googleads.V20.Resources.AssetGroupSignal, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.MutateAssetGroupSignalsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.MutateAssetGroupSignalResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end

defmodule Google.Ads.Googleads.V20.Services.MutateAssetGroupSignalResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :asset_group_signal, 2,
    type: Google.Ads.Googleads.V20.Resources.AssetGroupSignal,
    json_name: "assetGroupSignal"
end

defmodule Google.Ads.Googleads.V20.Services.AssetGroupSignalService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v20.services.AssetGroupSignalService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :MutateAssetGroupSignals,
      Google.Ads.Googleads.V20.Services.MutateAssetGroupSignalsRequest,
      Google.Ads.Googleads.V20.Services.MutateAssetGroupSignalsResponse
end

defmodule Google.Ads.Googleads.V20.Services.AssetGroupSignalService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V20.Services.AssetGroupSignalService.Service
end
