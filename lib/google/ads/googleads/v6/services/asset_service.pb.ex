defmodule Google.Ads.Googleads.V6.Services.GetAssetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V6.Services.MutateAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V6.Services.AssetOperation.t()],
          response_content_type:
            Google.Ads.Googleads.V6.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :response_content_type]

  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V6.Services.AssetOperation

  field :response_content_type, 3,
    type: Google.Ads.Googleads.V6.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V6.Services.AssetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0
  field :update_mask, 3, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V6.Resources.Asset, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V6.Resources.Asset, oneof: 0
end

defmodule Google.Ads.Googleads.V6.Services.MutateAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V6.Services.MutateAssetResult.t()]
        }

  defstruct [:results]

  field :results, 2, repeated: true, type: Google.Ads.Googleads.V6.Services.MutateAssetResult
end

defmodule Google.Ads.Googleads.V6.Services.MutateAssetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          asset: Google.Ads.Googleads.V6.Resources.Asset.t() | nil
        }

  defstruct [:resource_name, :asset]

  field :resource_name, 1, type: :string
  field :asset, 2, type: Google.Ads.Googleads.V6.Resources.Asset
end
