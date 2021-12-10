defmodule Google.Cloud.Aiplatform.V1.BatchPredictionJob.InputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:gcs_source, Google.Cloud.Aiplatform.V1.GcsSource.t() | nil}
            | {:bigquery_source, Google.Cloud.Aiplatform.V1.BigQuerySource.t() | nil},
          instances_format: String.t()
        }

  defstruct source: nil,
            instances_format: ""

  oneof :source, 0

  field :gcs_source, 2,
    type: Google.Cloud.Aiplatform.V1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :bigquery_source, 3,
    type: Google.Cloud.Aiplatform.V1.BigQuerySource,
    json_name: "bigquerySource",
    oneof: 0

  field :instances_format, 1, type: :string, json_name: "instancesFormat", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.BatchPredictionJob.OutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination:
            {:gcs_destination, Google.Cloud.Aiplatform.V1.GcsDestination.t() | nil}
            | {:bigquery_destination, Google.Cloud.Aiplatform.V1.BigQueryDestination.t() | nil},
          predictions_format: String.t()
        }

  defstruct destination: nil,
            predictions_format: ""

  oneof :destination, 0

  field :gcs_destination, 2,
    type: Google.Cloud.Aiplatform.V1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :bigquery_destination, 3,
    type: Google.Cloud.Aiplatform.V1.BigQueryDestination,
    json_name: "bigqueryDestination",
    oneof: 0

  field :predictions_format, 1, type: :string, json_name: "predictionsFormat", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.BatchPredictionJob.OutputInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_location:
            {:gcs_output_directory, String.t()} | {:bigquery_output_dataset, String.t()},
          bigquery_output_table: String.t()
        }

  defstruct output_location: nil,
            bigquery_output_table: ""

  oneof :output_location, 0

  field :gcs_output_directory, 1,
    type: :string,
    json_name: "gcsOutputDirectory",
    oneof: 0,
    deprecated: false

  field :bigquery_output_dataset, 2,
    type: :string,
    json_name: "bigqueryOutputDataset",
    oneof: 0,
    deprecated: false

  field :bigquery_output_table, 4,
    type: :string,
    json_name: "bigqueryOutputTable",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.BatchPredictionJob.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

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
          unmanaged_container_model: Google.Cloud.Aiplatform.V1.UnmanagedContainerModel.t() | nil,
          input_config: Google.Cloud.Aiplatform.V1.BatchPredictionJob.InputConfig.t() | nil,
          model_parameters: Google.Protobuf.Value.t() | nil,
          output_config: Google.Cloud.Aiplatform.V1.BatchPredictionJob.OutputConfig.t() | nil,
          dedicated_resources: Google.Cloud.Aiplatform.V1.BatchDedicatedResources.t() | nil,
          manual_batch_tuning_parameters:
            Google.Cloud.Aiplatform.V1.ManualBatchTuningParameters.t() | nil,
          generate_explanation: boolean,
          explanation_spec: Google.Cloud.Aiplatform.V1.ExplanationSpec.t() | nil,
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

  defstruct name: "",
            display_name: "",
            model: "",
            unmanaged_container_model: nil,
            input_config: nil,
            model_parameters: nil,
            output_config: nil,
            dedicated_resources: nil,
            manual_batch_tuning_parameters: nil,
            generate_explanation: false,
            explanation_spec: nil,
            output_info: nil,
            state: :JOB_STATE_UNSPECIFIED,
            error: nil,
            partial_failures: [],
            resources_consumed: nil,
            completion_stats: nil,
            create_time: nil,
            start_time: nil,
            end_time: nil,
            update_time: nil,
            labels: %{},
            encryption_spec: nil

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :model, 3, type: :string, deprecated: false

  field :unmanaged_container_model, 28,
    type: Google.Cloud.Aiplatform.V1.UnmanagedContainerModel,
    json_name: "unmanagedContainerModel"

  field :input_config, 4,
    type: Google.Cloud.Aiplatform.V1.BatchPredictionJob.InputConfig,
    json_name: "inputConfig",
    deprecated: false

  field :model_parameters, 5, type: Google.Protobuf.Value, json_name: "modelParameters"

  field :output_config, 6,
    type: Google.Cloud.Aiplatform.V1.BatchPredictionJob.OutputConfig,
    json_name: "outputConfig",
    deprecated: false

  field :dedicated_resources, 7,
    type: Google.Cloud.Aiplatform.V1.BatchDedicatedResources,
    json_name: "dedicatedResources"

  field :manual_batch_tuning_parameters, 8,
    type: Google.Cloud.Aiplatform.V1.ManualBatchTuningParameters,
    json_name: "manualBatchTuningParameters",
    deprecated: false

  field :generate_explanation, 23, type: :bool, json_name: "generateExplanation"

  field :explanation_spec, 25,
    type: Google.Cloud.Aiplatform.V1.ExplanationSpec,
    json_name: "explanationSpec"

  field :output_info, 9,
    type: Google.Cloud.Aiplatform.V1.BatchPredictionJob.OutputInfo,
    json_name: "outputInfo",
    deprecated: false

  field :state, 10, type: Google.Cloud.Aiplatform.V1.JobState, enum: true, deprecated: false
  field :error, 11, type: Google.Rpc.Status, deprecated: false

  field :partial_failures, 12,
    repeated: true,
    type: Google.Rpc.Status,
    json_name: "partialFailures",
    deprecated: false

  field :resources_consumed, 13,
    type: Google.Cloud.Aiplatform.V1.ResourcesConsumed,
    json_name: "resourcesConsumed",
    deprecated: false

  field :completion_stats, 14,
    type: Google.Cloud.Aiplatform.V1.CompletionStats,
    json_name: "completionStats",
    deprecated: false

  field :create_time, 15,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :start_time, 16,
    type: Google.Protobuf.Timestamp,
    json_name: "startTime",
    deprecated: false

  field :end_time, 17, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :update_time, 18,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 19,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.BatchPredictionJob.LabelsEntry,
    map: true

  field :encryption_spec, 24,
    type: Google.Cloud.Aiplatform.V1.EncryptionSpec,
    json_name: "encryptionSpec"
end
