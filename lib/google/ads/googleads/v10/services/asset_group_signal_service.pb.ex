defmodule Google.Ads.Googleads.V10.Services.MutateAssetGroupSignalsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V10.Services.AssetGroupSignalOperation.t()],
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
    type: Google.Ads.Googleads.V10.Services.AssetGroupSignalOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V10.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V10.Services.AssetGroupSignalOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V10.Resources.AssetGroupSignal.t() | nil}
            | {:remove, String.t()}
        }

  defstruct operation: nil

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V10.Resources.AssetGroupSignal, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.MutateAssetGroupSignalsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V10.Services.MutateAssetGroupSignalResult.t()],
          partial_failure_error: Google.Rpc.Status.t() | nil
        }

  defstruct results: [],
            partial_failure_error: nil

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.MutateAssetGroupSignalResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end
defmodule Google.Ads.Googleads.V10.Services.MutateAssetGroupSignalResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          asset_group_signal: Google.Ads.Googleads.V10.Resources.AssetGroupSignal.t() | nil
        }

  defstruct resource_name: "",
            asset_group_signal: nil

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :asset_group_signal, 2,
    type: Google.Ads.Googleads.V10.Resources.AssetGroupSignal,
    json_name: "assetGroupSignal"
end
defmodule Google.Ads.Googleads.V10.Services.AssetGroupSignalService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v10.services.AssetGroupSignalService"

  rpc :MutateAssetGroupSignals,
      Google.Ads.Googleads.V10.Services.MutateAssetGroupSignalsRequest,
      Google.Ads.Googleads.V10.Services.MutateAssetGroupSignalsResponse
end

defmodule Google.Ads.Googleads.V10.Services.AssetGroupSignalService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.AssetGroupSignalService.Service
end
