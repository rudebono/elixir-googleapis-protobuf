defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :stats, 0

  field :tabular_stats, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringTabularStats,
    json_name: "tabularStats",
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringStatsDataPoint.TypedValue.DistributionDataValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :distribution, 1, type: Google.Protobuf.Value
  field :distribution_deviation, 2, type: :double, json_name: "distributionDeviation"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringStatsDataPoint.TypedValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :value, 0

  field :double_value, 1, type: :double, json_name: "doubleValue", oneof: 0

  field :distribution_value, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringStatsDataPoint.TypedValue.DistributionDataValue,
    json_name: "distributionValue",
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringStatsDataPoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :current_stats, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringStatsDataPoint.TypedValue,
    json_name: "currentStats"

  field :baseline_stats, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringStatsDataPoint.TypedValue,
    json_name: "baselineStats"

  field :threshold_value, 3, type: :double, json_name: "thresholdValue"
  field :has_anomaly, 4, type: :bool, json_name: "hasAnomaly"
  field :model_monitoring_job, 5, type: :string, json_name: "modelMonitoringJob"
  field :schedule, 6, type: :string
  field :create_time, 7, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :algorithm, 8, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringTabularStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :stats_name, 1, type: :string, json_name: "statsName"
  field :objective_type, 2, type: :string, json_name: "objectiveType"

  field :data_points, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringStatsDataPoint,
    json_name: "dataPoints"
end

defmodule Google.Cloud.Aiplatform.V1beta1.SearchModelMonitoringStatsFilter.TabularStatsFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :stats_name, 1, type: :string, json_name: "statsName"
  field :objective_type, 2, type: :string, json_name: "objectiveType"
  field :model_monitoring_job, 3, type: :string, json_name: "modelMonitoringJob"
  field :model_monitoring_schedule, 4, type: :string, json_name: "modelMonitoringSchedule"
  field :algorithm, 5, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.SearchModelMonitoringStatsFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :filter, 0

  field :tabular_stats_filter, 1,
    type: Google.Cloud.Aiplatform.V1beta1.SearchModelMonitoringStatsFilter.TabularStatsFilter,
    json_name: "tabularStatsFilter",
    oneof: 0
end