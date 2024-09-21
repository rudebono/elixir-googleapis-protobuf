defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringInput.ModelMonitoringDataset.ModelMonitoringGcsSource.DataFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :DATA_FORMAT_UNSPECIFIED, 0
  field :CSV, 1
  field :TF_RECORD, 2
  field :JSONL, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :objective_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveSpec,
    json_name: "objectiveSpec"

  field :notification_spec, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringNotificationSpec,
    json_name: "notificationSpec"

  field :output_spec, 3,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringOutputSpec,
    json_name: "outputSpec"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveSpec.DataDriftSpec.FeatureAlertConditionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAlertCondition
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveSpec.DataDriftSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :features, 1, repeated: true, type: :string
  field :categorical_metric_type, 2, type: :string, json_name: "categoricalMetricType"
  field :numeric_metric_type, 3, type: :string, json_name: "numericMetricType"

  field :default_categorical_alert_condition, 4,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAlertCondition,
    json_name: "defaultCategoricalAlertCondition"

  field :default_numeric_alert_condition, 5,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAlertCondition,
    json_name: "defaultNumericAlertCondition"

  field :feature_alert_conditions, 6,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveSpec.DataDriftSpec.FeatureAlertConditionsEntry,
    json_name: "featureAlertConditions",
    map: true
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveSpec.FeatureAttributionSpec.FeatureAlertConditionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAlertCondition
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveSpec.FeatureAttributionSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :features, 1, repeated: true, type: :string

  field :default_alert_condition, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAlertCondition,
    json_name: "defaultAlertCondition"

  field :feature_alert_conditions, 3,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveSpec.FeatureAttributionSpec.FeatureAlertConditionsEntry,
    json_name: "featureAlertConditions",
    map: true

  field :batch_explanation_dedicated_resources, 4,
    type: Google.Cloud.Aiplatform.V1beta1.BatchDedicatedResources,
    json_name: "batchExplanationDedicatedResources"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveSpec.TabularObjective do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :feature_drift_spec, 10,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveSpec.DataDriftSpec,
    json_name: "featureDriftSpec"

  field :prediction_output_drift_spec, 11,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveSpec.DataDriftSpec,
    json_name: "predictionOutputDriftSpec"

  field :feature_attribution_spec, 12,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveSpec.FeatureAttributionSpec,
    json_name: "featureAttributionSpec"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :objective, 0

  field :tabular_objective, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveSpec.TabularObjective,
    json_name: "tabularObjective",
    oneof: 0

  field :explanation_spec, 3,
    type: Google.Cloud.Aiplatform.V1beta1.ExplanationSpec,
    json_name: "explanationSpec"

  field :baseline_dataset, 4,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringInput,
    json_name: "baselineDataset"

  field :target_dataset, 5,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringInput,
    json_name: "targetDataset"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringOutputSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :gcs_base_directory, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GcsDestination,
    json_name: "gcsBaseDirectory"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringInput.ModelMonitoringDataset.ModelMonitoringGcsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :gcs_uri, 1, type: :string, json_name: "gcsUri"

  field :format, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringInput.ModelMonitoringDataset.ModelMonitoringGcsSource.DataFormat,
    enum: true
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringInput.ModelMonitoringDataset.ModelMonitoringBigQuerySource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :connection, 0

  field :table_uri, 1, type: :string, json_name: "tableUri", oneof: 0
  field :query, 2, type: :string, oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringInput.ModelMonitoringDataset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :data_location, 0

  field :vertex_dataset, 1, type: :string, json_name: "vertexDataset", oneof: 0, deprecated: false

  field :gcs_source, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringInput.ModelMonitoringDataset.ModelMonitoringGcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :bigquery_source, 6,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringInput.ModelMonitoringDataset.ModelMonitoringBigQuerySource,
    json_name: "bigquerySource",
    oneof: 0

  field :timestamp_field, 7, type: :string, json_name: "timestampField"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringInput.BatchPredictionOutput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :batch_prediction_job, 1,
    type: :string,
    json_name: "batchPredictionJob",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringInput.VertexEndpointLogs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :endpoints, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringInput.TimeOffset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :offset, 1, type: :string
  field :window, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :dataset, 0

  oneof :time_spec, 1

  field :columnized_dataset, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringInput.ModelMonitoringDataset,
    json_name: "columnizedDataset",
    oneof: 0

  field :batch_prediction_output, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringInput.BatchPredictionOutput,
    json_name: "batchPredictionOutput",
    oneof: 0

  field :vertex_endpoint_logs, 3,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringInput.VertexEndpointLogs,
    json_name: "vertexEndpointLogs",
    oneof: 0

  field :time_interval, 6, type: Google.Type.Interval, json_name: "timeInterval", oneof: 1

  field :time_offset, 7,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringInput.TimeOffset,
    json_name: "timeOffset",
    oneof: 1
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringNotificationSpec.EmailConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :user_emails, 1, repeated: true, type: :string, json_name: "userEmails"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringNotificationSpec.NotificationChannelConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :notification_channel, 1, type: :string, json_name: "notificationChannel"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringNotificationSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :email_config, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringNotificationSpec.EmailConfig,
    json_name: "emailConfig"

  field :enable_cloud_logging, 2, type: :bool, json_name: "enableCloudLogging"

  field :notification_channel_configs, 3,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringNotificationSpec.NotificationChannelConfig,
    json_name: "notificationChannelConfigs"
end