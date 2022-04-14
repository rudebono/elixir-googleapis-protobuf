defmodule Google.Cloud.Aiplatform.V1beta1.Feature.ValueType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :VALUE_TYPE_UNSPECIFIED
          | :BOOL
          | :BOOL_ARRAY
          | :DOUBLE
          | :DOUBLE_ARRAY
          | :INT64
          | :INT64_ARRAY
          | :STRING
          | :STRING_ARRAY
          | :BYTES

  field :VALUE_TYPE_UNSPECIFIED, 0
  field :BOOL, 1
  field :BOOL_ARRAY, 2
  field :DOUBLE, 3
  field :DOUBLE_ARRAY, 4
  field :INT64, 9
  field :INT64_ARRAY, 10
  field :STRING, 11
  field :STRING_ARRAY, 12
  field :BYTES, 13
end
defmodule Google.Cloud.Aiplatform.V1beta1.Feature.MonitoringStatsAnomaly.Objective do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :OBJECTIVE_UNSPECIFIED | :IMPORT_FEATURE_ANALYSIS | :SNAPSHOT_ANALYSIS

  field :OBJECTIVE_UNSPECIFIED, 0
  field :IMPORT_FEATURE_ANALYSIS, 1
  field :SNAPSHOT_ANALYSIS, 2
end
defmodule Google.Cloud.Aiplatform.V1beta1.Feature.MonitoringStatsAnomaly do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          objective: Google.Cloud.Aiplatform.V1beta1.Feature.MonitoringStatsAnomaly.Objective.t(),
          feature_stats_anomaly: Google.Cloud.Aiplatform.V1beta1.FeatureStatsAnomaly.t() | nil
        }

  defstruct objective: :OBJECTIVE_UNSPECIFIED,
            feature_stats_anomaly: nil

  field :objective, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Feature.MonitoringStatsAnomaly.Objective,
    enum: true,
    deprecated: false

  field :feature_stats_anomaly, 2,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureStatsAnomaly,
    json_name: "featureStatsAnomaly",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.Feature.LabelsEntry do
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
defmodule Google.Cloud.Aiplatform.V1beta1.Feature do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          value_type: Google.Cloud.Aiplatform.V1beta1.Feature.ValueType.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          etag: String.t(),
          monitoring_config:
            Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig.t() | nil,
          disable_monitoring: boolean,
          monitoring_stats: [Google.Cloud.Aiplatform.V1beta1.FeatureStatsAnomaly.t()],
          monitoring_stats_anomalies: [
            Google.Cloud.Aiplatform.V1beta1.Feature.MonitoringStatsAnomaly.t()
          ]
        }

  defstruct name: "",
            description: "",
            value_type: :VALUE_TYPE_UNSPECIFIED,
            create_time: nil,
            update_time: nil,
            labels: %{},
            etag: "",
            monitoring_config: nil,
            disable_monitoring: false,
            monitoring_stats: [],
            monitoring_stats_anomalies: []

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string

  field :value_type, 3,
    type: Google.Cloud.Aiplatform.V1beta1.Feature.ValueType,
    json_name: "valueType",
    enum: true,
    deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Feature.LabelsEntry,
    map: true,
    deprecated: false

  field :etag, 7, type: :string

  field :monitoring_config, 9,
    type: Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig,
    json_name: "monitoringConfig",
    deprecated: true

  field :disable_monitoring, 12, type: :bool, json_name: "disableMonitoring", deprecated: false

  field :monitoring_stats, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureStatsAnomaly,
    json_name: "monitoringStats",
    deprecated: false

  field :monitoring_stats_anomalies, 11,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Feature.MonitoringStatsAnomaly,
    json_name: "monitoringStatsAnomalies",
    deprecated: false
end
