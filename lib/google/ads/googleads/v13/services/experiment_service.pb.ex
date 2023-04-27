defmodule Google.Ads.Googleads.V13.Services.MutateExperimentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V13.Services.ExperimentOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V13.Services.ExperimentOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V13.Resources.Experiment, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V13.Resources.Experiment, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V13.Services.MutateExperimentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V13.Services.MutateExperimentResult
end

defmodule Google.Ads.Googleads.V13.Services.MutateExperimentResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V13.Services.EndExperimentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :experiment, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V13.Services.ListExperimentAsyncErrorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
end

defmodule Google.Ads.Googleads.V13.Services.ListExperimentAsyncErrorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :errors, 1, repeated: true, type: Google.Rpc.Status
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ads.Googleads.V13.Services.GraduateExperimentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :experiment, 1, type: :string, deprecated: false

  field :campaign_budget_mappings, 2,
    repeated: true,
    type: Google.Ads.Googleads.V13.Services.CampaignBudgetMapping,
    json_name: "campaignBudgetMappings",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V13.Services.CampaignBudgetMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :experiment_campaign, 1, type: :string, json_name: "experimentCampaign", deprecated: false
  field :campaign_budget, 2, type: :string, json_name: "campaignBudget", deprecated: false
end

defmodule Google.Ads.Googleads.V13.Services.ScheduleExperimentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V13.Services.ScheduleExperimentMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :experiment, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Googleads.V13.Services.PromoteExperimentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V13.Services.PromoteExperimentMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :experiment, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Googleads.V13.Services.ExperimentService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v13.services.ExperimentService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :MutateExperiments,
      Google.Ads.Googleads.V13.Services.MutateExperimentsRequest,
      Google.Ads.Googleads.V13.Services.MutateExperimentsResponse

  rpc :EndExperiment,
      Google.Ads.Googleads.V13.Services.EndExperimentRequest,
      Google.Protobuf.Empty

  rpc :ListExperimentAsyncErrors,
      Google.Ads.Googleads.V13.Services.ListExperimentAsyncErrorsRequest,
      Google.Ads.Googleads.V13.Services.ListExperimentAsyncErrorsResponse

  rpc :GraduateExperiment,
      Google.Ads.Googleads.V13.Services.GraduateExperimentRequest,
      Google.Protobuf.Empty

  rpc :ScheduleExperiment,
      Google.Ads.Googleads.V13.Services.ScheduleExperimentRequest,
      Google.Longrunning.Operation

  rpc :PromoteExperiment,
      Google.Ads.Googleads.V13.Services.PromoteExperimentRequest,
      Google.Longrunning.Operation
end

defmodule Google.Ads.Googleads.V13.Services.ExperimentService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V13.Services.ExperimentService.Service
end