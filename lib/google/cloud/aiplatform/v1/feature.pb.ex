defmodule Google.Cloud.Aiplatform.V1.Feature.ValueType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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
  field :STRUCT, 14
end

defmodule Google.Cloud.Aiplatform.V1.Feature.MonitoringStatsAnomaly.Objective do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :OBJECTIVE_UNSPECIFIED, 0
  field :IMPORT_FEATURE_ANALYSIS, 1
  field :SNAPSHOT_ANALYSIS, 2
end

defmodule Google.Cloud.Aiplatform.V1.Feature.MonitoringStatsAnomaly do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :objective, 1,
    type: Google.Cloud.Aiplatform.V1.Feature.MonitoringStatsAnomaly.Objective,
    enum: true,
    deprecated: false

  field :feature_stats_anomaly, 2,
    type: Google.Cloud.Aiplatform.V1.FeatureStatsAnomaly,
    json_name: "featureStatsAnomaly",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.Feature.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.Feature do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string

  field :value_type, 3,
    type: Google.Cloud.Aiplatform.V1.Feature.ValueType,
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
    type: Google.Cloud.Aiplatform.V1.Feature.LabelsEntry,
    map: true,
    deprecated: false

  field :etag, 7, type: :string
  field :disable_monitoring, 12, type: :bool, json_name: "disableMonitoring", deprecated: false

  field :monitoring_stats_anomalies, 11,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Feature.MonitoringStatsAnomaly,
    json_name: "monitoringStatsAnomalies",
    deprecated: false

  field :version_column_name, 106, type: :string, json_name: "versionColumnName"
  field :point_of_contact, 107, type: :string, json_name: "pointOfContact"
end
