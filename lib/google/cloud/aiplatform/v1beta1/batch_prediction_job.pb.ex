defmodule Google.Cloud.Aiplatform.V1beta1.BatchPredictionJob.InputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 2,
    type: Google.Cloud.Aiplatform.V1beta1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :bigquery_source, 3,
    type: Google.Cloud.Aiplatform.V1beta1.BigQuerySource,
    json_name: "bigquerySource",
    oneof: 0

  field :instances_format, 1, type: :string, json_name: "instancesFormat", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.BatchPredictionJob.InstanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance_type, 1, type: :string, json_name: "instanceType"
  field :key_field, 2, type: :string, json_name: "keyField"
  field :included_fields, 3, repeated: true, type: :string, json_name: "includedFields"
  field :excluded_fields, 4, repeated: true, type: :string, json_name: "excludedFields"
end

defmodule Google.Cloud.Aiplatform.V1beta1.BatchPredictionJob.OutputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 2,
    type: Google.Cloud.Aiplatform.V1beta1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :bigquery_destination, 3,
    type: Google.Cloud.Aiplatform.V1beta1.BigQueryDestination,
    json_name: "bigqueryDestination",
    oneof: 0

  field :predictions_format, 1, type: :string, json_name: "predictionsFormat", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.BatchPredictionJob.OutputInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

defmodule Google.Cloud.Aiplatform.V1beta1.BatchPredictionJob.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.BatchPredictionJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :model, 3, type: :string, deprecated: false
  field :model_version_id, 30, type: :string, json_name: "modelVersionId", deprecated: false

  field :unmanaged_container_model, 28,
    type: Google.Cloud.Aiplatform.V1beta1.UnmanagedContainerModel,
    json_name: "unmanagedContainerModel"

  field :input_config, 4,
    type: Google.Cloud.Aiplatform.V1beta1.BatchPredictionJob.InputConfig,
    json_name: "inputConfig",
    deprecated: false

  field :instance_config, 27,
    type: Google.Cloud.Aiplatform.V1beta1.BatchPredictionJob.InstanceConfig,
    json_name: "instanceConfig"

  field :model_parameters, 5, type: Google.Protobuf.Value, json_name: "modelParameters"

  field :output_config, 6,
    type: Google.Cloud.Aiplatform.V1beta1.BatchPredictionJob.OutputConfig,
    json_name: "outputConfig",
    deprecated: false

  field :dedicated_resources, 7,
    type: Google.Cloud.Aiplatform.V1beta1.BatchDedicatedResources,
    json_name: "dedicatedResources"

  field :service_account, 29, type: :string, json_name: "serviceAccount"

  field :manual_batch_tuning_parameters, 8,
    type: Google.Cloud.Aiplatform.V1beta1.ManualBatchTuningParameters,
    json_name: "manualBatchTuningParameters",
    deprecated: false

  field :generate_explanation, 23, type: :bool, json_name: "generateExplanation"

  field :explanation_spec, 25,
    type: Google.Cloud.Aiplatform.V1beta1.ExplanationSpec,
    json_name: "explanationSpec"

  field :output_info, 9,
    type: Google.Cloud.Aiplatform.V1beta1.BatchPredictionJob.OutputInfo,
    json_name: "outputInfo",
    deprecated: false

  field :state, 10, type: Google.Cloud.Aiplatform.V1beta1.JobState, enum: true, deprecated: false
  field :error, 11, type: Google.Rpc.Status, deprecated: false

  field :partial_failures, 12,
    repeated: true,
    type: Google.Rpc.Status,
    json_name: "partialFailures",
    deprecated: false

  field :resources_consumed, 13,
    type: Google.Cloud.Aiplatform.V1beta1.ResourcesConsumed,
    json_name: "resourcesConsumed",
    deprecated: false

  field :completion_stats, 14,
    type: Google.Cloud.Aiplatform.V1beta1.CompletionStats,
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
    type: Google.Cloud.Aiplatform.V1beta1.BatchPredictionJob.LabelsEntry,
    map: true

  field :encryption_spec, 24,
    type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec,
    json_name: "encryptionSpec"

  field :model_monitoring_config, 26,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringConfig,
    json_name: "modelMonitoringConfig"

  field :model_monitoring_stats_anomalies, 31,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringStatsAnomalies,
    json_name: "modelMonitoringStatsAnomalies"

  field :model_monitoring_status, 32,
    type: Google.Rpc.Status,
    json_name: "modelMonitoringStatus",
    deprecated: false

  field :disable_container_logging, 34, type: :bool, json_name: "disableContainerLogging"
  field :satisfies_pzs, 36, type: :bool, json_name: "satisfiesPzs", deprecated: false
  field :satisfies_pzi, 37, type: :bool, json_name: "satisfiesPzi", deprecated: false
end
