defmodule Google.Ads.Googleads.V6.Services.GetCampaignAssetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V6.Services.MutateCampaignAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V6.Services.CampaignAssetOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V6.Services.CampaignAssetOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V6.Services.CampaignAssetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0
  field :create, 1, type: Google.Ads.Googleads.V6.Resources.CampaignAsset, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V6.Services.MutateCampaignAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V6.Services.MutateCampaignAssetResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 1, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V6.Services.MutateCampaignAssetResult
end

defmodule Google.Ads.Googleads.V6.Services.MutateCampaignAssetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end
