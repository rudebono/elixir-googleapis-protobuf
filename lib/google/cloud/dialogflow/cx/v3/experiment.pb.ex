defmodule Google.Cloud.Dialogflow.Cx.V3.Experiment.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :DRAFT | :RUNNING | :DONE

  field :STATE_UNSPECIFIED, 0

  field :DRAFT, 1

  field :RUNNING, 2

  field :DONE, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.MetricType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :METRIC_UNSPECIFIED
          | :CONTAINED_SESSION_NO_CALLBACK_RATE
          | :LIVE_AGENT_HANDOFF_RATE
          | :CALLBACK_SESSION_RATE
          | :ABANDONED_SESSION_RATE
          | :SESSION_END_RATE

  field :METRIC_UNSPECIFIED, 0

  field :CONTAINED_SESSION_NO_CALLBACK_RATE, 1

  field :LIVE_AGENT_HANDOFF_RATE, 2

  field :CALLBACK_SESSION_RATE, 3

  field :ABANDONED_SESSION_RATE, 4

  field :SESSION_END_RATE, 5
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.CountType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :COUNT_TYPE_UNSPECIFIED
          | :TOTAL_NO_MATCH_COUNT
          | :TOTAL_TURN_COUNT
          | :AVERAGE_TURN_COUNT

  field :COUNT_TYPE_UNSPECIFIED, 0

  field :TOTAL_NO_MATCH_COUNT, 1

  field :TOTAL_TURN_COUNT, 2

  field :AVERAGE_TURN_COUNT, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Experiment.Definition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variants: {atom, any},
          condition: String.t()
        }

  defstruct [:variants, :condition]

  oneof :variants, 0
  field :condition, 1, type: :string
  field :version_variants, 2, type: Google.Cloud.Dialogflow.Cx.V3.VersionVariants, oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.ConfidenceInterval do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          confidence_level: float | :infinity | :negative_infinity | :nan,
          ratio: float | :infinity | :negative_infinity | :nan,
          lower_bound: float | :infinity | :negative_infinity | :nan,
          upper_bound: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:confidence_level, :ratio, :lower_bound, :upper_bound]

  field :confidence_level, 1, type: :double
  field :ratio, 2, type: :double
  field :lower_bound, 3, type: :double
  field :upper_bound, 4, type: :double
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.Metric do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: {atom, any},
          type: Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.MetricType.t(),
          count_type: Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.CountType.t(),
          confidence_interval:
            Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.ConfidenceInterval.t() | nil
        }

  defstruct [:value, :type, :count_type, :confidence_interval]

  oneof :value, 0
  field :type, 1, type: Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.MetricType, enum: true

  field :count_type, 5,
    type: Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.CountType,
    enum: true

  field :ratio, 2, type: :double, oneof: 0
  field :count, 4, type: :double, oneof: 0

  field :confidence_interval, 3,
    type: Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.ConfidenceInterval
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.VersionMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t(),
          metrics: [Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.Metric.t()],
          session_count: integer
        }

  defstruct [:version, :metrics, :session_count]

  field :version, 1, type: :string
  field :metrics, 2, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.Metric
  field :session_count, 3, type: :int32
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Experiment.Result do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version_metrics: [Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.VersionMetrics.t()],
          last_update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:version_metrics, :last_update_time]

  field :version_metrics, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.VersionMetrics

  field :last_update_time, 2, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Experiment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          state: Google.Cloud.Dialogflow.Cx.V3.Experiment.State.t(),
          definition: Google.Cloud.Dialogflow.Cx.V3.Experiment.Definition.t() | nil,
          result: Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          last_update_time: Google.Protobuf.Timestamp.t() | nil,
          experiment_length: Google.Protobuf.Duration.t() | nil,
          variants_history: [Google.Cloud.Dialogflow.Cx.V3.VariantsHistory.t()]
        }

  defstruct [
    :name,
    :display_name,
    :description,
    :state,
    :definition,
    :result,
    :create_time,
    :start_time,
    :end_time,
    :last_update_time,
    :experiment_length,
    :variants_history
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :description, 3, type: :string
  field :state, 4, type: Google.Cloud.Dialogflow.Cx.V3.Experiment.State, enum: true
  field :definition, 5, type: Google.Cloud.Dialogflow.Cx.V3.Experiment.Definition
  field :result, 6, type: Google.Cloud.Dialogflow.Cx.V3.Experiment.Result
  field :create_time, 7, type: Google.Protobuf.Timestamp
  field :start_time, 8, type: Google.Protobuf.Timestamp
  field :end_time, 9, type: Google.Protobuf.Timestamp
  field :last_update_time, 10, type: Google.Protobuf.Timestamp
  field :experiment_length, 11, type: Google.Protobuf.Duration
  field :variants_history, 12, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.VariantsHistory
end

defmodule Google.Cloud.Dialogflow.Cx.V3.VersionVariants.Variant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t(),
          traffic_allocation: float | :infinity | :negative_infinity | :nan,
          is_control_group: boolean
        }

  defstruct [:version, :traffic_allocation, :is_control_group]

  field :version, 1, type: :string
  field :traffic_allocation, 2, type: :float
  field :is_control_group, 3, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3.VersionVariants do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variants: [Google.Cloud.Dialogflow.Cx.V3.VersionVariants.Variant.t()]
        }

  defstruct [:variants]

  field :variants, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.VersionVariants.Variant
