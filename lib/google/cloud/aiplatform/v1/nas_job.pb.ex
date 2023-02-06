defmodule Google.Cloud.Aiplatform.V1.NasJobSpec.MultiTrialAlgorithmSpec.MultiTrialAlgorithm do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :MULTI_TRIAL_ALGORITHM_UNSPECIFIED, 0
  field :REINFORCEMENT_LEARNING, 1
  field :GRID_SEARCH, 2
end

defmodule Google.Cloud.Aiplatform.V1.NasJobSpec.MultiTrialAlgorithmSpec.MetricSpec.GoalType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :GOAL_TYPE_UNSPECIFIED, 0
  field :MAXIMIZE, 1
  field :MINIMIZE, 2
end

defmodule Google.Cloud.Aiplatform.V1.NasTrial.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :REQUESTED, 1
  field :ACTIVE, 2
  field :STOPPING, 3
  field :SUCCEEDED, 4
  field :INFEASIBLE, 5
end

defmodule Google.Cloud.Aiplatform.V1.NasJob.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.NasJob do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :nas_job_spec, 4,
    type: Google.Cloud.Aiplatform.V1.NasJobSpec,
    json_name: "nasJobSpec",
    deprecated: false

  field :nas_job_output, 5,
    type: Google.Cloud.Aiplatform.V1.NasJobOutput,
    json_name: "nasJobOutput",
    deprecated: false

  field :state, 6, type: Google.Cloud.Aiplatform.V1.JobState, enum: true, deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :start_time, 8, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 9, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :error, 11, type: Google.Rpc.Status, deprecated: false

  field :labels, 12,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.NasJob.LabelsEntry,
    map: true

  field :encryption_spec, 13,
    type: Google.Cloud.Aiplatform.V1.EncryptionSpec,
    json_name: "encryptionSpec"

  field :enable_restricted_image_training, 14,
    type: :bool,
    json_name: "enableRestrictedImageTraining",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.NasTrialDetail do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :parameters, 2, type: :string
  field :search_trial, 3, type: Google.Cloud.Aiplatform.V1.NasTrial, json_name: "searchTrial"
  field :train_trial, 4, type: Google.Cloud.Aiplatform.V1.NasTrial, json_name: "trainTrial"
end

defmodule Google.Cloud.Aiplatform.V1.NasJobSpec.MultiTrialAlgorithmSpec.MetricSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :metric_id, 1, type: :string, json_name: "metricId", deprecated: false

  field :goal, 2,
    type: Google.Cloud.Aiplatform.V1.NasJobSpec.MultiTrialAlgorithmSpec.MetricSpec.GoalType,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.NasJobSpec.MultiTrialAlgorithmSpec.SearchTrialSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :search_trial_job_spec, 1,
    type: Google.Cloud.Aiplatform.V1.CustomJobSpec,
    json_name: "searchTrialJobSpec",
    deprecated: false

  field :max_trial_count, 2, type: :int32, json_name: "maxTrialCount", deprecated: false

  field :max_parallel_trial_count, 3,
    type: :int32,
    json_name: "maxParallelTrialCount",
    deprecated: false

  field :max_failed_trial_count, 4, type: :int32, json_name: "maxFailedTrialCount"
end

defmodule Google.Cloud.Aiplatform.V1.NasJobSpec.MultiTrialAlgorithmSpec.TrainTrialSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :train_trial_job_spec, 1,
    type: Google.Cloud.Aiplatform.V1.CustomJobSpec,
    json_name: "trainTrialJobSpec",
    deprecated: false

  field :max_parallel_trial_count, 2,
    type: :int32,
    json_name: "maxParallelTrialCount",
    deprecated: false

  field :frequency, 3, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.NasJobSpec.MultiTrialAlgorithmSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :multi_trial_algorithm, 1,
    type: Google.Cloud.Aiplatform.V1.NasJobSpec.MultiTrialAlgorithmSpec.MultiTrialAlgorithm,
    json_name: "multiTrialAlgorithm",
    enum: true

  field :metric, 2, type: Google.Cloud.Aiplatform.V1.NasJobSpec.MultiTrialAlgorithmSpec.MetricSpec

  field :search_trial_spec, 3,
    type: Google.Cloud.Aiplatform.V1.NasJobSpec.MultiTrialAlgorithmSpec.SearchTrialSpec,
    json_name: "searchTrialSpec",
    deprecated: false

  field :train_trial_spec, 4,
    type: Google.Cloud.Aiplatform.V1.NasJobSpec.MultiTrialAlgorithmSpec.TrainTrialSpec,
    json_name: "trainTrialSpec"
end

defmodule Google.Cloud.Aiplatform.V1.NasJobSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :nas_algorithm_spec, 0

  field :multi_trial_algorithm_spec, 2,
    type: Google.Cloud.Aiplatform.V1.NasJobSpec.MultiTrialAlgorithmSpec,
    json_name: "multiTrialAlgorithmSpec",
    oneof: 0

  field :resume_nas_job_id, 3, type: :string, json_name: "resumeNasJobId"
  field :search_space_spec, 1, type: :string, json_name: "searchSpaceSpec"
end

defmodule Google.Cloud.Aiplatform.V1.NasJobOutput.MultiTrialJobOutput do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :search_trials, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.NasTrial,
    json_name: "searchTrials",
    deprecated: false

  field :train_trials, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.NasTrial,
    json_name: "trainTrials",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.NasJobOutput do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :output, 0

  field :multi_trial_job_output, 1,
    type: Google.Cloud.Aiplatform.V1.NasJobOutput.MultiTrialJobOutput,
    json_name: "multiTrialJobOutput",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.NasTrial do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :state, 2, type: Google.Cloud.Aiplatform.V1.NasTrial.State, enum: true, deprecated: false

  field :final_measurement, 3,
    type: Google.Cloud.Aiplatform.V1.Measurement,
    json_name: "finalMeasurement",
    deprecated: false

  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end