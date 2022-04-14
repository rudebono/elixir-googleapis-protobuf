defmodule Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringObjectiveType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MODEL_DEPLOYMENT_MONITORING_OBJECTIVE_TYPE_UNSPECIFIED
          | :RAW_FEATURE_SKEW
          | :RAW_FEATURE_DRIFT
          | :FEATURE_ATTRIBUTION_SKEW
          | :FEATURE_ATTRIBUTION_DRIFT

  field :MODEL_DEPLOYMENT_MONITORING_OBJECTIVE_TYPE_UNSPECIFIED, 0
  field :RAW_FEATURE_SKEW, 1
  field :RAW_FEATURE_DRIFT, 2
  field :FEATURE_ATTRIBUTION_SKEW, 3
  field :FEATURE_ATTRIBUTION_DRIFT, 4
end
defmodule Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringJob.MonitoringScheduleState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :MONITORING_SCHEDULE_STATE_UNSPECIFIED | :PENDING | :OFFLINE | :RUNNING

  field :MONITORING_SCHEDULE_STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :OFFLINE, 2
  field :RUNNING, 3
end
defmodule Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringBigQueryTable.LogSource do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :LOG_SOURCE_UNSPECIFIED | :TRAINING | :SERVING

  field :LOG_SOURCE_UNSPECIFIED, 0
  field :TRAINING, 1
  field :SERVING, 2
end
defmodule Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringBigQueryTable.LogType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :LOG_TYPE_UNSPECIFIED | :PREDICT | :EXPLAIN

  field :LOG_TYPE_UNSPECIFIED, 0
  field :PREDICT, 1
  field :EXPLAIN, 2
end
defmodule Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringJob.LatestMonitoringPipelineMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          run_time: Google.Protobuf.Timestamp.t() | nil,
          status: Google.Rpc.Status.t() | nil
        }

  defstruct run_time: nil,
            status: nil

  field :run_time, 1, type: Google.Protobuf.Timestamp, json_name: "runTime"
  field :status, 2, type: Google.Rpc.Status
end
defmodule Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringJob.LabelsEntry do
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
defmodule Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          endpoint: String.t(),
          state: Google.Cloud.Aiplatform.V1beta1.JobState.t(),
          schedule_state:
            Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringJob.MonitoringScheduleState.t(),
          latest_monitoring_pipeline_metadata:
            Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringJob.LatestMonitoringPipelineMetadata.t()
            | nil,
          model_deployment_monitoring_objective_configs: [
            Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringObjectiveConfig.t()
          ],
          model_deployment_monitoring_schedule_config:
            Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringScheduleConfig.t() | nil,
          logging_sampling_strategy: Google.Cloud.Aiplatform.V1beta1.SamplingStrategy.t() | nil,
          model_monitoring_alert_config:
            Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAlertConfig.t() | nil,
          predict_instance_schema_uri: String.t(),
          sample_predict_instance: Google.Protobuf.Value.t() | nil,
          analysis_instance_schema_uri: String.t(),
          bigquery_tables: [
            Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringBigQueryTable.t()
          ],
          log_ttl: Google.Protobuf.Duration.t() | nil,
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          next_schedule_time: Google.Protobuf.Timestamp.t() | nil,
          stats_anomalies_base_directory:
            Google.Cloud.Aiplatform.V1beta1.GcsDestination.t() | nil,
          encryption_spec: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec.t() | nil,
          enable_monitoring_pipeline_logs: boolean,
          error: Google.Rpc.Status.t() | nil
        }

  defstruct name: "",
            display_name: "",
            endpoint: "",
            state: :JOB_STATE_UNSPECIFIED,
            schedule_state: :MONITORING_SCHEDULE_STATE_UNSPECIFIED,
            latest_monitoring_pipeline_metadata: nil,
            model_deployment_monitoring_objective_configs: [],
            model_deployment_monitoring_schedule_config: nil,
            logging_sampling_strategy: nil,
            model_monitoring_alert_config: nil,
            predict_instance_schema_uri: "",
            sample_predict_instance: nil,
            analysis_instance_schema_uri: "",
            bigquery_tables: [],
            log_ttl: nil,
            labels: %{},
            create_time: nil,
            update_time: nil,
            next_schedule_time: nil,
            stats_anomalies_base_directory: nil,
            encryption_spec: nil,
            enable_monitoring_pipeline_logs: false,
            error: nil

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :endpoint, 3, type: :string, deprecated: false
  field :state, 4, type: Google.Cloud.Aiplatform.V1beta1.JobState, enum: true, deprecated: false

  field :schedule_state, 5,
    type: Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringJob.MonitoringScheduleState,
    json_name: "scheduleState",
    enum: true,
    deprecated: false

  field :latest_monitoring_pipeline_metadata, 25,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringJob.LatestMonitoringPipelineMetadata,
    json_name: "latestMonitoringPipelineMetadata",
    deprecated: false

  field :model_deployment_monitoring_objective_configs, 6,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringObjectiveConfig,
    json_name: "modelDeploymentMonitoringObjectiveConfigs",
    deprecated: false

  field :model_deployment_monitoring_schedule_config, 7,
    type: Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringScheduleConfig,
    json_name: "modelDeploymentMonitoringScheduleConfig",
    deprecated: false

  field :logging_sampling_strategy, 8,
    type: Google.Cloud.Aiplatform.V1beta1.SamplingStrategy,
    json_name: "loggingSamplingStrategy",
    deprecated: false

  field :model_monitoring_alert_config, 15,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAlertConfig,
    json_name: "modelMonitoringAlertConfig"

  field :predict_instance_schema_uri, 9, type: :string, json_name: "predictInstanceSchemaUri"

  field :sample_predict_instance, 19,
    type: Google.Protobuf.Value,
    json_name: "samplePredictInstance"

  field :analysis_instance_schema_uri, 16, type: :string, json_name: "analysisInstanceSchemaUri"

  field :bigquery_tables, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringBigQueryTable,
    json_name: "bigqueryTables",
    deprecated: false

  field :log_ttl, 17, type: Google.Protobuf.Duration, json_name: "logTtl"

  field :labels, 11,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringJob.LabelsEntry,
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
    type: Google.Cloud.Aiplatform.V1beta1.GcsDestination,
    json_name: "statsAnomaliesBaseDirectory"

  field :encryption_spec, 21,
    type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec,
    json_name: "encryptionSpec"

  field :enable_monitoring_pipeline_logs, 22,
    type: :bool,
    json_name: "enableMonitoringPipelineLogs"

  field :error, 23, type: Google.Rpc.Status, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringBigQueryTable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          log_source:
            Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringBigQueryTable.LogSource.t(),
          log_type:
            Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringBigQueryTable.LogType.t(),
          bigquery_table_path: String.t()
        }

  defstruct log_source: :LOG_SOURCE_UNSPECIFIED,
            log_type: :LOG_TYPE_UNSPECIFIED,
            bigquery_table_path: ""

  field :log_source, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringBigQueryTable.LogSource,
    json_name: "logSource",
    enum: true

  field :log_type, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringBigQueryTable.LogType,
    json_name: "logType",
    enum: true

  field :bigquery_table_path, 3, type: :string, json_name: "bigqueryTablePath"
