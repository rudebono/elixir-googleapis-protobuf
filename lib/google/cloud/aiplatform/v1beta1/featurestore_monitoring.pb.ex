defmodule Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig.ImportFeaturesAnalysis.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :DEFAULT, 1
  field :ENABLED, 2
  field :DISABLED, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig.ImportFeaturesAnalysis.Baseline do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :BASELINE_UNSPECIFIED, 0
  field :LATEST_STATS, 1
  field :MOST_RECENT_SNAPSHOT_STATS, 2
  field :PREVIOUS_IMPORT_FEATURES_STATS, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig.SnapshotAnalysis do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :disabled, 1, type: :bool

  field :monitoring_interval, 2,
    type: Google.Protobuf.Duration,
    json_name: "monitoringInterval",
    deprecated: true

  field :monitoring_interval_days, 3, type: :int32, json_name: "monitoringIntervalDays"
  field :staleness_days, 4, type: :int32, json_name: "stalenessDays"
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig.ImportFeaturesAnalysis do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :state, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig.ImportFeaturesAnalysis.State,
    enum: true

  field :anomaly_detection_baseline, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig.ImportFeaturesAnalysis.Baseline,
    json_name: "anomalyDetectionBaseline",
    enum: true
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig.ThresholdConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :threshold, 0

  field :value, 1, type: :double, oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :snapshot_analysis, 1,
    type: Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig.SnapshotAnalysis,
    json_name: "snapshotAnalysis"

  field :import_features_analysis, 2,
    type: Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig.ImportFeaturesAnalysis,
    json_name: "importFeaturesAnalysis"

  field :numerical_threshold_config, 3,
    type: Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig.ThresholdConfig,
    json_name: "numericalThresholdConfig"

  field :categorical_threshold_config, 4,
    type: Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig.ThresholdConfig,
    json_name: "categoricalThresholdConfig"
end