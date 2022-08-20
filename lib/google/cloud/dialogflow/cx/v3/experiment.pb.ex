defmodule Google.Cloud.Dialogflow.Cx.V3.Experiment.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :DRAFT, 1
  field :RUNNING, 2
  field :DONE, 3
  field :ROLLOUT_FAILED, 4
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.MetricType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :METRIC_UNSPECIFIED, 0
  field :CONTAINED_SESSION_NO_CALLBACK_RATE, 1
  field :LIVE_AGENT_HANDOFF_RATE, 2
  field :CALLBACK_SESSION_RATE, 3
  field :ABANDONED_SESSION_RATE, 4
  field :SESSION_END_RATE, 5
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.CountType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :COUNT_TYPE_UNSPECIFIED, 0
  field :TOTAL_NO_MATCH_COUNT, 1
  field :TOTAL_TURN_COUNT, 2
  field :AVERAGE_TURN_COUNT, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Experiment.Definition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :variants, 0

  field :condition, 1, type: :string

  field :version_variants, 2,
    type: Google.Cloud.Dialogflow.Cx.V3.VersionVariants,
    json_name: "versionVariants",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.ConfidenceInterval do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :confidence_level, 1, type: :double, json_name: "confidenceLevel"
  field :ratio, 2, type: :double
  field :lower_bound, 3, type: :double, json_name: "lowerBound"
  field :upper_bound, 4, type: :double, json_name: "upperBound"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.Metric do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :value, 0

  field :type, 1, type: Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.MetricType, enum: true

  field :count_type, 5,
    type: Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.CountType,
    json_name: "countType",
    enum: true

  field :ratio, 2, type: :double, oneof: 0
  field :count, 4, type: :double, oneof: 0

  field :confidence_interval, 3,
    type: Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.ConfidenceInterval,
    json_name: "confidenceInterval"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.VersionMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: :string, deprecated: false
  field :metrics, 2, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.Metric
  field :session_count, 3, type: :int32, json_name: "sessionCount"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Experiment.Result do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version_metrics, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.Experiment.Result.VersionMetrics,
    json_name: "versionMetrics"

  field :last_update_time, 2, type: Google.Protobuf.Timestamp, json_name: "lastUpdateTime"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Experiment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string
  field :state, 4, type: Google.Cloud.Dialogflow.Cx.V3.Experiment.State, enum: true
  field :definition, 5, type: Google.Cloud.Dialogflow.Cx.V3.Experiment.Definition

  field :rollout_config, 14,
    type: Google.Cloud.Dialogflow.Cx.V3.RolloutConfig,
    json_name: "rolloutConfig"

  field :rollout_state, 15,
    type: Google.Cloud.Dialogflow.Cx.V3.RolloutState,
    json_name: "rolloutState"

  field :rollout_failure_reason, 16, type: :string, json_name: "rolloutFailureReason"
  field :result, 6, type: Google.Cloud.Dialogflow.Cx.V3.Experiment.Result
  field :create_time, 7, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :start_time, 8, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 9, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :last_update_time, 10, type: Google.Protobuf.Timestamp, json_name: "lastUpdateTime"
  field :experiment_length, 11, type: Google.Protobuf.Duration, json_name: "experimentLength"

  field :variants_history, 12,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.VariantsHistory,
    json_name: "variantsHistory"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.VersionVariants.Variant do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: :string
  field :traffic_allocation, 2, type: :float, json_name: "trafficAllocation"
  field :is_control_group, 3, type: :bool, json_name: "isControlGroup"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.VersionVariants do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :variants, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.VersionVariants.Variant
end

defmodule Google.Cloud.Dialogflow.Cx.V3.VariantsHistory do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :variants, 0

  field :version_variants, 1,
    type: Google.Cloud.Dialogflow.Cx.V3.VersionVariants,
    json_name: "versionVariants",
    oneof: 0

  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.RolloutConfig.RolloutStep do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :traffic_percent, 2, type: :int32, json_name: "trafficPercent"
  field :min_duration, 3, type: Google.Protobuf.Duration, json_name: "minDuration"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.RolloutConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :rollout_steps, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.RolloutConfig.RolloutStep,
    json_name: "rolloutSteps"

  field :rollout_condition, 2, type: :string, json_name: "rolloutCondition"
  field :failure_condition, 3, type: :string, json_name: "failureCondition"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.RolloutState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :step, 1, type: :string
  field :step_index, 3, type: :int32, json_name: "stepIndex"
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListExperimentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListExperimentsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :experiments, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Experiment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetExperimentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.CreateExperimentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :experiment, 2, type: Google.Cloud.Dialogflow.Cx.V3.Experiment, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.UpdateExperimentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :experiment, 1, type: Google.Cloud.Dialogflow.Cx.V3.Experiment, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.DeleteExperimentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.StartExperimentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.StopExperimentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Experiments.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3.Experiments",
    protoc_gen_elixir_version: "0.11.0"

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