end

defmodule Google.Cloud.Dialogflow.Cx.V3.VariantsHistory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variants: {atom, any},
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:variants, :update_time]

  oneof :variants, 0
  field :version_variants, 1, type: Google.Cloud.Dialogflow.Cx.V3.VersionVariants, oneof: 0
  field :update_time, 2, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListExperimentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListExperimentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          experiments: [Google.Cloud.Dialogflow.Cx.V3.Experiment.t()],
          next_page_token: String.t()
        }

  defstruct [:experiments, :next_page_token]

  field :experiments, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Experiment
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.CreateExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          experiment: Google.Cloud.Dialogflow.Cx.V3.Experiment.t() | nil
        }

  defstruct [:parent, :experiment]

  field :parent, 1, type: :string
  field :experiment, 2, type: Google.Cloud.Dialogflow.Cx.V3.Experiment
end

defmodule Google.Cloud.Dialogflow.Cx.V3.UpdateExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          experiment: Google.Cloud.Dialogflow.Cx.V3.Experiment.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:experiment, :update_mask]

  field :experiment, 1, type: Google.Cloud.Dialogflow.Cx.V3.Experiment
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dialogflow.Cx.V3.DeleteExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.StartExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.StopExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Experiments.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.cx.v3.Experiments"

  rpc :ListExperiments,
      Google.Cloud.Dialogflow.Cx.V3.ListExperimentsRequest,
      Google.Cloud.Dialogflow.Cx.V3.ListExperimentsResponse

  rpc :GetExperiment,
      Google.Cloud.Dialogflow.Cx.V3.GetExperimentRequest,
      Google.Cloud.Dialogflow.Cx.V3.Experiment

  rpc :CreateExperiment,
      Google.Cloud.Dialogflow.Cx.V3.CreateExperimentRequest,
      Google.Cloud.Dialogflow.Cx.V3.Experiment

  rpc :UpdateExperiment,
      Google.Cloud.Dialogflow.Cx.V3.UpdateExperimentRequest,
      Google.Cloud.Dialogflow.Cx.V3.Experiment

  rpc :DeleteExperiment,
      Google.Cloud.Dialogflow.Cx.V3.DeleteExperimentRequest,
      Google.Protobuf.Empty

  rpc :StartExperiment,
      Google.Cloud.Dialogflow.Cx.V3.StartExperimentRequest,
      Google.Cloud.Dialogflow.Cx.V3.Experiment

  rpc :StopExperiment,
      Google.Cloud.Dialogflow.Cx.V3.StopExperimentRequest,
      Google.Cloud.Dialogflow.Cx.V3.Experiment
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Experiments.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3.Experiments.Service
end
