defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.ExplanationConfig.ExplanationBaseline.PredictionFormat do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :PREDICTION_FORMAT_UNSPECIFIED, 0
  field :JSONL, 2
  field :BIGQUERY, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :objective_configs, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig,
    json_name: "objectiveConfigs"

  field :alert_config, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAlertConfig,
    json_name: "alertConfig"

  field :analysis_instance_schema_uri, 4, type: :string, json_name: "analysisInstanceSchemaUri"

  field :stats_anomalies_base_directory, 5,
    type: Google.Cloud.Aiplatform.V1beta1.GcsDestination,
    json_name: "statsAnomaliesBaseDirectory"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.TrainingDataset do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :data_source, 0

  field :dataset, 3, type: :string, oneof: 0, deprecated: false

  field :gcs_source, 4,
    type: Google.Cloud.Aiplatform.V1beta1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :bigquery_source, 5,
    type: Google.Cloud.Aiplatform.V1beta1.BigQuerySource,
    json_name: "bigquerySource",
    oneof: 0

  field :data_format, 2, type: :string, json_name: "dataFormat"
  field :target_field, 6, type: :string, json_name: "targetField"

  field :logging_sampling_strategy, 7,
    type: Google.Cloud.Aiplatform.V1beta1.SamplingStrategy,
    json_name: "loggingSamplingStrategy"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.TrainingPredictionSkewDetectionConfig.SkewThresholdsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.ThresholdConfig
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.TrainingPredictionSkewDetectionConfig.AttributionScoreSkewThresholdsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.ThresholdConfig
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.TrainingPredictionSkewDetectionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :skew_thresholds, 1,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.TrainingPredictionSkewDetectionConfig.SkewThresholdsEntry,
    json_name: "skewThresholds",
    map: true

  field :attribution_score_skew_thresholds, 2,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.TrainingPredictionSkewDetectionConfig.AttributionScoreSkewThresholdsEntry,
    json_name: "attributionScoreSkewThresholds",
    map: true

  field :default_skew_threshold, 6,
    type: Google.Cloud.Aiplatform.V1beta1.ThresholdConfig,
    json_name: "defaultSkewThreshold"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.PredictionDriftDetectionConfig.DriftThresholdsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.ThresholdConfig
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.PredictionDriftDetectionConfig.AttributionScoreDriftThresholdsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.ThresholdConfig
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.PredictionDriftDetectionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :drift_thresholds, 1,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.PredictionDriftDetectionConfig.DriftThresholdsEntry,
    json_name: "driftThresholds",
    map: true

  field :attribution_score_drift_thresholds, 2,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.PredictionDriftDetectionConfig.AttributionScoreDriftThresholdsEntry,
    json_name: "attributionScoreDriftThresholds",
    map: true

  field :default_drift_threshold, 5,
    type: Google.Cloud.Aiplatform.V1beta1.ThresholdConfig,
    json_name: "defaultDriftThreshold"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.ExplanationConfig.ExplanationBaseline do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :destination, 0

  field :gcs, 2, type: Google.Cloud.Aiplatform.V1beta1.GcsDestination, oneof: 0
  field :bigquery, 3, type: Google.Cloud.Aiplatform.V1beta1.BigQueryDestination, oneof: 0

  field :prediction_format, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.ExplanationConfig.ExplanationBaseline.PredictionFormat,
    json_name: "predictionFormat",
    enum: true
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.ExplanationConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable_feature_attributes, 1, type: :bool, json_name: "enableFeatureAttributes"

  field :explanation_baseline, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.ExplanationConfig.ExplanationBaseline,
    json_name: "explanationBaseline"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :training_dataset, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.TrainingDataset,
    json_name: "trainingDataset"

  field :training_prediction_skew_detection_config, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.TrainingPredictionSkewDetectionConfig,
    json_name: "trainingPredictionSkewDetectionConfig"

  field :prediction_drift_detection_config, 3,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.PredictionDriftDetectionConfig,
    json_name: "predictionDriftDetectionConfig"

  field :explanation_config, 5,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.ExplanationConfig,
    json_name: "explanationConfig"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAlertConfig.EmailAlertConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :user_emails, 1, repeated: true, type: :string, json_name: "userEmails"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAlertConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :alert, 0

  field :email_alert_config, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAlertConfig.EmailAlertConfig,
    json_name: "emailAlertConfig",
    oneof: 0

  field :enable_logging, 2, type: :bool, json_name: "enableLogging"

  field :notification_channels, 3,
    repeated: true,
    type: :string,
    json_name: "notificationChannels",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ThresholdConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :threshold, 0

  field :value, 1, type: :double, oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.SamplingStrategy.RandomSampleConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sample_rate, 1, type: :double, json_name: "sampleRate"
end

defmodule Google.Cloud.Aiplatform.V1beta1.SamplingStrategy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :random_sample_config, 1,
    type: Google.Cloud.Aiplatform.V1beta1.SamplingStrategy.RandomSampleConfig,
    json_name: "randomSampleConfig"
end