defmodule Google.Cloud.Aiplatform.V1beta1.GetStudyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateStudyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :study, 2, type: Google.Cloud.Aiplatform.V1beta1.Study, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListStudiesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListStudiesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :studies, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Study
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteStudyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.LookupStudyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SuggestTrialsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :suggestion_count, 2, type: :int32, json_name: "suggestionCount", deprecated: false
  field :client_id, 3, type: :string, json_name: "clientId", deprecated: false

  field :contexts, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TrialContext,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SuggestTrialsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :trials, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Trial

  field :study_state, 2,
    type: Google.Cloud.Aiplatform.V1beta1.Study.State,
    json_name: "studyState",
    enum: true

  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Aiplatform.V1beta1.SuggestTrialsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :client_id, 2, type: :string, json_name: "clientId"
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateTrialRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :trial, 2, type: Google.Cloud.Aiplatform.V1beta1.Trial, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetTrialRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListTrialsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListTrialsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :trials, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Trial
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.AddTrialMeasurementRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :trial_name, 1, type: :string, json_name: "trialName", deprecated: false
  field :measurement, 3, type: Google.Cloud.Aiplatform.V1beta1.Measurement, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CompleteTrialRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :final_measurement, 2,
    type: Google.Cloud.Aiplatform.V1beta1.Measurement,
    json_name: "finalMeasurement",
    deprecated: false

  field :trial_infeasible, 3, type: :bool, json_name: "trialInfeasible", deprecated: false
  field :infeasible_reason, 4, type: :string, json_name: "infeasibleReason", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteTrialRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CheckTrialEarlyStoppingStateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :trial_name, 1, type: :string, json_name: "trialName", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CheckTrialEarlyStoppingStateResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :should_stop, 1, type: :bool, json_name: "shouldStop"
end

defmodule Google.Cloud.Aiplatform.V1beta1.CheckTrialEarlyStoppingStateMetatdata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :study, 2, type: :string
  field :trial, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.StopTrialRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListOptimalTrialsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListOptimalTrialsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :optimal_trials, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Trial,
    json_name: "optimalTrials"
end

defmodule Google.Cloud.Aiplatform.V1beta1.VizierService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.VizierService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateStudy,
      Google.Cloud.Aiplatform.V1beta1.CreateStudyRequest,
      Google.Cloud.Aiplatform.V1beta1.Study

  rpc :GetStudy,
      Google.Cloud.Aiplatform.V1beta1.GetStudyRequest,
      Google.Cloud.Aiplatform.V1beta1.Study

  rpc :ListStudies,
      Google.Cloud.Aiplatform.V1beta1.ListStudiesRequest,
      Google.Cloud.Aiplatform.V1beta1.ListStudiesResponse

  rpc :DeleteStudy, Google.Cloud.Aiplatform.V1beta1.DeleteStudyRequest, Google.Protobuf.Empty

  rpc :LookupStudy,
      Google.Cloud.Aiplatform.V1beta1.LookupStudyRequest,
      Google.Cloud.Aiplatform.V1beta1.Study

  rpc :SuggestTrials,
      Google.Cloud.Aiplatform.V1beta1.SuggestTrialsRequest,
      Google.Longrunning.Operation

  rpc :CreateTrial,
      Google.Cloud.Aiplatform.V1beta1.CreateTrialRequest,
      Google.Cloud.Aiplatform.V1beta1.Trial

  rpc :GetTrial,
      Google.Cloud.Aiplatform.V1beta1.GetTrialRequest,
      Google.Cloud.Aiplatform.V1beta1.Trial

  rpc :ListTrials,
      Google.Cloud.Aiplatform.V1beta1.ListTrialsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListTrialsResponse

  rpc :AddTrialMeasurement,
      Google.Cloud.Aiplatform.V1beta1.AddTrialMeasurementRequest,
      Google.Cloud.Aiplatform.V1beta1.Trial

  rpc :CompleteTrial,
      Google.Cloud.Aiplatform.V1beta1.CompleteTrialRequest,
      Google.Cloud.Aiplatform.V1beta1.Trial

  rpc :DeleteTrial, Google.Cloud.Aiplatform.V1beta1.DeleteTrialRequest, Google.Protobuf.Empty

  rpc :CheckTrialEarlyStoppingState,
      Google.Cloud.Aiplatform.V1beta1.CheckTrialEarlyStoppingStateRequest,
      Google.Longrunning.Operation

  rpc :StopTrial,
      Google.Cloud.Aiplatform.V1beta1.StopTrialRequest,
      Google.Cloud.Aiplatform.V1beta1.Trial

  rpc :ListOptimalTrials,
      Google.Cloud.Aiplatform.V1beta1.ListOptimalTrialsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListOptimalTrialsResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.VizierService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.VizierService.Service
end
