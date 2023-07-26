defmodule Google.Cloud.Dataplex.V1.CreateLakeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :lake_id, 2, type: :string, json_name: "lakeId", deprecated: false
  field :lake, 3, type: Google.Cloud.Dataplex.V1.Lake, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.UpdateLakeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :lake, 2, type: Google.Cloud.Dataplex.V1.Lake, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DeleteLakeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListLakesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListLakesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :lakes, 1, repeated: true, type: Google.Cloud.Dataplex.V1.Lake
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_locations, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableLocations"
end

defmodule Google.Cloud.Dataplex.V1.ListLakeActionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListActionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :actions, 1, repeated: true, type: Google.Cloud.Dataplex.V1.Action
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dataplex.V1.GetLakeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.CreateZoneRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :zone_id, 2, type: :string, json_name: "zoneId", deprecated: false
  field :zone, 3, type: Google.Cloud.Dataplex.V1.Zone, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.UpdateZoneRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :zone, 2, type: Google.Cloud.Dataplex.V1.Zone, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DeleteZoneRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListZonesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListZonesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :zones, 1, repeated: true, type: Google.Cloud.Dataplex.V1.Zone
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dataplex.V1.ListZoneActionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.GetZoneRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.CreateAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :asset_id, 2, type: :string, json_name: "assetId", deprecated: false
  field :asset, 3, type: Google.Cloud.Dataplex.V1.Asset, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.UpdateAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :asset, 2, type: Google.Cloud.Dataplex.V1.Asset, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DeleteAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListAssetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListAssetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :assets, 1, repeated: true, type: Google.Cloud.Dataplex.V1.Asset
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dataplex.V1.ListAssetActionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.GetAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.CreateTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :task_id, 2, type: :string, json_name: "taskId", deprecated: false
  field :task, 3, type: Google.Cloud.Dataplex.V1.Task, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.UpdateTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :task, 2, type: Google.Cloud.Dataplex.V1.Task, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DeleteTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListTasksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListTasksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tasks, 1, repeated: true, type: Google.Cloud.Dataplex.V1.Task
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_locations, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableLocations"
end

defmodule Google.Cloud.Dataplex.V1.GetTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.GetJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.RunTaskRequest.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataplex.V1.RunTaskRequest.ArgsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataplex.V1.RunTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.RunTaskRequest.LabelsEntry,
    map: true,
    deprecated: false

  field :args, 4,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.RunTaskRequest.ArgsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.RunTaskResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :job, 1, type: Google.Cloud.Dataplex.V1.Job
end

