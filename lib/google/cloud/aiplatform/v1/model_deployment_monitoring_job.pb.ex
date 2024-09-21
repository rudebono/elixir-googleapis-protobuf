defmodule Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringObjectiveType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :MODEL_DEPLOYMENT_MONITORING_OBJECTIVE_TYPE_UNSPECIFIED, 0
  field :RAW_FEATURE_SKEW, 1
  field :RAW_FEATURE_DRIFT, 2
  field :FEATURE_ATTRIBUTION_SKEW, 3
  field :FEATURE_ATTRIBUTION_DRIFT, 4
end

defmodule Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob.MonitoringScheduleState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :MONITORING_SCHEDULE_STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :OFFLINE, 2
  field :RUNNING, 3
end

defmodule Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringBigQueryTable.LogSource do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :LOG_SOURCE_UNSPECIFIED, 0
  field :TRAINING, 1
  field :SERVING, 2
end

defmodule Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringBigQueryTable.LogType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :LOG_TYPE_UNSPECIFIED, 0
  field :PREDICT, 1
  field :EXPLAIN, 2
end

defmodule Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob.LatestMonitoringPipelineMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :run_time, 1, type: Google.Protobuf.Timestamp, json_name: "runTime"
  field :status, 2, type: Google.Rpc.Status
end

defmodule Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :endpoint, 3, type: :string, deprecated: false
  field :state, 4, type: Google.Cloud.Aiplatform.V1.JobState, enum: true, deprecated: false

  field :schedule_state, 5,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob.MonitoringScheduleState,
    json_name: "scheduleState",
    enum: true,
    deprecated: false

  field :latest_monitoring_pipeline_metadata, 25,
    type:
      Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob.LatestMonitoringPipelineMetadata,
    json_name: "latestMonitoringPipelineMetadata",
    deprecated: false

  field :model_deployment_monitoring_objective_configs, 6,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringObjectiveConfig,
    json_name: "modelDeploymentMonitoringObjectiveConfigs",
    deprecated: false

  field :model_deployment_monitoring_schedule_config, 7,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringScheduleConfig,
    json_name: "modelDeploymentMonitoringScheduleConfig",
    deprecated: false

  field :logging_sampling_strategy, 8,
    type: Google.Cloud.Aiplatform.V1.SamplingStrategy,
    json_name: "loggingSamplingStrategy",
    deprecated: false

  field :model_monitoring_alert_config, 15,
    type: Google.Cloud.Aiplatform.V1.ModelMonitoringAlertConfig,
    json_name: "modelMonitoringAlertConfig"

  field :predict_instance_schema_uri, 9, type: :string, json_name: "predictInstanceSchemaUri"

  field :sample_predict_instance, 19,
    type: Google.Protobuf.Value,
    json_name: "samplePredictInstance"

  field :analysis_instance_schema_uri, 16, type: :string, json_name: "analysisInstanceSchemaUri"

  field :bigquery_tables, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringBigQueryTable,
    json_name: "bigqueryTables",
    deprecated: false

  field :log_ttl, 17, type: Google.Protobuf.Duration, json_name: "logTtl"

  field :labels, 11,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob.LabelsEntry,
    map: true

  field :create_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :next_schedule_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "nextScheduleTime",
    deprecated: false

  field :stats_anomalies_base_directory, 20,
    type: Google.Cloud.Aiplatform.V1.GcsDestination,
    json_name: "statsAnomaliesBaseDirectory"

  field :encryption_spec, 21,
    type: Google.Cloud.Aiplatform.V1.EncryptionSpec,
    json_name: "encryptionSpec"

  field :enable_monitoring_pipeline_logs, 22,
    type: :bool,
    json_name: "enableMonitoringPipelineLogs"

  field :error, 23, type: Google.Rpc.Status, deprecated: false
  field :satisfies_pzs, 26, type: :bool, json_name: "satisfiesPzs", deprecated: false
  field :satisfies_pzi, 27, type: :bool, json_name: "satisfiesPzi", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringBigQueryTable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :log_source, 1,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringBigQueryTable.LogSource,
    json_name: "logSource",
    enum: true

  field :log_type, 2,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringBigQueryTable.LogType,
    json_name: "logType",
    enum: true

  field :bigquery_table_path, 3, type: :string, json_name: "bigqueryTablePath"

  field :request_response_logging_schema_version, 4,
    type: :string,
    json_name: "requestResponseLoggingSchemaVersion",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringObjectiveConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :deployed_model_id, 1, type: :string, json_name: "deployedModelId"

  field :objective_config, 2,
    type: Google.Cloud.Aiplatform.V1.ModelMonitoringObjectiveConfig,
    json_name: "objectiveConfig"
end

defmodule Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringScheduleConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :monitor_interval, 1,
    type: Google.Protobuf.Duration,
    json_name: "monitorInterval",
    deprecated: false

  field :monitor_window, 2, type: Google.Protobuf.Duration, json_name: "monitorWindow"
end

defmodule Google.Cloud.Aiplatform.V1.ModelMonitoringStatsAnomalies.FeatureHistoricStatsAnomalies do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :feature_display_name, 1, type: :string, json_name: "featureDisplayName"
  field :threshold, 3, type: Google.Cloud.Aiplatform.V1.ThresholdConfig

  field :training_stats, 4,
    type: Google.Cloud.Aiplatform.V1.FeatureStatsAnomaly,
    json_name: "trainingStats"

  field :prediction_stats, 5,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.FeatureStatsAnomaly,
    json_name: "predictionStats"
end

defmodule Google.Cloud.Aiplatform.V1.ModelMonitoringStatsAnomalies do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :objective, 1,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringObjectiveType,
    enum: true

  field :deployed_model_id, 2, type: :string, json_name: "deployedModelId"
  field :anomaly_count, 3, type: :int32, json_name: "anomalyCount"

  field :feature_stats, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModelMonitoringStatsAnomalies.FeatureHistoricStatsAnomalies,
    json_name: "featureStats"
end