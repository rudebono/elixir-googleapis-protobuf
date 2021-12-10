defmodule Google.Ads.Googleads.V7.Services.GetCampaignExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.MutateCampaignExperimentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V7.Services.CampaignExperimentOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct customer_id: "",
            operations: [],
            partial_failure: false,
            validate_only: false,
            response_content_type: :UNSPECIFIED

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.CampaignExperimentOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V7.Services.CampaignExperimentOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:update, Google.Ads.Googleads.V7.Resources.CampaignExperiment.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :update, 1, type: Google.Ads.Googleads.V7.Resources.CampaignExperiment, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end
defmodule Google.Ads.Googleads.V7.Services.MutateCampaignExperimentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V7.Services.MutateCampaignExperimentResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateCampaignExperimentResult
end
defmodule Google.Ads.Googleads.V7.Services.MutateCampaignExperimentResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign_experiment: Google.Ads.Googleads.V7.Resources.CampaignExperiment.t() | nil
        }

  defstruct resource_name: "",
            campaign_experiment: nil

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :campaign_experiment, 2,
    type: Google.Ads.Googleads.V7.Resources.CampaignExperiment,
    json_name: "campaignExperiment"
end
defmodule Google.Ads.Googleads.V7.Services.CreateCampaignExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          campaign_experiment: Google.Ads.Googleads.V7.Resources.CampaignExperiment.t() | nil,
          validate_only: boolean
        }

  defstruct customer_id: "",
            campaign_experiment: nil,
            validate_only: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :campaign_experiment, 2,
    type: Google.Ads.Googleads.V7.Resources.CampaignExperiment,
    json_name: "campaignExperiment",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V7.Services.CreateCampaignExperimentMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          campaign_experiment: String.t()
        }

  defstruct campaign_experiment: ""

  field :campaign_experiment, 1, type: :string, json_name: "campaignExperiment"
end
defmodule Google.Ads.Googleads.V7.Services.GraduateCampaignExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          campaign_experiment: String.t(),
          campaign_budget: String.t(),
          validate_only: boolean
        }

  defstruct campaign_experiment: "",
            campaign_budget: "",
            validate_only: false

  field :campaign_experiment, 1, type: :string, json_name: "campaignExperiment", deprecated: false
  field :campaign_budget, 2, type: :string, json_name: "campaignBudget", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V7.Services.GraduateCampaignExperimentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          graduated_campaign: String.t()
        }

  defstruct graduated_campaign: ""

  field :graduated_campaign, 1, type: :string, json_name: "graduatedCampaign"
end
defmodule Google.Ads.Googleads.V7.Services.PromoteCampaignExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          campaign_experiment: String.t(),
          validate_only: boolean
        }

  defstruct campaign_experiment: "",
            validate_only: false

  field :campaign_experiment, 1, type: :string, json_name: "campaignExperiment", deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V7.Services.EndCampaignExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          campaign_experiment: String.t(),
          validate_only: boolean
        }

  defstruct campaign_experiment: "",
            validate_only: false

  field :campaign_experiment, 1, type: :string, json_name: "campaignExperiment", deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V7.Services.ListCampaignExperimentAsyncErrorsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct resource_name: "",
            page_token: "",
            page_size: 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
end
defmodule Google.Ads.Googleads.V7.Services.ListCampaignExperimentAsyncErrorsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          errors: [Google.Rpc.Status.t()],
          next_page_token: String.t()
        }

  defstruct errors: [],
            next_page_token: ""

  field :errors, 1, repeated: true, type: Google.Rpc.Status
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Ads.Googleads.V7.Services.CampaignExperimentService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.CampaignExperimentService"

  rpc :GetCampaignExperiment,
      Google.Ads.Googleads.V7.Services.GetCampaignExperimentRequest,
      Google.Ads.Googleads.V7.Resources.CampaignExperiment

  rpc :CreateCampaignExperiment,
      Google.Ads.Googleads.V7.Services.CreateCampaignExperimentRequest,
      Google.Longrunning.Operation

  rpc :MutateCampaignExperiments,
      Google.Ads.Googleads.V7.Services.MutateCampaignExperimentsRequest,
      Google.Ads.Googleads.V7.Services.MutateCampaignExperimentsResponse

  rpc :GraduateCampaignExperiment,
      Google.Ads.Googleads.V7.Services.GraduateCampaignExperimentRequest,
      Google.Ads.Googleads.V7.Services.GraduateCampaignExperimentResponse

  rpc :PromoteCampaignExperiment,
      Google.Ads.Googleads.V7.Services.PromoteCampaignExperimentRequest,
      Google.Longrunning.Operation

  rpc :EndCampaignExperiment,
      Google.Ads.Googleads.V7.Services.EndCampaignExperimentRequest,
      Google.Protobuf.Empty

  rpc :ListCampaignExperimentAsyncErrors,
      Google.Ads.Googleads.V7.Services.ListCampaignExperimentAsyncErrorsRequest,
      Google.Ads.Googleads.V7.Services.ListCampaignExperimentAsyncErrorsResponse
end

defmodule Google.Ads.Googleads.V7.Services.CampaignExperimentService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.CampaignExperimentService.Service
end
