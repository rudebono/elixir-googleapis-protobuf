defmodule Google.Ads.Googleads.V20.Services.MutateCustomerAssetSetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.CustomerAssetSetOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V20.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V20.Services.CustomerAssetSetOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V20.Resources.CustomerAssetSet, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.MutateCustomerAssetSetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.MutateCustomerAssetSetResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end

defmodule Google.Ads.Googleads.V20.Services.MutateCustomerAssetSetResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :customer_asset_set, 2,
    type: Google.Ads.Googleads.V20.Resources.CustomerAssetSet,
    json_name: "customerAssetSet"
end

defmodule Google.Ads.Googleads.V20.Services.CustomerAssetSetService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v20.services.CustomerAssetSetService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :MutateCustomerAssetSets,
      Google.Ads.Googleads.V20.Services.MutateCustomerAssetSetsRequest,
      Google.Ads.Googleads.V20.Services.MutateCustomerAssetSetsResponse
end

defmodule Google.Ads.Googleads.V20.Services.CustomerAssetSetService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V20.Services.CustomerAssetSetService.Service
end
