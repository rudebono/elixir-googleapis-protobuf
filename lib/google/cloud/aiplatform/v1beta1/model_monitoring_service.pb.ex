defmodule Google.Cloud.Aiplatform.V1beta1.CreateModelMonitorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :model_monitor, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitor,
    json_name: "modelMonitor",
    deprecated: false

  field :model_monitor_id, 3, type: :string, json_name: "modelMonitorId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateModelMonitorOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateModelMonitorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :model_monitor, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitor,
    json_name: "modelMonitor",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateModelMonitorOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetModelMonitorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListModelMonitorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListModelMonitorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :model_monitors, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitor,
    json_name: "modelMonitors"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteModelMonitorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateModelMonitoringJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :model_monitoring_job, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringJob,
    json_name: "modelMonitoringJob",
    deprecated: false

  field :model_monitoring_job_id, 3,
    type: :string,
    json_name: "modelMonitoringJobId",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetModelMonitoringJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListModelMonitoringJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListModelMonitoringJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :model_monitoring_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringJob,
    json_name: "modelMonitoringJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteModelMonitoringJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SearchModelMonitoringStatsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :model_monitor, 1, type: :string, json_name: "modelMonitor", deprecated: false

  field :stats_filter, 2,
    type: Google.Cloud.Aiplatform.V1beta1.SearchModelMonitoringStatsFilter,
    json_name: "statsFilter"

  field :time_interval, 3, type: Google.Type.Interval, json_name: "timeInterval"
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.SearchModelMonitoringStatsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :monitoring_stats, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringStats,
    json_name: "monitoringStats"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.SearchModelMonitoringAlertsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :model_monitor, 1, type: :string, json_name: "modelMonitor", deprecated: false
  field :model_monitoring_job, 2, type: :string, json_name: "modelMonitoringJob"
  field :alert_time_interval, 3, type: Google.Type.Interval, json_name: "alertTimeInterval"
  field :stats_name, 4, type: :string, json_name: "statsName"
  field :objective_type, 5, type: :string, json_name: "objectiveType"
  field :page_size, 6, type: :int32, json_name: "pageSize"
  field :page_token, 7, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.SearchModelMonitoringAlertsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :model_monitoring_alerts, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAlert,
    json_name: "modelMonitoringAlerts"

  field :total_number_alerts, 2, type: :int64, json_name: "totalNumberAlerts"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.ModelMonitoringService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateModelMonitor,
      Google.Cloud.Aiplatform.V1beta1.CreateModelMonitorRequest,
      Google.Longrunning.Operation

  rpc :UpdateModelMonitor,
      Google.Cloud.Aiplatform.V1beta1.UpdateModelMonitorRequest,
      Google.Longrunning.Operation

  rpc :GetModelMonitor,
      Google.Cloud.Aiplatform.V1beta1.GetModelMonitorRequest,
      Google.Cloud.Aiplatform.V1beta1.ModelMonitor

  rpc :ListModelMonitors,
      Google.Cloud.Aiplatform.V1beta1.ListModelMonitorsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListModelMonitorsResponse

  rpc :DeleteModelMonitor,
      Google.Cloud.Aiplatform.V1beta1.DeleteModelMonitorRequest,
      Google.Longrunning.Operation

  rpc :CreateModelMonitoringJob,
      Google.Cloud.Aiplatform.V1beta1.CreateModelMonitoringJobRequest,
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringJob

  rpc :GetModelMonitoringJob,
      Google.Cloud.Aiplatform.V1beta1.GetModelMonitoringJobRequest,
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringJob

  rpc :ListModelMonitoringJobs,
      Google.Cloud.Aiplatform.V1beta1.ListModelMonitoringJobsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListModelMonitoringJobsResponse

  rpc :DeleteModelMonitoringJob,
      Google.Cloud.Aiplatform.V1beta1.DeleteModelMonitoringJobRequest,
      Google.Longrunning.Operation

  rpc :SearchModelMonitoringStats,
      Google.Cloud.Aiplatform.V1beta1.SearchModelMonitoringStatsRequest,
      Google.Cloud.Aiplatform.V1beta1.SearchModelMonitoringStatsResponse

  rpc :SearchModelMonitoringAlerts,
      Google.Cloud.Aiplatform.V1beta1.SearchModelMonitoringAlertsRequest,
      Google.Cloud.Aiplatform.V1beta1.SearchModelMonitoringAlertsResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringService.Service
end