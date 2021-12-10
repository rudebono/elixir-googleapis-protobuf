defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :DRAFT | :RUNNING | :DONE | :ROLLOUT_FAILED

  field :STATE_UNSPECIFIED, 0
  field :DRAFT, 1
  field :RUNNING, 2
  field :DONE, 3
  field :ROLLOUT_FAILED, 4
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.Result.MetricType do
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
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.Result.CountType do
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
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.Definition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variants:
            {:version_variants, Google.Cloud.Dialogflow.Cx.V3beta1.VersionVariants.t() | nil},
          condition: String.t()
        }

  defstruct variants: nil,
            condition: ""

  oneof :variants, 0

  field :condition, 1, type: :string

  field :version_variants, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.VersionVariants,
    json_name: "versionVariants",
    oneof: 0
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.Result.ConfidenceInterval do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          confidence_level: float | :infinity | :negative_infinity | :nan,
          ratio: float | :infinity | :negative_infinity | :nan,
          lower_bound: float | :infinity | :negative_infinity | :nan,
          upper_bound: float | :infinity | :negative_infinity | :nan
        }

  defstruct confidence_level: 0.0,
            ratio: 0.0,
            lower_bound: 0.0,
            upper_bound: 0.0

  field :confidence_level, 1, type: :double, json_name: "confidenceLevel"
  field :ratio, 2, type: :double
  field :lower_bound, 3, type: :double, json_name: "lowerBound"
  field :upper_bound, 4, type: :double, json_name: "upperBound"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.Result.Metric do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value:
            {:ratio, float | :infinity | :negative_infinity | :nan}
            | {:count, float | :infinity | :negative_infinity | :nan},
          type: Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.Result.MetricType.t(),
          count_type: Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.Result.CountType.t(),
          confidence_interval:
            Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.Result.ConfidenceInterval.t() | nil
        }

  defstruct value: nil,
            type: :METRIC_UNSPECIFIED,
            count_type: :COUNT_TYPE_UNSPECIFIED,
            confidence_interval: nil

  oneof :value, 0

  field :type, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.Result.MetricType,
    enum: true

  field :count_type, 5,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.Result.CountType,
    json_name: "countType",
    enum: true

  field :ratio, 2, type: :double, oneof: 0
  field :count, 4, type: :double, oneof: 0

  field :confidence_interval, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.Result.ConfidenceInterval,
    json_name: "confidenceInterval"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.Result.VersionMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t(),
          metrics: [Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.Result.Metric.t()],
          session_count: integer
        }

  defstruct version: "",
            metrics: [],
            session_count: 0

  field :version, 1, type: :string, deprecated: false

  field :metrics, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.Result.Metric

  field :session_count, 3, type: :int32, json_name: "sessionCount"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.Result do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version_metrics: [
            Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.Result.VersionMetrics.t()
          ],
          last_update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct version_metrics: [],
            last_update_time: nil

  field :version_metrics, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.Result.VersionMetrics,
    json_name: "versionMetrics"

  field :last_update_time, 2, type: Google.Protobuf.Timestamp, json_name: "lastUpdateTime"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Experiment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          state: Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.State.t(),
          definition: Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.Definition.t() | nil,
          rollout_config: Google.Cloud.Dialogflow.Cx.V3beta1.RolloutConfig.t() | nil,
          rollout_state: Google.Cloud.Dialogflow.Cx.V3beta1.RolloutState.t() | nil,
          rollout_failure_reason: String.t(),
          result: Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.Result.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          last_update_time: Google.Protobuf.Timestamp.t() | nil,
          experiment_length: Google.Protobuf.Duration.t() | nil,
          variants_history: [Google.Cloud.Dialogflow.Cx.V3beta1.VariantsHistory.t()]
        }

  defstruct name: "",
            display_name: "",
            description: "",
            state: :STATE_UNSPECIFIED,
            definition: nil,
            rollout_config: nil,
            rollout_state: nil,
            rollout_failure_reason: "",
            result: nil,
            create_time: nil,
            start_time: nil,
            end_time: nil,
            last_update_time: nil,
            experiment_length: nil,
            variants_history: []

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string
  field :state, 4, type: Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.State, enum: true
  field :definition, 5, type: Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.Definition

  field :rollout_config, 14,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.RolloutConfig,
    json_name: "rolloutConfig"

  field :rollout_state, 15,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.RolloutState,
    json_name: "rolloutState"

  field :rollout_failure_reason, 16, type: :string, json_name: "rolloutFailureReason"
  field :result, 6, type: Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.Result
  field :create_time, 7, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :start_time, 8, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 9, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :last_update_time, 10, type: Google.Protobuf.Timestamp, json_name: "lastUpdateTime"
  field :experiment_length, 11, type: Google.Protobuf.Duration, json_name: "experimentLength"

  field :variants_history, 12,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.VariantsHistory,
    json_name: "variantsHistory"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.VersionVariants.Variant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t(),
          traffic_allocation: float | :infinity | :negative_infinity | :nan,
          is_control_group: boolean
        }

  defstruct version: "",
            traffic_allocation: 0.0,
            is_control_group: false

  field :version, 1, type: :string
  field :traffic_allocation, 2, type: :float, json_name: "trafficAllocation"
  field :is_control_group, 3, type: :bool, json_name: "isControlGroup"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.VersionVariants do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variants: [Google.Cloud.Dialogflow.Cx.V3beta1.VersionVariants.Variant.t()]
        }

  defstruct variants: []

  field :variants, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.VersionVariants.Variant
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.RolloutConfig.RolloutStep do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          traffic_percent: integer,
          min_duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct display_name: "",
            traffic_percent: 0,
            min_duration: nil

  field :display_name, 1, type: :string, json_name: "displayName"
  field :traffic_percent, 2, type: :int32, json_name: "trafficPercent"
  field :min_duration, 3, type: Google.Protobuf.Duration, json_name: "minDuration"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.RolloutConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rollout_steps: [Google.Cloud.Dialogflow.Cx.V3beta1.RolloutConfig.RolloutStep.t()],
          rollout_condition: String.t(),
          failure_condition: String.t()
        }

  defstruct rollout_steps: [],
            rollout_condition: "",
            failure_condition: ""

  field :rollout_steps, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.RolloutConfig.RolloutStep,
    json_name: "rolloutSteps"

  field :rollout_condition, 2, type: :string, json_name: "rolloutCondition"
  field :failure_condition, 3, type: :string, json_name: "failureCondition"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.RolloutState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          step: String.t(),
          step_index: integer,
          start_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct step: "",
            step_index: 0,
            start_time: nil

  field :step, 1, type: :string
  field :step_index, 3, type: :int32, json_name: "stepIndex"
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.VariantsHistory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variants:
            {:version_variants, Google.Cloud.Dialogflow.Cx.V3beta1.VersionVariants.t() | nil},
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct variants: nil,
            update_time: nil

  oneof :variants, 0

  field :version_variants, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.VersionVariants,
    json_name: "versionVariants",
    oneof: 0

  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListExperimentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListExperimentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          experiments: [Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.t()],
          next_page_token: String.t()
        }

  defstruct experiments: [],
            next_page_token: ""

  field :experiments, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Experiment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          experiment: Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.t() | nil
        }

  defstruct parent: "",
            experiment: nil

  field :parent, 1, type: :string, deprecated: false
  field :experiment, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Experiment, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          experiment: Google.Cloud.Dialogflow.Cx.V3beta1.Experiment.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct experiment: nil,
            update_mask: nil

  field :experiment, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Experiment, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.StartExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.StopExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Experiments.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.cx.v3beta1.Experiments"

  rpc :ListExperiments,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListExperimentsRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListExperimentsResponse

  rpc :GetExperiment,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetExperimentRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Experiment

  rpc :CreateExperiment,
      Google.Cloud.Dialogflow.Cx.V3beta1.CreateExperimentRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Experiment

  rpc :UpdateExperiment,
      Google.Cloud.Dialogflow.Cx.V3beta1.UpdateExperimentRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Experiment

  rpc :DeleteExperiment,
      Google.Cloud.Dialogflow.Cx.V3beta1.DeleteExperimentRequest,
      Google.Protobuf.Empty

  rpc :StartExperiment,
      Google.Cloud.Dialogflow.Cx.V3beta1.StartExperimentRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Experiment

  rpc :StopExperiment,
      Google.Cloud.Dialogflow.Cx.V3beta1.StopExperimentRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Experiment
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Experiments.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3beta1.Experiments.Service
end
