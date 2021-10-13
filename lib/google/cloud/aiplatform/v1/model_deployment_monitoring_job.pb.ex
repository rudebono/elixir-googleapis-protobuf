defmodule Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringObjectiveType do
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

defmodule Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob.MonitoringScheduleState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MONITORING_SCHEDULE_STATE_UNSPECIFIED | :PENDING | :OFFLINE | :RUNNING

  field :MONITORING_SCHEDULE_STATE_UNSPECIFIED, 0

  field :PENDING, 1

  field :OFFLINE, 2

  field :RUNNING, 3
end

defmodule Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringBigQueryTable.LogSource do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :LOG_SOURCE_UNSPECIFIED | :TRAINING | :SERVING

  field :LOG_SOURCE_UNSPECIFIED, 0

  field :TRAINING, 1

  field :SERVING, 2
end

defmodule Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringBigQueryTable.LogType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :LOG_TYPE_UNSPECIFIED | :PREDICT | :EXPLAIN

  field :LOG_TYPE_UNSPECIFIED, 0

  field :PREDICT, 1

  field :EXPLAIN, 2
end

defmodule Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob.LabelsEntry do
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

defmodule Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          endpoint: String.t(),
          state: Google.Cloud.Aiplatform.V1.JobState.t(),
          schedule_state:
            Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob.MonitoringScheduleState.t(),
          model_deployment_monitoring_objective_configs: [
            Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringObjectiveConfig.t()
          ],
          model_deployment_monitoring_schedule_config:
            Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringScheduleConfig.t() | nil,
          logging_sampling_strategy: Google.Cloud.Aiplatform.V1.SamplingStrategy.t() | nil,
          model_monitoring_alert_config:
            Google.Cloud.Aiplatform.V1.ModelMonitoringAlertConfig.t() | nil,
          predict_instance_schema_uri: String.t(),
          sample_predict_instance: Google.Protobuf.Value.t() | nil,
          analysis_instance_schema_uri: String.t(),
          bigquery_tables: [Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringBigQueryTable.t()],
          log_ttl: Google.Protobuf.Duration.t() | nil,
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          next_schedule_time: Google.Protobuf.Timestamp.t() | nil,
          stats_anomalies_base_directory: Google.Cloud.Aiplatform.V1.GcsDestination.t() | nil,
          encryption_spec: Google.Cloud.Aiplatform.V1.EncryptionSpec.t() | nil,
          enable_monitoring_pipeline_logs: boolean,
          error: Google.Rpc.Status.t() | nil
        }

  defstruct [
    :name,
    :display_name,
    :endpoint,
    :state,
    :schedule_state,
    :model_deployment_monitoring_objective_configs,
    :model_deployment_monitoring_schedule_config,
    :logging_sampling_strategy,
    :model_monitoring_alert_config,
    :predict_instance_schema_uri,
    :sample_predict_instance,
    :analysis_instance_schema_uri,
    :bigquery_tables,
    :log_ttl,
    :labels,
    :create_time,
    :update_time,
    :next_schedule_time,
    :stats_anomalies_base_directory,
    :encryption_spec,
    :enable_monitoring_pipeline_logs,
    :error
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :endpoint, 3, type: :string
  field :state, 4, type: Google.Cloud.Aiplatform.V1.JobState, enum: true

  field :schedule_state, 5,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob.MonitoringScheduleState,
    enum: true

  field :model_deployment_monitoring_objective_configs, 6,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringObjectiveConfig

  field :model_deployment_monitoring_schedule_config, 7,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringScheduleConfig

  field :logging_sampling_strategy, 8, type: Google.Cloud.Aiplatform.V1.SamplingStrategy

  field :model_monitoring_alert_config, 15,
    type: Google.Cloud.Aiplatform.V1.ModelMonitoringAlertConfig

  field :predict_instance_schema_uri, 9, type: :string
  field :sample_predict_instance, 19, type: Google.Protobuf.Value
  field :analysis_instance_schema_uri, 16, type: :string

  field :bigquery_tables, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringBigQueryTable

  field :log_ttl, 17, type: Google.Protobuf.Duration

  field :labels, 11,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob.LabelsEntry,
    map: true

  field :create_time, 12, type: Google.Protobuf.Timestamp
  field :update_time, 13, type: Google.Protobuf.Timestamp
  field :next_schedule_time, 14, type: Google.Protobuf.Timestamp
  field :stats_anomalies_base_directory, 20, type: Google.Cloud.Aiplatform.V1.GcsDestination
  field :encryption_spec, 21, type: Google.Cloud.Aiplatform.V1.EncryptionSpec
  field :enable_monitoring_pipeline_logs, 22, type: :bool
  field :error, 23, type: Google.Rpc.Status
end

defmodule Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringBigQueryTable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          log_source:
            Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringBigQueryTable.LogSource.t(),
          log_type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringBigQueryTable.LogType.t(),
          bigquery_table_path: String.t()
        }

  defstruct [:log_source, :log_type, :bigquery_table_path]

  field :log_source, 1,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringBigQueryTable.LogSource,
    enum: true

  field :log_type, 2,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringBigQueryTable.LogType,
    enum: true

  field :bigquery_table_path, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringObjectiveConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          deployed_model_id: String.t(),
          objective_config: Google.Cloud.Aiplatform.V1.ModelMonitoringObjectiveConfig.t() | nil
        }

  defstruct [:deployed_model_id, :objective_config]

  field :deployed_model_id, 1, type: :string
  field :objective_config, 2, type: Google.Cloud.Aiplatform.V1.ModelMonitoringObjectiveConfig
end

defmodule Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringScheduleConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          monitor_interval: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:monitor_interval]

  field :monitor_interval, 1, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Aiplatform.V1.ModelMonitoringStatsAnomalies.FeatureHistoricStatsAnomalies do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feature_display_name: String.t(),
          threshold: Google.Cloud.Aiplatform.V1.ThresholdConfig.t() | nil,
          training_stats: Google.Cloud.Aiplatform.V1.FeatureStatsAnomaly.t() | nil,
          prediction_stats: [Google.Cloud.Aiplatform.V1.FeatureStatsAnomaly.t()]
        }

  defstruct [:feature_display_name, :threshold, :training_stats, :prediction_stats]

  field :feature_display_name, 1, type: :string
  field :threshold, 3, type: Google.Cloud.Aiplatform.V1.ThresholdConfig
  field :training_stats, 4, type: Google.Cloud.Aiplatform.V1.FeatureStatsAnomaly
  field :prediction_stats, 5, repeated: true, type: Google.Cloud.Aiplatform.V1.FeatureStatsAnomaly
end

defmodule Google.Cloud.Aiplatform.V1.ModelMonitoringStatsAnomalies do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          objective: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringObjectiveType.t(),
          deployed_model_id: String.t(),
          anomaly_count: integer,
          feature_stats: [
            Google.Cloud.Aiplatform.V1.ModelMonitoringStatsAnomalies.FeatureHistoricStatsAnomalies.t()
          ]
        }

  defstruct [:objective, :deployed_model_id, :anomaly_count, :feature_stats]

  field :objective, 1,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringObjectiveType,
    enum: true

  field :deployed_model_id, 2, type: :string
  field :anomaly_count, 3, type: :int32

  field :feature_stats, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModelMonitoringStatsAnomalies.FeatureHistoricStatsAnomalies
end
