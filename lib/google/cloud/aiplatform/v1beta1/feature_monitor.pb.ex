defmodule Google.Cloud.Aiplatform.V1beta1.FeatureMonitor.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureMonitor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 4, type: :string, deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureMonitor.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 6, type: :string, deprecated: false

  field :schedule_config, 7,
    type: Google.Cloud.Aiplatform.V1beta1.ScheduleConfig,
    json_name: "scheduleConfig",
    deprecated: false

  field :feature_selection_config, 8,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureSelectionConfig,
    json_name: "featureSelectionConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ScheduleConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cron, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureSelectionConfig.FeatureConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :feature_id, 1, type: :string, json_name: "featureId", deprecated: false
  field :drift_threshold, 2, type: :double, json_name: "driftThreshold", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureSelectionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :feature_configs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureSelectionConfig.FeatureConfig,
    json_name: "featureConfigs",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureStatsAndAnomaly do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :feature_id, 1, type: :string, json_name: "featureId"
  field :feature_stats, 2, type: Google.Protobuf.Value, json_name: "featureStats"
  field :distribution_deviation, 3, type: :double, json_name: "distributionDeviation"
  field :drift_detection_threshold, 4, type: :double, json_name: "driftDetectionThreshold"
  field :drift_detected, 5, type: :bool, json_name: "driftDetected"
  field :stats_time, 6, type: Google.Protobuf.Timestamp, json_name: "statsTime"
  field :feature_monitor_job_id, 7, type: :int64, json_name: "featureMonitorJobId"
  field :feature_monitor_id, 8, type: :string, json_name: "featureMonitorId"
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureStatsAndAnomalySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :latest_stats_count, 1,
    proto3_optional: true,
    type: :int32,
    json_name: "latestStatsCount",
    deprecated: false

  field :stats_time_range, 2,
    type: Google.Type.Interval,
    json_name: "statsTimeRange",
    deprecated: false
end
