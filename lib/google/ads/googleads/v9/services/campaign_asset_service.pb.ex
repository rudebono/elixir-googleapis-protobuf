defmodule Google.Ads.Googleads.V9.Services.GetCampaignAssetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateCampaignAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V9.Services.CampaignAssetOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.CampaignAssetOperation

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true,
    json_name: "responseContentType"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.CampaignAssetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V9.Resources.CampaignAsset.t() | nil}
            | {:update, Google.Ads.Googleads.V9.Resources.CampaignAsset.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V9.Resources.CampaignAsset, oneof: 0
  field :update, 3, type: Google.Ads.Googleads.V9.Resources.CampaignAsset, oneof: 0
  field :remove, 2, type: :string, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateCampaignAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V9.Services.MutateCampaignAssetResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateCampaignAssetResult

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateCampaignAssetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign_asset: Google.Ads.Googleads.V9.Resources.CampaignAsset.t() | nil
        }

  defstruct [:resource_name, :campaign_asset]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :campaign_asset, 2,
    type: Google.Ads.Googleads.V9.Resources.CampaignAsset,
    json_name: "campaignAsset"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.CampaignAssetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.CampaignAssetService"

  rpc :GetCampaignAsset,
      Google.Ads.Googleads.V9.Services.GetCampaignAssetRequest,
      Google.Ads.Googleads.V9.Resources.CampaignAsset

  rpc :MutateCampaignAssets,
      Google.Ads.Googleads.V9.Services.MutateCampaignAssetsRequest,
      Google.Ads.Googleads.V9.Services.MutateCampaignAssetsResponse
end

defmodule Google.Ads.Googleads.V9.Services.CampaignAssetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.CampaignAssetService.Service
end
