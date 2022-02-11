defmodule Google.Ads.Googleads.V10.Services.MutateCampaignSharedSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V10.Services.CampaignSharedSetOperation.t()],
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
    type: Google.Ads.Googleads.V10.Services.CampaignSharedSetOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V10.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V10.Services.CampaignSharedSetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V10.Resources.CampaignSharedSet.t() | nil}
            | {:remove, String.t()}
        }

  defstruct operation: nil

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V10.Resources.CampaignSharedSet, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.MutateCampaignSharedSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V10.Services.MutateCampaignSharedSetResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.MutateCampaignSharedSetResult
end
defmodule Google.Ads.Googleads.V10.Services.MutateCampaignSharedSetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign_shared_set: Google.Ads.Googleads.V10.Resources.CampaignSharedSet.t() | nil
        }

  defstruct resource_name: "",
            campaign_shared_set: nil

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :campaign_shared_set, 2,
    type: Google.Ads.Googleads.V10.Resources.CampaignSharedSet,
    json_name: "campaignSharedSet"
end
defmodule Google.Ads.Googleads.V10.Services.CampaignSharedSetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v10.services.CampaignSharedSetService"

  rpc :MutateCampaignSharedSets,
      Google.Ads.Googleads.V10.Services.MutateCampaignSharedSetsRequest,
      Google.Ads.Googleads.V10.Services.MutateCampaignSharedSetsResponse
end

defmodule Google.Ads.Googleads.V10.Services.CampaignSharedSetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.CampaignSharedSetService.Service
end