defmodule Google.Cloud.Dataplex.V1.ListJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :jobs, 1, repeated: true, type: Google.Cloud.Dataplex.V1.Job
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dataplex.V1.CancelJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.CreateEnvironmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :environment_id, 2, type: :string, json_name: "environmentId", deprecated: false
  field :environment, 3, type: Google.Cloud.Dataplex.V1.Environment, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.UpdateEnvironmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :environment, 2, type: Google.Cloud.Dataplex.V1.Environment, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DeleteEnvironmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListEnvironmentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListEnvironmentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :environments, 1, repeated: true, type: Google.Cloud.Dataplex.V1.Environment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dataplex.V1.GetEnvironmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListSessionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListSessionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :sessions, 1, repeated: true, type: Google.Cloud.Dataplex.V1.Session
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dataplex.V1.DataplexService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dataplex.v1.DataplexService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateLake, Google.Cloud.Dataplex.V1.CreateLakeRequest, Google.Longrunning.Operation

  rpc :UpdateLake, Google.Cloud.Dataplex.V1.UpdateLakeRequest, Google.Longrunning.Operation

  rpc :DeleteLake, Google.Cloud.Dataplex.V1.DeleteLakeRequest, Google.Longrunning.Operation

  rpc :ListLakes,
      Google.Cloud.Dataplex.V1.ListLakesRequest,
      Google.Cloud.Dataplex.V1.ListLakesResponse

  rpc :GetLake, Google.Cloud.Dataplex.V1.GetLakeRequest, Google.Cloud.Dataplex.V1.Lake

  rpc :ListLakeActions,
      Google.Cloud.Dataplex.V1.ListLakeActionsRequest,
      Google.Cloud.Dataplex.V1.ListActionsResponse

  rpc :CreateZone, Google.Cloud.Dataplex.V1.CreateZoneRequest, Google.Longrunning.Operation

  rpc :UpdateZone, Google.Cloud.Dataplex.V1.UpdateZoneRequest, Google.Longrunning.Operation

  rpc :DeleteZone, Google.Cloud.Dataplex.V1.DeleteZoneRequest, Google.Longrunning.Operation

  rpc :ListZones,
      Google.Cloud.Dataplex.V1.ListZonesRequest,
      Google.Cloud.Dataplex.V1.ListZonesResponse

  rpc :GetZone, Google.Cloud.Dataplex.V1.GetZoneRequest, Google.Cloud.Dataplex.V1.Zone

  rpc :ListZoneActions,
      Google.Cloud.Dataplex.V1.ListZoneActionsRequest,
      Google.Cloud.Dataplex.V1.ListActionsResponse

  rpc :CreateAsset, Google.Cloud.Dataplex.V1.CreateAssetRequest, Google.Longrunning.Operation

  rpc :UpdateAsset, Google.Cloud.Dataplex.V1.UpdateAssetRequest, Google.Longrunning.Operation

  rpc :DeleteAsset, Google.Cloud.Dataplex.V1.DeleteAssetRequest, Google.Longrunning.Operation

  rpc :ListAssets,
      Google.Cloud.Dataplex.V1.ListAssetsRequest,
      Google.Cloud.Dataplex.V1.ListAssetsResponse

  rpc :GetAsset, Google.Cloud.Dataplex.V1.GetAssetRequest, Google.Cloud.Dataplex.V1.Asset

  rpc :ListAssetActions,
      Google.Cloud.Dataplex.V1.ListAssetActionsRequest,
      Google.Cloud.Dataplex.V1.ListActionsResponse

  rpc :CreateTask, Google.Cloud.Dataplex.V1.CreateTaskRequest, Google.Longrunning.Operation

  rpc :UpdateTask, Google.Cloud.Dataplex.V1.UpdateTaskRequest, Google.Longrunning.Operation

  rpc :DeleteTask, Google.Cloud.Dataplex.V1.DeleteTaskRequest, Google.Longrunning.Operation

  rpc :ListTasks,
      Google.Cloud.Dataplex.V1.ListTasksRequest,
      Google.Cloud.Dataplex.V1.ListTasksResponse

  rpc :GetTask, Google.Cloud.Dataplex.V1.GetTaskRequest, Google.Cloud.Dataplex.V1.Task

  rpc :ListJobs,
      Google.Cloud.Dataplex.V1.ListJobsRequest,
      Google.Cloud.Dataplex.V1.ListJobsResponse

  rpc :RunTask, Google.Cloud.Dataplex.V1.RunTaskRequest, Google.Cloud.Dataplex.V1.RunTaskResponse

  rpc :GetJob, Google.Cloud.Dataplex.V1.GetJobRequest, Google.Cloud.Dataplex.V1.Job

  rpc :CancelJob, Google.Cloud.Dataplex.V1.CancelJobRequest, Google.Protobuf.Empty

  rpc :CreateEnvironment,
      Google.Cloud.Dataplex.V1.CreateEnvironmentRequest,
      Google.Longrunning.Operation

  rpc :UpdateEnvironment,
      Google.Cloud.Dataplex.V1.UpdateEnvironmentRequest,
      Google.Longrunning.Operation

  rpc :DeleteEnvironment,
      Google.Cloud.Dataplex.V1.DeleteEnvironmentRequest,
      Google.Longrunning.Operation

  rpc :ListEnvironments,
      Google.Cloud.Dataplex.V1.ListEnvironmentsRequest,
      Google.Cloud.Dataplex.V1.ListEnvironmentsResponse

  rpc :GetEnvironment,
      Google.Cloud.Dataplex.V1.GetEnvironmentRequest,
      Google.Cloud.Dataplex.V1.Environment

  rpc :ListSessions,
      Google.Cloud.Dataplex.V1.ListSessionsRequest,
      Google.Cloud.Dataplex.V1.ListSessionsResponse
end

defmodule Google.Cloud.Dataplex.V1.DataplexService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dataplex.V1.DataplexService.Service
end