end
defmodule Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringObjectiveConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          deployed_model_id: String.t(),
          objective_config:
            Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.t() | nil
        }

  defstruct deployed_model_id: "",
            objective_config: nil

  field :deployed_model_id, 1, type: :string, json_name: "deployedModelId"

  field :objective_config, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig,
    json_name: "objectiveConfig"
end
defmodule Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringScheduleConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          monitor_interval: Google.Protobuf.Duration.t() | nil
        }

  defstruct monitor_interval: nil

  field :monitor_interval, 1,
    type: Google.Protobuf.Duration,
    json_name: "monitorInterval",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringStatsAnomalies.FeatureHistoricStatsAnomalies do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feature_display_name: String.t(),
          threshold: Google.Cloud.Aiplatform.V1beta1.ThresholdConfig.t() | nil,
          training_stats: Google.Cloud.Aiplatform.V1beta1.FeatureStatsAnomaly.t() | nil,
          prediction_stats: [Google.Cloud.Aiplatform.V1beta1.FeatureStatsAnomaly.t()]
        }

  defstruct feature_display_name: "",
            threshold: nil,
            training_stats: nil,
            prediction_stats: []

  field :feature_display_name, 1, type: :string, json_name: "featureDisplayName"
  field :threshold, 3, type: Google.Cloud.Aiplatform.V1beta1.ThresholdConfig

  field :training_stats, 4,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureStatsAnomaly,
    json_name: "trainingStats"

  field :prediction_stats, 5,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureStatsAnomaly,
    json_name: "predictionStats"
end
defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringStatsAnomalies do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          objective: Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringObjectiveType.t(),
          deployed_model_id: String.t(),
          anomaly_count: integer,
          feature_stats: [
            Google.Cloud.Aiplatform.V1beta1.ModelMonitoringStatsAnomalies.FeatureHistoricStatsAnomalies.t()
          ]
        }

  defstruct objective: :MODEL_DEPLOYMENT_MONITORING_OBJECTIVE_TYPE_UNSPECIFIED,
            deployed_model_id: "",
            anomaly_count: 0,
            feature_stats: []

  field :objective, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringObjectiveType,
    enum: true

  field :deployed_model_id, 2, type: :string, json_name: "deployedModelId"
  field :anomaly_count, 3, type: :int32, json_name: "anomalyCount"

  field :feature_stats, 4,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringStatsAnomalies.FeatureHistoricStatsAnomalies,
    json_name: "featureStats"
end
