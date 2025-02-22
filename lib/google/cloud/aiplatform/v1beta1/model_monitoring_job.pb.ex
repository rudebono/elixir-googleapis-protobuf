defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"

  field :model_monitoring_spec, 3,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringSpec,
    json_name: "modelMonitoringSpec"

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 6, type: Google.Cloud.Aiplatform.V1beta1.JobState, enum: true, deprecated: false
  field :schedule, 7, type: :string, deprecated: false

  field :job_execution_detail, 8,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringJobExecutionDetail,
    json_name: "jobExecutionDetail",
    deprecated: false

  field :schedule_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "scheduleTime",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringJobExecutionDetail.ProcessedDataset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :location, 1, type: :string
  field :time_range, 2, type: Google.Type.Interval, json_name: "timeRange"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringJobExecutionDetail.ObjectiveStatusEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Rpc.Status
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringJobExecutionDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :baseline_datasets, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringJobExecutionDetail.ProcessedDataset,
    json_name: "baselineDatasets"

  field :target_datasets, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringJobExecutionDetail.ProcessedDataset,
    json_name: "targetDatasets"

  field :objective_status, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringJobExecutionDetail.ObjectiveStatusEntry,
    json_name: "objectiveStatus",
    map: true

  field :error, 4, type: Google.Rpc.Status
end
