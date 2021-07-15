defmodule Google.Cloud.Aiplatform.V1.BatchPredictionJob.InputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          instances_format: String.t()
        }

  defstruct [:source, :instances_format]

  oneof :source, 0
  field :gcs_source, 2, type: Google.Cloud.Aiplatform.V1.GcsSource, oneof: 0
  field :bigquery_source, 3, type: Google.Cloud.Aiplatform.V1.BigQuerySource, oneof: 0
  field :instances_format, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.BatchPredictionJob.OutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any},
          predictions_format: String.t()
        }

  defstruct [:destination, :predictions_format]

  oneof :destination, 0
  field :gcs_destination, 2, type: Google.Cloud.Aiplatform.V1.GcsDestination, oneof: 0
  field :bigquery_destination, 3, type: Google.Cloud.Aiplatform.V1.BigQueryDestination, oneof: 0
  field :predictions_format, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.BatchPredictionJob.OutputInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_location: {atom, any},
          bigquery_output_table: String.t()
        }

  defstruct [:output_location, :bigquery_output_table]

  oneof :output_location, 0
  field :gcs_output_directory, 1, type: :string, oneof: 0
  field :bigquery_output_dataset, 2, type: :string, oneof: 0
  field :bigquery_output_table, 4, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.BatchPredictionJob.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.BatchPredictionJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          model: String.t(),
          input_config: Google.Cloud.Aiplatform.V1.BatchPredictionJob.InputConfig.t() | nil,
          model_parameters: Google.Protobuf.Value.t() | nil,
          output_config: Google.Cloud.Aiplatform.V1.BatchPredictionJob.OutputConfig.t() | nil,
          dedicated_resources: Google.Cloud.Aiplatform.V1.BatchDedicatedResources.t() | nil,
          manual_batch_tuning_parameters:
            Google.Cloud.Aiplatform.V1.ManualBatchTuningParameters.t() | nil,
          output_info: Google.Cloud.Aiplatform.V1.BatchPredictionJob.OutputInfo.t() | nil,
          state: Google.Cloud.Aiplatform.V1.JobState.t(),
          error: Google.Rpc.Status.t() | nil,
          partial_failures: [Google.Rpc.Status.t()],
          resources_consumed: Google.Cloud.Aiplatform.V1.ResourcesConsumed.t() | nil,
          completion_stats: Google.Cloud.Aiplatform.V1.CompletionStats.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          encryption_spec: Google.Cloud.Aiplatform.V1.EncryptionSpec.t() | nil
        }

  defstruct [
    :name,
    :display_name,
    :model,
    :input_config,
    :model_parameters,
    :output_config,
    :dedicated_resources,
    :manual_batch_tuning_parameters,
    :output_info,
    :state,
    :error,
    :partial_failures,
    :resources_consumed,
    :completion_stats,
    :create_time,
    :start_time,
    :end_time,
    :update_time,
    :labels,
    :encryption_spec
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :model, 3, type: :string
  field :input_config, 4, type: Google.Cloud.Aiplatform.V1.BatchPredictionJob.InputConfig
  field :model_parameters, 5, type: Google.Protobuf.Value
  field :output_config, 6, type: Google.Cloud.Aiplatform.V1.BatchPredictionJob.OutputConfig
  field :dedicated_resources, 7, type: Google.Cloud.Aiplatform.V1.BatchDedicatedResources

  field :manual_batch_tuning_parameters, 8,
    type: Google.Cloud.Aiplatform.V1.ManualBatchTuningParameters

  field :output_info, 9, type: Google.Cloud.Aiplatform.V1.BatchPredictionJob.OutputInfo
  field :state, 10, type: Google.Cloud.Aiplatform.V1.JobState, enum: true
  field :error, 11, type: Google.Rpc.Status
  field :partial_failures, 12, repeated: true, type: Google.Rpc.Status
  field :resources_consumed, 13, type: Google.Cloud.Aiplatform.V1.ResourcesConsumed
  field :completion_stats, 14, type: Google.Cloud.Aiplatform.V1.CompletionStats
  field :create_time, 15, type: Google.Protobuf.Timestamp
  field :start_time, 16, type: Google.Protobuf.Timestamp
  field :end_time, 17, type: Google.Protobuf.Timestamp
  field :update_time, 18, type: Google.Protobuf.Timestamp

  field :labels, 19,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.BatchPredictionJob.LabelsEntry,
    map: true

  field :encryption_spec, 24, type: Google.Cloud.Aiplatform.V1.EncryptionSpec
end
