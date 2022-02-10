defmodule Google.Ads.Googleads.V10.Services.MutateExperimentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V10.Services.ExperimentOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct customer_id: "",
            operations: [],
            partial_failure: false,
            validate_only: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.ExperimentOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V10.Services.ExperimentOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V10.Resources.Experiment.t() | nil}
            | {:update, Google.Ads.Googleads.V10.Resources.Experiment.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V10.Resources.Experiment, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V10.Resources.Experiment, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.MutateExperimentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V10.Services.MutateExperimentResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.MutateExperimentResult
end
defmodule Google.Ads.Googleads.V10.Services.MutateExperimentResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.EndExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          experiment: String.t(),
          validate_only: boolean
        }

  defstruct experiment: "",
            validate_only: false

  field :experiment, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V10.Services.ListExperimentAsyncErrorsRequest do
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
defmodule Google.Ads.Googleads.V10.Services.ListExperimentAsyncErrorsResponse do
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
defmodule Google.Ads.Googleads.V10.Services.GraduateExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          experiment: String.t(),
          campaign_budget_mappings: [Google.Ads.Googleads.V10.Services.CampaignBudgetMapping.t()],
          validate_only: boolean
        }

  defstruct experiment: "",
            campaign_budget_mappings: [],
            validate_only: false

  field :experiment, 1, type: :string, deprecated: false

  field :campaign_budget_mappings, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.CampaignBudgetMapping,
    json_name: "campaignBudgetMappings",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V10.Services.CampaignBudgetMapping do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          experiment_campaign: String.t(),
          campaign_budget: String.t()
        }

  defstruct experiment_campaign: "",
            campaign_budget: ""

  field :experiment_campaign, 1, type: :string, json_name: "experimentCampaign", deprecated: false
  field :campaign_budget, 2, type: :string, json_name: "campaignBudget", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.ScheduleExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          validate_only: boolean
        }

  defstruct resource_name: "",
            validate_only: false

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V10.Services.ScheduleExperimentMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          experiment: String.t()
        }

  defstruct experiment: ""

  field :experiment, 1, type: :string, deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.PromoteExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          validate_only: boolean
        }

  defstruct resource_name: "",
            validate_only: false

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V10.Services.PromoteExperimentMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          experiment: String.t()
        }

  defstruct experiment: ""

  field :experiment, 1, type: :string, deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.ExperimentService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v10.services.ExperimentService"

  rpc :MutateExperiments,
      Google.Ads.Googleads.V10.Services.MutateExperimentsRequest,
      Google.Ads.Googleads.V10.Services.MutateExperimentsResponse

  rpc :EndExperiment,
      Google.Ads.Googleads.V10.Services.EndExperimentRequest,
      Google.Protobuf.Empty

  rpc :ListExperimentAsyncErrors,
      Google.Ads.Googleads.V10.Services.ListExperimentAsyncErrorsRequest,
      Google.Ads.Googleads.V10.Services.ListExperimentAsyncErrorsResponse

  rpc :GraduateExperiment,
      Google.Ads.Googleads.V10.Services.GraduateExperimentRequest,
      Google.Protobuf.Empty

  rpc :ScheduleExperiment,
      Google.Ads.Googleads.V10.Services.ScheduleExperimentRequest,
      Google.Longrunning.Operation

  rpc :PromoteExperiment,
      Google.Ads.Googleads.V10.Services.PromoteExperimentRequest,
      Google.Longrunning.Operation
end

defmodule Google.Ads.Googleads.V10.Services.ExperimentService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.ExperimentService.Service
end
