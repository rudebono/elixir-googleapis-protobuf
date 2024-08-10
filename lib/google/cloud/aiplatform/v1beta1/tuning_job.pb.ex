defmodule Google.Cloud.Aiplatform.V1beta1.SupervisedHyperParameters.AdapterSize do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ADAPTER_SIZE_UNSPECIFIED, 0
  field :ADAPTER_SIZE_ONE, 1
  field :ADAPTER_SIZE_FOUR, 2
  field :ADAPTER_SIZE_EIGHT, 3
  field :ADAPTER_SIZE_SIXTEEN, 4
end

defmodule Google.Cloud.Aiplatform.V1beta1.TuningJob.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.TuningJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source_model, 0

  oneof :tuning_spec, 1

  field :base_model, 4, type: :string, json_name: "baseModel", oneof: 0

  field :supervised_tuning_spec, 5,
    type: Google.Cloud.Aiplatform.V1beta1.SupervisedTuningSpec,
    json_name: "supervisedTuningSpec",
    oneof: 1

  field :distillation_spec, 17,
    type: Google.Cloud.Aiplatform.V1beta1.DistillationSpec,
    json_name: "distillationSpec",
    oneof: 1

  field :name, 1, type: :string, deprecated: false

  field :tuned_model_display_name, 2,
    type: :string,
    json_name: "tunedModelDisplayName",
    deprecated: false

  field :description, 3, type: :string, deprecated: false
  field :state, 6, type: Google.Cloud.Aiplatform.V1beta1.JobState, enum: true, deprecated: false

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
    type: Google.Cloud.Aiplatform.V1beta1.TuningJob.LabelsEntry,
    map: true,
    deprecated: false

  field :experiment, 13, type: :string, deprecated: false

  field :tuned_model, 14,
    type: Google.Cloud.Aiplatform.V1beta1.TunedModel,
    json_name: "tunedModel",
    deprecated: false

  field :tuning_data_stats, 15,
    type: Google.Cloud.Aiplatform.V1beta1.TuningDataStats,
    json_name: "tuningDataStats",
    deprecated: false

  field :pipeline_job, 18, type: :string, json_name: "pipelineJob", deprecated: false

  field :encryption_spec, 16,
    type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec,
    json_name: "encryptionSpec"
end

