defmodule Google.Ads.Googleads.V18.Services.MutateAdGroupAssetSetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.AdGroupAssetSetOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V18.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V18.Services.AdGroupAssetSetOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V18.Resources.AdGroupAssetSet, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.MutateAdGroupAssetSetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.MutateAdGroupAssetSetResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end

defmodule Google.Ads.Googleads.V18.Services.MutateAdGroupAssetSetResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :ad_group_asset_set, 2,
    type: Google.Ads.Googleads.V18.Resources.AdGroupAssetSet,
    json_name: "adGroupAssetSet"
end

defmodule Google.Ads.Googleads.V18.Services.AdGroupAssetSetService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v18.services.AdGroupAssetSetService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :MutateAdGroupAssetSets,
      Google.Ads.Googleads.V18.Services.MutateAdGroupAssetSetsRequest,
      Google.Ads.Googleads.V18.Services.MutateAdGroupAssetSetsResponse
end

defmodule Google.Ads.Googleads.V18.Services.AdGroupAssetSetService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V18.Services.AdGroupAssetSetService.Service
end
