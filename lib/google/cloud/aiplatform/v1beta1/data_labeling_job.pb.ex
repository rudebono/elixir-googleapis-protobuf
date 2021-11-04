defmodule Google.Cloud.Aiplatform.V1beta1.SampleConfig.SampleStrategy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SAMPLE_STRATEGY_UNSPECIFIED | :UNCERTAINTY

  field :SAMPLE_STRATEGY_UNSPECIFIED, 0
  field :UNCERTAINTY, 1
end

defmodule Google.Cloud.Aiplatform.V1beta1.DataLabelingJob.AnnotationLabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.DataLabelingJob.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.DataLabelingJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          datasets: [String.t()],
          annotation_labels: %{String.t() => String.t()},
          labeler_count: integer,
          instruction_uri: String.t(),
          inputs_schema_uri: String.t(),
          inputs: Google.Protobuf.Value.t() | nil,
          state: Google.Cloud.Aiplatform.V1beta1.JobState.t(),
          labeling_progress: integer,
          current_spend: Google.Type.Money.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          error: Google.Rpc.Status.t() | nil,
          labels: %{String.t() => String.t()},
          specialist_pools: [String.t()],
          encryption_spec: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec.t() | nil,
          active_learning_config: Google.Cloud.Aiplatform.V1beta1.ActiveLearningConfig.t() | nil
        }

  defstruct [
    :name,
    :display_name,
    :datasets,
    :annotation_labels,
    :labeler_count,
    :instruction_uri,
    :inputs_schema_uri,
    :inputs,
    :state,
    :labeling_progress,
    :current_spend,
    :create_time,
    :update_time,
    :error,
    :labels,
    :specialist_pools,
    :encryption_spec,
    :active_learning_config
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :datasets, 3, repeated: true, type: :string

  field :annotation_labels, 12,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.DataLabelingJob.AnnotationLabelsEntry,
    json_name: "annotationLabels",
    map: true

  field :labeler_count, 4, type: :int32, json_name: "labelerCount"
  field :instruction_uri, 5, type: :string, json_name: "instructionUri"
  field :inputs_schema_uri, 6, type: :string, json_name: "inputsSchemaUri"
  field :inputs, 7, type: Google.Protobuf.Value
  field :state, 8, type: Google.Cloud.Aiplatform.V1beta1.JobState, enum: true
  field :labeling_progress, 13, type: :int32, json_name: "labelingProgress"
  field :current_spend, 14, type: Google.Type.Money, json_name: "currentSpend"
  field :create_time, 9, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 10, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :error, 22, type: Google.Rpc.Status

  field :labels, 11,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.DataLabelingJob.LabelsEntry,
    map: true

  field :specialist_pools, 16, repeated: true, type: :string, json_name: "specialistPools"

  field :encryption_spec, 20,
    type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec,
    json_name: "encryptionSpec"

  field :active_learning_config, 21,
    type: Google.Cloud.Aiplatform.V1beta1.ActiveLearningConfig,
    json_name: "activeLearningConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ActiveLearningConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          human_labeling_budget:
            {:max_data_item_count, integer} | {:max_data_item_percentage, integer},
          sample_config: Google.Cloud.Aiplatform.V1beta1.SampleConfig.t() | nil,
          training_config: Google.Cloud.Aiplatform.V1beta1.TrainingConfig.t() | nil
        }

  defstruct [:human_labeling_budget, :sample_config, :training_config]

  oneof :human_labeling_budget, 0

  field :max_data_item_count, 1, type: :int64, json_name: "maxDataItemCount", oneof: 0
  field :max_data_item_percentage, 2, type: :int32, json_name: "maxDataItemPercentage", oneof: 0

  field :sample_config, 3,
    type: Google.Cloud.Aiplatform.V1beta1.SampleConfig,
    json_name: "sampleConfig"

  field :training_config, 4,
    type: Google.Cloud.Aiplatform.V1beta1.TrainingConfig,
    json_name: "trainingConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.SampleConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          initial_batch_sample_size: {:initial_batch_sample_percentage, integer},
          following_batch_sample_size: {:following_batch_sample_percentage, integer},
          sample_strategy: Google.Cloud.Aiplatform.V1beta1.SampleConfig.SampleStrategy.t()
        }

  defstruct [:initial_batch_sample_size, :following_batch_sample_size, :sample_strategy]

  oneof :initial_batch_sample_size, 0
  oneof :following_batch_sample_size, 1

  field :initial_batch_sample_percentage, 1,
    type: :int32,
    json_name: "initialBatchSamplePercentage",
    oneof: 0

  field :following_batch_sample_percentage, 3,
    type: :int32,
    json_name: "followingBatchSamplePercentage",
    oneof: 1

  field :sample_strategy, 5,
    type: Google.Cloud.Aiplatform.V1beta1.SampleConfig.SampleStrategy,
    enum: true,
    json_name: "sampleStrategy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrainingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          timeout_training_milli_hours: integer
        }

  defstruct [:timeout_training_milli_hours]

  field :timeout_training_milli_hours, 1, type: :int64, json_name: "timeoutTrainingMilliHours"

  def transform_module(), do: nil
end
