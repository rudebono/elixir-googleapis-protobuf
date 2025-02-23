defmodule Google.Cloud.Aiplatform.V1beta1.FeatureMonitorJob.FeatureMonitorJobTrigger do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FEATURE_MONITOR_JOB_TRIGGER_UNSPECIFIED, 0
  field :FEATURE_MONITOR_JOB_TRIGGER_PERIODIC, 1
  field :FEATURE_MONITOR_JOB_TRIGGER_ON_DEMAND, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureMonitorJob.JobSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :total_slot_ms, 1, type: :int64, json_name: "totalSlotMs", deprecated: false

  field :feature_stats_and_anomalies, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureStatsAndAnomaly,
    json_name: "featureStatsAndAnomalies",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureMonitorJob.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureMonitorJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :final_status, 3, type: Google.Rpc.Status, json_name: "finalStatus", deprecated: false

  field :job_summary, 4,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureMonitorJob.JobSummary,
    json_name: "jobSummary",
    deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureMonitorJob.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 6, type: :string, deprecated: false

  field :drift_base_feature_monitor_job_id, 7,
    type: :int64,
    json_name: "driftBaseFeatureMonitorJobId",
    deprecated: false

  field :drift_base_snapshot_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "driftBaseSnapshotTime",
    deprecated: false

  field :feature_selection_config, 9,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureSelectionConfig,
    json_name: "featureSelectionConfig",
    deprecated: false

  field :trigger_type, 10,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureMonitorJob.FeatureMonitorJobTrigger,
    json_name: "triggerType",
    enum: true,
    deprecated: false
end
