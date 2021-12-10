defmodule Google.Ads.Googleads.V7.Services.GetAssetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.MutateAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V7.Services.AssetOperation.t()],
          partial_failure: boolean,
          response_content_type:
            Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType.t(),
          validate_only: boolean
        }

  defstruct customer_id: "",
            operations: [],
            partial_failure: false,
            response_content_type: :UNSPECIFIED,
            validate_only: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.AssetOperation,
    deprecated: false

  field :partial_failure, 5, type: :bool, json_name: "partialFailure"

  field :response_content_type, 3,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true

  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V7.Services.AssetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V7.Resources.Asset.t() | nil}
            | {:update, Google.Ads.Googleads.V7.Resources.Asset.t() | nil},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V7.Resources.Asset, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V7.Resources.Asset, oneof: 0
end
defmodule Google.Ads.Googleads.V7.Services.MutateAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V7.Services.MutateAssetResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V7.Services.MutateAssetResult
end
defmodule Google.Ads.Googleads.V7.Services.MutateAssetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          asset: Google.Ads.Googleads.V7.Resources.Asset.t() | nil
        }

  defstruct resource_name: "",
            asset: nil

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :asset, 2, type: Google.Ads.Googleads.V7.Resources.Asset
end
defmodule Google.Ads.Googleads.V7.Services.AssetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.AssetService"

  rpc :GetAsset,
      Google.Ads.Googleads.V7.Services.GetAssetRequest,
      Google.Ads.Googleads.V7.Resources.Asset

  rpc :MutateAssets,
      Google.Ads.Googleads.V7.Services.MutateAssetsRequest,
      Google.Ads.Googleads.V7.Services.MutateAssetsResponse
end

defmodule Google.Ads.Googleads.V7.Services.AssetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.AssetService.Service
end
