defmodule Google.Ads.Googleads.V8.Services.GetCampaignRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8.Services.CampaignOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.CampaignOperation
  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true,
    json_name: "responseContentType"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.CampaignOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V8.Resources.Campaign.t() | nil}
            | {:update, Google.Ads.Googleads.V8.Resources.Campaign.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V8.Resources.Campaign, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8.Resources.Campaign, oneof: 0
  field :remove, 3, type: :string, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8.Services.MutateCampaignResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.MutateCampaignResult

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign: Google.Ads.Googleads.V8.Resources.Campaign.t() | nil
        }

  defstruct [:resource_name, :campaign]

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :campaign, 2, type: Google.Ads.Googleads.V8.Resources.Campaign

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.CampaignService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CampaignService"

  rpc :GetCampaign,
      Google.Ads.Googleads.V8.Services.GetCampaignRequest,
      Google.Ads.Googleads.V8.Resources.Campaign

  rpc :MutateCampaigns,
      Google.Ads.Googleads.V8.Services.MutateCampaignsRequest,
      Google.Ads.Googleads.V8.Services.MutateCampaignsResponse
end

defmodule Google.Ads.Googleads.V8.Services.CampaignService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CampaignService.Service
end
