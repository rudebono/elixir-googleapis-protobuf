defmodule Google.Cloud.Aiplatform.V1.FeaturestoreMonitoringConfig.ImportFeaturesAnalysis.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :DEFAULT | :ENABLED | :DISABLED

  field :STATE_UNSPECIFIED, 0
  field :DEFAULT, 1
  field :ENABLED, 2
  field :DISABLED, 3
end
defmodule Google.Cloud.Aiplatform.V1.FeaturestoreMonitoringConfig.ImportFeaturesAnalysis.Baseline do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :BASELINE_UNSPECIFIED
          | :LATEST_STATS
          | :MOST_RECENT_SNAPSHOT_STATS
          | :PREVIOUS_IMPORT_FEATURES_STATS

  field :BASELINE_UNSPECIFIED, 0
  field :LATEST_STATS, 1
  field :MOST_RECENT_SNAPSHOT_STATS, 2
  field :PREVIOUS_IMPORT_FEATURES_STATS, 3
end
defmodule Google.Cloud.Aiplatform.V1.FeaturestoreMonitoringConfig.SnapshotAnalysis do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disabled: boolean,
          monitoring_interval_days: integer,
          staleness_days: integer
        }

  defstruct disabled: false,
            monitoring_interval_days: 0,
            staleness_days: 0

  field :disabled, 1, type: :bool
  field :monitoring_interval_days, 3, type: :int32, json_name: "monitoringIntervalDays"
  field :staleness_days, 4, type: :int32, json_name: "stalenessDays"
end
defmodule Google.Cloud.Aiplatform.V1.FeaturestoreMonitoringConfig.ImportFeaturesAnalysis do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state:
            Google.Cloud.Aiplatform.V1.FeaturestoreMonitoringConfig.ImportFeaturesAnalysis.State.t(),
          anomaly_detection_baseline:
            Google.Cloud.Aiplatform.V1.FeaturestoreMonitoringConfig.ImportFeaturesAnalysis.Baseline.t()
        }

  defstruct state: :STATE_UNSPECIFIED,
            anomaly_detection_baseline: :BASELINE_UNSPECIFIED

  field :state, 1,
    type: Google.Cloud.Aiplatform.V1.FeaturestoreMonitoringConfig.ImportFeaturesAnalysis.State,
    enum: true

  field :anomaly_detection_baseline, 2,
    type: Google.Cloud.Aiplatform.V1.FeaturestoreMonitoringConfig.ImportFeaturesAnalysis.Baseline,
    json_name: "anomalyDetectionBaseline",
    enum: true
end
defmodule Google.Cloud.Aiplatform.V1.FeaturestoreMonitoringConfig.ThresholdConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          threshold: {:value, float | :infinity | :negative_infinity | :nan}
        }

  defstruct threshold: nil

  oneof :threshold, 0

  field :value, 1, type: :double, oneof: 0
end
defmodule Google.Cloud.Aiplatform.V1.FeaturestoreMonitoringConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshot_analysis:
            Google.Cloud.Aiplatform.V1.FeaturestoreMonitoringConfig.SnapshotAnalysis.t() | nil,
          import_features_analysis:
            Google.Cloud.Aiplatform.V1.FeaturestoreMonitoringConfig.ImportFeaturesAnalysis.t()
            | nil,
          numerical_threshold_config:
            Google.Cloud.Aiplatform.V1.FeaturestoreMonitoringConfig.ThresholdConfig.t() | nil,
          categorical_threshold_config:
            Google.Cloud.Aiplatform.V1.FeaturestoreMonitoringConfig.ThresholdConfig.t() | nil
        }

  defstruct snapshot_analysis: nil,
            import_features_analysis: nil,
            numerical_threshold_config: nil,
            categorical_threshold_config: nil

  field :snapshot_analysis, 1,
    type: Google.Cloud.Aiplatform.V1.FeaturestoreMonitoringConfig.SnapshotAnalysis,
    json_name: "snapshotAnalysis"

  field :import_features_analysis, 2,
    type: Google.Cloud.Aiplatform.V1.FeaturestoreMonitoringConfig.ImportFeaturesAnalysis,
    json_name: "importFeaturesAnalysis"

  field :numerical_threshold_config, 3,
    type: Google.Cloud.Aiplatform.V1.FeaturestoreMonitoringConfig.ThresholdConfig,
    json_name: "numericalThresholdConfig"

  field :categorical_threshold_config, 4,
    type: Google.Cloud.Aiplatform.V1.FeaturestoreMonitoringConfig.ThresholdConfig,
    json_name: "categoricalThresholdConfig"
end
