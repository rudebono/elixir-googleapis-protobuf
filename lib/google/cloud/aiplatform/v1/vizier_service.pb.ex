defmodule Google.Cloud.Aiplatform.V1.GetStudyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.CreateStudyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          study: Google.Cloud.Aiplatform.V1.Study.t() | nil
        }

  defstruct [:parent, :study]

  field :parent, 1, type: :string
  field :study, 2, type: Google.Cloud.Aiplatform.V1.Study
end

defmodule Google.Cloud.Aiplatform.V1.ListStudiesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :page_token, :page_size]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
end

defmodule Google.Cloud.Aiplatform.V1.ListStudiesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          studies: [Google.Cloud.Aiplatform.V1.Study.t()],
          next_page_token: String.t()
        }

  defstruct [:studies, :next_page_token]

  field :studies, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Study
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.DeleteStudyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.LookupStudyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          display_name: String.t()
        }

  defstruct [:parent, :display_name]

  field :parent, 1, type: :string
  field :display_name, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.SuggestTrialsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          suggestion_count: integer,
          client_id: String.t()
        }

  defstruct [:parent, :suggestion_count, :client_id]

  field :parent, 1, type: :string
  field :suggestion_count, 2, type: :int32
  field :client_id, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.SuggestTrialsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          trials: [Google.Cloud.Aiplatform.V1.Trial.t()],
          study_state: Google.Cloud.Aiplatform.V1.Study.State.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:trials, :study_state, :start_time, :end_time]

  field :trials, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Trial
  field :study_state, 2, type: Google.Cloud.Aiplatform.V1.Study.State, enum: true
  field :start_time, 3, type: Google.Protobuf.Timestamp
  field :end_time, 4, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Aiplatform.V1.SuggestTrialsMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1.GenericOperationMetadata.t() | nil,
          client_id: String.t()
        }

  defstruct [:generic_metadata, :client_id]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata
  field :client_id, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.CreateTrialRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          trial: Google.Cloud.Aiplatform.V1.Trial.t() | nil
        }

  defstruct [:parent, :trial]

  field :parent, 1, type: :string
  field :trial, 2, type: Google.Cloud.Aiplatform.V1.Trial
end

defmodule Google.Cloud.Aiplatform.V1.GetTrialRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.ListTrialsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :page_token, :page_size]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
end

defmodule Google.Cloud.Aiplatform.V1.ListTrialsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          trials: [Google.Cloud.Aiplatform.V1.Trial.t()],
          next_page_token: String.t()
        }

  defstruct [:trials, :next_page_token]

  field :trials, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Trial
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.AddTrialMeasurementRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          trial_name: String.t(),
          measurement: Google.Cloud.Aiplatform.V1.Measurement.t() | nil
        }

  defstruct [:trial_name, :measurement]

  field :trial_name, 1, type: :string
  field :measurement, 3, type: Google.Cloud.Aiplatform.V1.Measurement
end

defmodule Google.Cloud.Aiplatform.V1.CompleteTrialRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          final_measurement: Google.Cloud.Aiplatform.V1.Measurement.t() | nil,
          trial_infeasible: boolean,
          infeasible_reason: String.t()
        }

  defstruct [:name, :final_measurement, :trial_infeasible, :infeasible_reason]

  field :name, 1, type: :string
  field :final_measurement, 2, type: Google.Cloud.Aiplatform.V1.Measurement
  field :trial_infeasible, 3, type: :bool
  field :infeasible_reason, 4, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.DeleteTrialRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.CheckTrialEarlyStoppingStateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          trial_name: String.t()
        }

  defstruct [:trial_name]

  field :trial_name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.CheckTrialEarlyStoppingStateResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          should_stop: boolean
        }

  defstruct [:should_stop]

  field :should_stop, 1, type: :bool
end

defmodule Google.Cloud.Aiplatform.V1.CheckTrialEarlyStoppingStateMetatdata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1.GenericOperationMetadata.t() | nil,
          study: String.t(),
          trial: String.t()
        }

  defstruct [:generic_metadata, :study, :trial]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata
  field :study, 2, type: :string
  field :trial, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.StopTrialRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.ListOptimalTrialsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct [:parent]

  field :parent, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.ListOptimalTrialsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          optimal_trials: [Google.Cloud.Aiplatform.V1.Trial.t()]
        }

  defstruct [:optimal_trials]

  field :optimal_trials, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Trial
end

defmodule Google.Cloud.Aiplatform.V1.VizierService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.aiplatform.v1.VizierService"

  rpc :CreateStudy,
      Google.Cloud.Aiplatform.V1.CreateStudyRequest,
      Google.Cloud.Aiplatform.V1.Study

  rpc :GetStudy, Google.Cloud.Aiplatform.V1.GetStudyRequest, Google.Cloud.Aiplatform.V1.Study

  rpc :ListStudies,
      Google.Cloud.Aiplatform.V1.ListStudiesRequest,
      Google.Cloud.Aiplatform.V1.ListStudiesResponse

  rpc :DeleteStudy, Google.Cloud.Aiplatform.V1.DeleteStudyRequest, Google.Protobuf.Empty

  rpc :LookupStudy,
      Google.Cloud.Aiplatform.V1.LookupStudyRequest,
      Google.Cloud.Aiplatform.V1.Study

  rpc :SuggestTrials,
      Google.Cloud.Aiplatform.V1.SuggestTrialsRequest,
      Google.Longrunning.Operation

  rpc :CreateTrial,
      Google.Cloud.Aiplatform.V1.CreateTrialRequest,
      Google.Cloud.Aiplatform.V1.Trial

  rpc :GetTrial, Google.Cloud.Aiplatform.V1.GetTrialRequest, Google.Cloud.Aiplatform.V1.Trial

  rpc :ListTrials,
      Google.Cloud.Aiplatform.V1.ListTrialsRequest,
      Google.Cloud.Aiplatform.V1.ListTrialsResponse

  rpc :AddTrialMeasurement,
      Google.Cloud.Aiplatform.V1.AddTrialMeasurementRequest,
      Google.Cloud.Aiplatform.V1.Trial

  rpc :CompleteTrial,
      Google.Cloud.Aiplatform.V1.CompleteTrialRequest,
      Google.Cloud.Aiplatform.V1.Trial

  rpc :DeleteTrial, Google.Cloud.Aiplatform.V1.DeleteTrialRequest, Google.Protobuf.Empty

  rpc :CheckTrialEarlyStoppingState,
      Google.Cloud.Aiplatform.V1.CheckTrialEarlyStoppingStateRequest,
      Google.Longrunning.Operation

  rpc :StopTrial, Google.Cloud.Aiplatform.V1.StopTrialRequest, Google.Cloud.Aiplatform.V1.Trial

  rpc :ListOptimalTrials,
      Google.Cloud.Aiplatform.V1.ListOptimalTrialsRequest,
      Google.Cloud.Aiplatform.V1.ListOptimalTrialsResponse
end

defmodule Google.Cloud.Aiplatform.V1.VizierService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.VizierService.Service
end
