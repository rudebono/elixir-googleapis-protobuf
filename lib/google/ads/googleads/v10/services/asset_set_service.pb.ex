defmodule Google.Ads.Googleads.V10.Services.MutateAssetSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V10.Services.AssetSetOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V10.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct customer_id: "",
            operations: [],
            partial_failure: false,
            validate_only: false,
            response_content_type: :UNSPECIFIED

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.AssetSetOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V10.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V10.Services.AssetSetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V10.Resources.AssetSet.t() | nil}
            | {:update, Google.Ads.Googleads.V10.Resources.AssetSet.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V10.Resources.AssetSet, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V10.Resources.AssetSet, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.MutateAssetSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V10.Services.MutateAssetSetResult.t()],
          partial_failure_error: Google.Rpc.Status.t() | nil
        }

  defstruct results: [],
            partial_failure_error: nil

  field :results, 1, repeated: true, type: Google.Ads.Googleads.V10.Services.MutateAssetSetResult
  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end
defmodule Google.Ads.Googleads.V10.Services.MutateAssetSetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          asset_set: Google.Ads.Googleads.V10.Resources.AssetSet.t() | nil
        }

  defstruct resource_name: "",
            asset_set: nil

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :asset_set, 2, type: Google.Ads.Googleads.V10.Resources.AssetSet, json_name: "assetSet"
end
defmodule Google.Ads.Googleads.V10.Services.AssetSetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v10.services.AssetSetService"

  rpc :MutateAssetSets,
      Google.Ads.Googleads.V10.Services.MutateAssetSetsRequest,
      Google.Ads.Googleads.V10.Services.MutateAssetSetsResponse
end

defmodule Google.Ads.Googleads.V10.Services.AssetSetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.AssetSetService.Service
end
