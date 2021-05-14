defmodule Google.Ads.Googleads.V7.Services.GetAssetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
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

  defstruct [:customer_id, :operations, :partial_failure, :response_content_type, :validate_only]

  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V7.Services.AssetOperation
  field :partial_failure, 5, type: :bool

  field :response_content_type, 3,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true

  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V7.Services.AssetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0
  field :update_mask, 3, type: Google.Protobuf.FieldMask
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

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V7.Services.MutateAssetResult
end

defmodule Google.Ads.Googleads.V7.Services.MutateAssetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          asset: Google.Ads.Googleads.V7.Resources.Asset.t() | nil
        }

  defstruct [:resource_name, :asset]

  field :resource_name, 1, type: :string
  field :asset, 2, type: Google.Ads.Googleads.V7.Resources.Asset
end
