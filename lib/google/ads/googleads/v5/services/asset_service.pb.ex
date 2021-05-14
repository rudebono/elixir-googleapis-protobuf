defmodule Google.Ads.Googleads.V5.Services.GetAssetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.MutateAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V5.Services.AssetOperation.t()],
          response_content_type:
            Google.Ads.Googleads.V5.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :response_content_type]

  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V5.Services.AssetOperation

  field :response_content_type, 3,
    type: Google.Ads.Googleads.V5.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V5.Services.AssetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0
  field :create, 1, type: Google.Ads.Googleads.V5.Resources.Asset, oneof: 0
end

defmodule Google.Ads.Googleads.V5.Services.MutateAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V5.Services.MutateAssetResult.t()]
        }

  defstruct [:results]

  field :results, 2, repeated: true, type: Google.Ads.Googleads.V5.Services.MutateAssetResult
end

defmodule Google.Ads.Googleads.V5.Services.MutateAssetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          asset: Google.Ads.Googleads.V5.Resources.Asset.t() | nil
        }

  defstruct [:resource_name, :asset]

  field :resource_name, 1, type: :string
  field :asset, 2, type: Google.Ads.Googleads.V5.Resources.Asset
end

defmodule Google.Ads.Googleads.V5.Services.AssetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v5.services.AssetService"

  rpc :GetAsset,
      Google.Ads.Googleads.V5.Services.GetAssetRequest,
      Google.Ads.Googleads.V5.Resources.Asset

  rpc :MutateAssets,
      Google.Ads.Googleads.V5.Services.MutateAssetsRequest,
      Google.Ads.Googleads.V5.Services.MutateAssetsResponse
end

defmodule Google.Ads.Googleads.V5.Services.AssetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V5.Services.AssetService.Service
end
