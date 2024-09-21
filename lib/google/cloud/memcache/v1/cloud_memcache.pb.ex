defmodule Google.Cloud.Memcache.V1.MemcacheVersion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :MEMCACHE_VERSION_UNSPECIFIED, 0
  field :MEMCACHE_1_5, 1
end

defmodule Google.Cloud.Memcache.V1.Instance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :UPDATING, 3
  field :DELETING, 4
  field :PERFORMING_MAINTENANCE, 5
end

defmodule Google.Cloud.Memcache.V1.Instance.Node.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :DELETING, 3
  field :UPDATING, 4
end

defmodule Google.Cloud.Memcache.V1.Instance.InstanceMessage.Code do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CODE_UNSPECIFIED, 0
  field :ZONE_DISTRIBUTION_UNBALANCED, 1
end

defmodule Google.Cloud.Memcache.V1.RescheduleMaintenanceRequest.RescheduleType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :RESCHEDULE_TYPE_UNSPECIFIED, 0
  field :IMMEDIATE, 1
  field :NEXT_AVAILABLE_WINDOW, 2
  field :SPECIFIC_TIME, 3
end

defmodule Google.Cloud.Memcache.V1.Instance.NodeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :cpu_count, 1, type: :int32, json_name: "cpuCount", deprecated: false
  field :memory_size_mb, 2, type: :int32, json_name: "memorySizeMb", deprecated: false
end

defmodule Google.Cloud.Memcache.V1.Instance.Node do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :node_id, 1, type: :string, json_name: "nodeId", deprecated: false
  field :zone, 2, type: :string, deprecated: false

  field :state, 3,
    type: Google.Cloud.Memcache.V1.Instance.Node.State,
    enum: true,
    deprecated: false

  field :host, 4, type: :string, deprecated: false
  field :port, 5, type: :int32, deprecated: false
  field :parameters, 6, type: Google.Cloud.Memcache.V1.MemcacheParameters
end

defmodule Google.Cloud.Memcache.V1.Instance.InstanceMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :code, 1, type: Google.Cloud.Memcache.V1.Instance.InstanceMessage.Code, enum: true
  field :message, 2, type: :string
end

defmodule Google.Cloud.Memcache.V1.Instance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Memcache.V1.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :labels, 3, repeated: true, type: Google.Cloud.Memcache.V1.Instance.LabelsEntry, map: true
  field :authorized_network, 4, type: :string, json_name: "authorizedNetwork"
  field :zones, 5, repeated: true, type: :string
  field :node_count, 6, type: :int32, json_name: "nodeCount", deprecated: false

  field :node_config, 7,
    type: Google.Cloud.Memcache.V1.Instance.NodeConfig,
    json_name: "nodeConfig",
    deprecated: false

  field :memcache_version, 9,
    type: Google.Cloud.Memcache.V1.MemcacheVersion,
    json_name: "memcacheVersion",
    enum: true

  field :parameters, 11, type: Google.Cloud.Memcache.V1.MemcacheParameters

  field :memcache_nodes, 12,
    repeated: true,
    type: Google.Cloud.Memcache.V1.Instance.Node,
    json_name: "memcacheNodes",
    deprecated: false

  field :create_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 15, type: Google.Cloud.Memcache.V1.Instance.State, enum: true, deprecated: false

  field :memcache_full_version, 18,
    type: :string,
    json_name: "memcacheFullVersion",
    deprecated: false

  field :instance_messages, 19,
    repeated: true,
    type: Google.Cloud.Memcache.V1.Instance.InstanceMessage,
    json_name: "instanceMessages"

  field :discovery_endpoint, 20, type: :string, json_name: "discoveryEndpoint", deprecated: false

  field :maintenance_policy, 21,
    type: Google.Cloud.Memcache.V1.MaintenancePolicy,
    json_name: "maintenancePolicy"

  field :maintenance_schedule, 22,
    type: Google.Cloud.Memcache.V1.MaintenanceSchedule,
    json_name: "maintenanceSchedule",
    deprecated: false