defmodule Google.Cloud.Aiplatform.V1beta1.TunedModel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :endpoint, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SupervisedTuningDatasetDistribution.DatasetBucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :count, 1, type: :double, deprecated: false
  field :left, 2, type: :double, deprecated: false
  field :right, 3, type: :double, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SupervisedTuningDatasetDistribution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :sum, 1, type: :int64, deprecated: false
  field :billable_sum, 9, type: :int64, json_name: "billableSum", deprecated: false
  field :min, 2, type: :double, deprecated: false
  field :max, 3, type: :double, deprecated: false
  field :mean, 4, type: :double, deprecated: false
  field :median, 5, type: :double, deprecated: false
  field :p5, 6, type: :double, deprecated: false
  field :p95, 7, type: :double, deprecated: false

  field :buckets, 8,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.SupervisedTuningDatasetDistribution.DatasetBucket,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SupervisedTuningDataStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tuning_dataset_example_count, 1,
    type: :int64,
    json_name: "tuningDatasetExampleCount",
    deprecated: false

  field :total_tuning_character_count, 2,
    type: :int64,
    json_name: "totalTuningCharacterCount",
    deprecated: false

  field :total_billable_character_count, 3,
    type: :int64,
    json_name: "totalBillableCharacterCount",
    deprecated: true

  field :total_billable_token_count, 9,
    type: :int64,
    json_name: "totalBillableTokenCount",
    deprecated: false

  field :tuning_step_count, 4, type: :int64, json_name: "tuningStepCount", deprecated: false

  field :user_input_token_distribution, 5,
    type: Google.Cloud.Aiplatform.V1beta1.SupervisedTuningDatasetDistribution,
    json_name: "userInputTokenDistribution",
    deprecated: false

  field :user_output_token_distribution, 6,
    type: Google.Cloud.Aiplatform.V1beta1.SupervisedTuningDatasetDistribution,
    json_name: "userOutputTokenDistribution",
    deprecated: false

  field :user_message_per_example_distribution, 7,
    type: Google.Cloud.Aiplatform.V1beta1.SupervisedTuningDatasetDistribution,
    json_name: "userMessagePerExampleDistribution",
    deprecated: false

  field :user_dataset_examples, 8,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Content,
    json_name: "userDatasetExamples",
    deprecated: false

  field :total_truncated_example_count, 10, type: :int64, json_name: "totalTruncatedExampleCount"

  field :truncated_example_indices, 11,
    repeated: true,
    type: :int64,
    json_name: "truncatedExampleIndices"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DatasetDistribution.DistributionBucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :count, 1, type: :int64, deprecated: false
  field :left, 2, type: :double, deprecated: false
  field :right, 3, type: :double, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DatasetDistribution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :sum, 1, type: :double, deprecated: false
  field :min, 2, type: :double, deprecated: false
  field :max, 3, type: :double, deprecated: false
  field :mean, 4, type: :double, deprecated: false
  field :median, 5, type: :double, deprecated: false
  field :p5, 6, type: :double, deprecated: false
  field :p95, 7, type: :double, deprecated: false

  field :buckets, 8,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.DatasetDistribution.DistributionBucket,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DatasetStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tuning_dataset_example_count, 1,
    type: :int64,
    json_name: "tuningDatasetExampleCount",
    deprecated: false

  field :total_tuning_character_count, 2,
    type: :int64,
    json_name: "totalTuningCharacterCount",
    deprecated: false

  field :total_billable_character_count, 3,
    type: :int64,
    json_name: "totalBillableCharacterCount",
    deprecated: false

  field :tuning_step_count, 4, type: :int64, json_name: "tuningStepCount", deprecated: false

  field :user_input_token_distribution, 5,
    type: Google.Cloud.Aiplatform.V1beta1.DatasetDistribution,
    json_name: "userInputTokenDistribution",
    deprecated: false

  field :user_output_token_distribution, 6,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1beta1.DatasetDistribution,
    json_name: "userOutputTokenDistribution",
    deprecated: false

  field :user_message_per_example_distribution, 7,
    type: Google.Cloud.Aiplatform.V1beta1.DatasetDistribution,
    json_name: "userMessagePerExampleDistribution",
    deprecated: false

  field :user_dataset_examples, 8,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Content,
    json_name: "userDatasetExamples",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DistillationDataStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :training_dataset_stats, 1,
    type: Google.Cloud.Aiplatform.V1beta1.DatasetStats,
    json_name: "trainingDatasetStats",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TuningDataStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :tuning_data_stats, 0

  field :supervised_tuning_data_stats, 1,
    type: Google.Cloud.Aiplatform.V1beta1.SupervisedTuningDataStats,
    json_name: "supervisedTuningDataStats",
    oneof: 0

  field :distillation_data_stats, 3,
    type: Google.Cloud.Aiplatform.V1beta1.DistillationDataStats,
    json_name: "distillationDataStats",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SupervisedHyperParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :epoch_count, 1, type: :int64, json_name: "epochCount", deprecated: false

  field :learning_rate_multiplier, 2,
    type: :double,
    json_name: "learningRateMultiplier",
    deprecated: false

  field :adapter_size, 3,
    type: Google.Cloud.Aiplatform.V1beta1.SupervisedHyperParameters.AdapterSize,
    json_name: "adapterSize",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SupervisedTuningSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :training_dataset_uri, 1,
    type: :string,
    json_name: "trainingDatasetUri",
    deprecated: false

  field :validation_dataset_uri, 2,
    type: :string,
    json_name: "validationDatasetUri",
    deprecated: false

  field :hyper_parameters, 3,
    type: Google.Cloud.Aiplatform.V1beta1.SupervisedHyperParameters,
    json_name: "hyperParameters",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DistillationSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :teacher_model, 0

  field :base_teacher_model, 5, type: :string, json_name: "baseTeacherModel", oneof: 0

  field :tuned_teacher_model_source, 6,
    type: :string,
    json_name: "tunedTeacherModelSource",
    oneof: 0,
    deprecated: false

  field :training_dataset_uri, 1,
    type: :string,
    json_name: "trainingDatasetUri",
    deprecated: false

  field :validation_dataset_uri, 2,
    proto3_optional: true,
    type: :string,
    json_name: "validationDatasetUri",
    deprecated: false

  field :hyper_parameters, 3,
    type: Google.Cloud.Aiplatform.V1beta1.DistillationHyperParameters,
    json_name: "hyperParameters",
    deprecated: false

  field :student_model, 4, type: :string, json_name: "studentModel"

  field :pipeline_root_directory, 7,
    type: :string,
    json_name: "pipelineRootDirectory",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DistillationHyperParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :epoch_count, 1,
    proto3_optional: true,
    type: :int64,
    json_name: "epochCount",
    deprecated: false

  field :learning_rate_multiplier, 2,
    proto3_optional: true,
    type: :double,
    json_name: "learningRateMultiplier",
    deprecated: false

  field :adapter_size, 3,
    type: Google.Cloud.Aiplatform.V1beta1.SupervisedHyperParameters.AdapterSize,
    json_name: "adapterSize",
    enum: true,
    deprecated: false
end