end

defmodule Google.Cloud.Memcache.V1.MaintenancePolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 3, type: :string

  field :weekly_maintenance_window, 4,
    repeated: true,
    type: Google.Cloud.Memcache.V1.WeeklyMaintenanceWindow,
    json_name: "weeklyMaintenanceWindow",
    deprecated: false
end

defmodule Google.Cloud.Memcache.V1.WeeklyMaintenanceWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :day, 1, type: Google.Type.DayOfWeek, enum: true, deprecated: false
  field :start_time, 2, type: Google.Type.TimeOfDay, json_name: "startTime", deprecated: false
  field :duration, 3, type: Google.Protobuf.Duration, deprecated: false
end

defmodule Google.Cloud.Memcache.V1.MaintenanceSchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :schedule_deadline_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "scheduleDeadlineTime",
    deprecated: false
end

defmodule Google.Cloud.Memcache.V1.RescheduleMaintenanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance, 1, type: :string, deprecated: false

  field :reschedule_type, 2,
    type: Google.Cloud.Memcache.V1.RescheduleMaintenanceRequest.RescheduleType,
    json_name: "rescheduleType",
    enum: true,
    deprecated: false

  field :schedule_time, 3, type: Google.Protobuf.Timestamp, json_name: "scheduleTime"
end

defmodule Google.Cloud.Memcache.V1.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Memcache.V1.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Memcache.V1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Memcache.V1.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Memcache.V1.CreateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Memcache.V1.Instance, deprecated: false
end

defmodule Google.Cloud.Memcache.V1.UpdateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Memcache.V1.Instance, deprecated: false
end

defmodule Google.Cloud.Memcache.V1.DeleteInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Memcache.V1.ApplyParametersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :node_ids, 2, repeated: true, type: :string, json_name: "nodeIds"
  field :apply_all, 3, type: :bool, json_name: "applyAll"
end

defmodule Google.Cloud.Memcache.V1.UpdateParametersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :parameters, 3, type: Google.Cloud.Memcache.V1.MemcacheParameters
end

defmodule Google.Cloud.Memcache.V1.MemcacheParameters.ParamsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Memcache.V1.MemcacheParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false

  field :params, 3,
    repeated: true,
    type: Google.Cloud.Memcache.V1.MemcacheParameters.ParamsEntry,
    map: true
end

defmodule Google.Cloud.Memcache.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_detail, 5, type: :string, json_name: "statusDetail", deprecated: false
  field :cancel_requested, 6, type: :bool, json_name: "cancelRequested", deprecated: false
  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Memcache.V1.LocationMetadata.AvailableZonesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Memcache.V1.ZoneMetadata
end

defmodule Google.Cloud.Memcache.V1.LocationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :available_zones, 1,
    repeated: true,
    type: Google.Cloud.Memcache.V1.LocationMetadata.AvailableZonesEntry,
    json_name: "availableZones",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Memcache.V1.ZoneMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Memcache.V1.CloudMemcache.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.memcache.v1.CloudMemcache",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ListInstances,
      Google.Cloud.Memcache.V1.ListInstancesRequest,
      Google.Cloud.Memcache.V1.ListInstancesResponse

  rpc :GetInstance, Google.Cloud.Memcache.V1.GetInstanceRequest, Google.Cloud.Memcache.V1.Instance

  rpc :CreateInstance,
      Google.Cloud.Memcache.V1.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstance,
      Google.Cloud.Memcache.V1.UpdateInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpdateParameters,
      Google.Cloud.Memcache.V1.UpdateParametersRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstance,
      Google.Cloud.Memcache.V1.DeleteInstanceRequest,
      Google.Longrunning.Operation

  rpc :ApplyParameters,
      Google.Cloud.Memcache.V1.ApplyParametersRequest,
      Google.Longrunning.Operation

  rpc :RescheduleMaintenance,
      Google.Cloud.Memcache.V1.RescheduleMaintenanceRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Memcache.V1.CloudMemcache.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Memcache.V1.CloudMemcache.Service
end