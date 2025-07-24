defmodule Google.Cloud.Redis.V1beta1.Instance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :UPDATING, 3
  field :DELETING, 4
  field :REPAIRING, 5
  field :MAINTENANCE, 6
  field :IMPORTING, 8
  field :FAILING_OVER, 10
end

defmodule Google.Cloud.Redis.V1beta1.Instance.Tier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TIER_UNSPECIFIED, 0
  field :BASIC, 1
  field :STANDARD_HA, 3
end

defmodule Google.Cloud.Redis.V1beta1.Instance.ConnectMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONNECT_MODE_UNSPECIFIED, 0
  field :DIRECT_PEERING, 1
  field :PRIVATE_SERVICE_ACCESS, 2
end

defmodule Google.Cloud.Redis.V1beta1.Instance.TransitEncryptionMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TRANSIT_ENCRYPTION_MODE_UNSPECIFIED, 0
  field :SERVER_AUTHENTICATION, 1
  field :DISABLED, 2
end

defmodule Google.Cloud.Redis.V1beta1.Instance.ReadReplicasMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :READ_REPLICAS_MODE_UNSPECIFIED, 0
  field :READ_REPLICAS_DISABLED, 1
  field :READ_REPLICAS_ENABLED, 2
end

defmodule Google.Cloud.Redis.V1beta1.PersistenceConfig.PersistenceMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PERSISTENCE_MODE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :RDB, 2
end

defmodule Google.Cloud.Redis.V1beta1.PersistenceConfig.SnapshotPeriod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SNAPSHOT_PERIOD_UNSPECIFIED, 0
  field :ONE_HOUR, 3
  field :SIX_HOURS, 4
  field :TWELVE_HOURS, 5
  field :TWENTY_FOUR_HOURS, 6
end

defmodule Google.Cloud.Redis.V1beta1.RescheduleMaintenanceRequest.RescheduleType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RESCHEDULE_TYPE_UNSPECIFIED, 0
  field :IMMEDIATE, 1
  field :NEXT_AVAILABLE_WINDOW, 2
  field :SPECIFIC_TIME, 3
end

defmodule Google.Cloud.Redis.V1beta1.FailoverInstanceRequest.DataProtectionMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DATA_PROTECTION_MODE_UNSPECIFIED, 0
  field :LIMITED_DATA_LOSS, 1
  field :FORCE_DATA_LOSS, 2
end

defmodule Google.Cloud.Redis.V1beta1.NodeInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :zone, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.V1beta1.Instance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Redis.V1beta1.Instance.RedisConfigsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Redis.V1beta1.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Redis.V1beta1.Instance.LabelsEntry,
    map: true

  field :location_id, 4, type: :string, json_name: "locationId", deprecated: false

  field :alternative_location_id, 5,
    type: :string,
    json_name: "alternativeLocationId",
    deprecated: false

  field :redis_version, 7, type: :string, json_name: "redisVersion", deprecated: false
  field :reserved_ip_range, 9, type: :string, json_name: "reservedIpRange", deprecated: false
  field :secondary_ip_range, 30, type: :string, json_name: "secondaryIpRange", deprecated: false
  field :host, 10, type: :string, deprecated: false
  field :port, 11, type: :int32, deprecated: false
  field :current_location_id, 12, type: :string, json_name: "currentLocationId", deprecated: false

  field :create_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :state, 14, type: Google.Cloud.Redis.V1beta1.Instance.State, enum: true, deprecated: false
  field :status_message, 15, type: :string, json_name: "statusMessage", deprecated: false

  field :redis_configs, 16,
    repeated: true,
    type: Google.Cloud.Redis.V1beta1.Instance.RedisConfigsEntry,
    json_name: "redisConfigs",
    map: true,
    deprecated: false

  field :tier, 17, type: Google.Cloud.Redis.V1beta1.Instance.Tier, enum: true, deprecated: false
  field :memory_size_gb, 18, type: :int32, json_name: "memorySizeGb", deprecated: false
  field :authorized_network, 20, type: :string, json_name: "authorizedNetwork", deprecated: false

  field :persistence_iam_identity, 21,
    type: :string,
    json_name: "persistenceIamIdentity",
    deprecated: false

  field :connect_mode, 22,
    type: Google.Cloud.Redis.V1beta1.Instance.ConnectMode,
    json_name: "connectMode",
    enum: true,
    deprecated: false

  field :auth_enabled, 23, type: :bool, json_name: "authEnabled", deprecated: false

  field :server_ca_certs, 25,
    repeated: true,
    type: Google.Cloud.Redis.V1beta1.TlsCertificate,
    json_name: "serverCaCerts",
    deprecated: false

  field :transit_encryption_mode, 26,
    type: Google.Cloud.Redis.V1beta1.Instance.TransitEncryptionMode,
    json_name: "transitEncryptionMode",
    enum: true,
    deprecated: false

  field :maintenance_policy, 27,
    type: Google.Cloud.Redis.V1beta1.MaintenancePolicy,
    json_name: "maintenancePolicy",
    deprecated: false

  field :maintenance_schedule, 28,
    type: Google.Cloud.Redis.V1beta1.MaintenanceSchedule,
    json_name: "maintenanceSchedule",
    deprecated: false

  field :replica_count, 31, type: :int32, json_name: "replicaCount", deprecated: false
  field :nodes, 32, repeated: true, type: Google.Cloud.Redis.V1beta1.NodeInfo, deprecated: false
  field :read_endpoint, 33, type: :string, json_name: "readEndpoint", deprecated: false
  field :read_endpoint_port, 34, type: :int32, json_name: "readEndpointPort", deprecated: false

  field :read_replicas_mode, 35,
    type: Google.Cloud.Redis.V1beta1.Instance.ReadReplicasMode,
    json_name: "readReplicasMode",
    enum: true,
    deprecated: false

  field :persistence_config, 37,
    type: Google.Cloud.Redis.V1beta1.PersistenceConfig,
    json_name: "persistenceConfig",
    deprecated: false
end

defmodule Google.Cloud.Redis.V1beta1.PersistenceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :persistence_mode, 1,
    type: Google.Cloud.Redis.V1beta1.PersistenceConfig.PersistenceMode,
    json_name: "persistenceMode",
    enum: true,
    deprecated: false

  field :rdb_snapshot_period, 2,
    type: Google.Cloud.Redis.V1beta1.PersistenceConfig.SnapshotPeriod,
    json_name: "rdbSnapshotPeriod",
    enum: true,
    deprecated: false

  field :rdb_next_snapshot_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "rdbNextSnapshotTime",
    deprecated: false

  field :rdb_snapshot_start_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "rdbSnapshotStartTime",
    deprecated: false
end

defmodule Google.Cloud.Redis.V1beta1.RescheduleMaintenanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :reschedule_type, 2,
    type: Google.Cloud.Redis.V1beta1.RescheduleMaintenanceRequest.RescheduleType,
    json_name: "rescheduleType",
    enum: true,
    deprecated: false

  field :schedule_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "scheduleTime",
    deprecated: false
end

defmodule Google.Cloud.Redis.V1beta1.MaintenancePolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 3, type: :string, deprecated: false

  field :weekly_maintenance_window, 4,
    repeated: true,
    type: Google.Cloud.Redis.V1beta1.WeeklyMaintenanceWindow,
    json_name: "weeklyMaintenanceWindow",
    deprecated: false
end

defmodule Google.Cloud.Redis.V1beta1.WeeklyMaintenanceWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :day, 1, type: Google.Type.DayOfWeek, enum: true, deprecated: false
  field :start_time, 2, type: Google.Type.TimeOfDay, json_name: "startTime", deprecated: false
  field :duration, 3, type: Google.Protobuf.Duration, deprecated: false
end

defmodule Google.Cloud.Redis.V1beta1.MaintenanceSchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :can_reschedule, 3, type: :bool, json_name: "canReschedule", deprecated: true

  field :schedule_deadline_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "scheduleDeadlineTime",
    deprecated: false
end

defmodule Google.Cloud.Redis.V1beta1.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Redis.V1beta1.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Redis.V1beta1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Redis.V1beta1.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.V1beta1.GetInstanceAuthStringRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.V1beta1.InstanceAuthString do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :auth_string, 1, type: :string, json_name: "authString"
end

defmodule Google.Cloud.Redis.V1beta1.CreateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Redis.V1beta1.Instance, deprecated: false
end

defmodule Google.Cloud.Redis.V1beta1.UpdateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Redis.V1beta1.Instance, deprecated: false
end

defmodule Google.Cloud.Redis.V1beta1.UpgradeInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :redis_version, 2, type: :string, json_name: "redisVersion", deprecated: false
end

defmodule Google.Cloud.Redis.V1beta1.DeleteInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.V1beta1.GcsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.V1beta1.InputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Redis.V1beta1.GcsSource,
    json_name: "gcsSource",
    oneof: 0
end

defmodule Google.Cloud.Redis.V1beta1.ImportInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :input_config, 3,
    type: Google.Cloud.Redis.V1beta1.InputConfig,
    json_name: "inputConfig",
    deprecated: false
end

defmodule Google.Cloud.Redis.V1beta1.GcsDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.V1beta1.OutputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Redis.V1beta1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0
end

defmodule Google.Cloud.Redis.V1beta1.ExportInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :output_config, 3,
    type: Google.Cloud.Redis.V1beta1.OutputConfig,
    json_name: "outputConfig",
    deprecated: false
end

defmodule Google.Cloud.Redis.V1beta1.FailoverInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :data_protection_mode, 2,
    type: Google.Cloud.Redis.V1beta1.FailoverInstanceRequest.DataProtectionMode,
    json_name: "dataProtectionMode",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Redis.V1beta1.LocationMetadata.AvailableZonesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Redis.V1beta1.ZoneMetadata
end

defmodule Google.Cloud.Redis.V1beta1.LocationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :available_zones, 1,
    repeated: true,
    type: Google.Cloud.Redis.V1beta1.LocationMetadata.AvailableZonesEntry,
    json_name: "availableZones",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Redis.V1beta1.ZoneMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Redis.V1beta1.TlsCertificate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :serial_number, 1, type: :string, json_name: "serialNumber"
  field :cert, 2, type: :string

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :expire_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :sha1_fingerprint, 5, type: :string, json_name: "sha1Fingerprint"
end

defmodule Google.Cloud.Redis.V1beta1.CloudRedis.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.redis.v1beta1.CloudRedis",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListInstances,
      Google.Cloud.Redis.V1beta1.ListInstancesRequest,
      Google.Cloud.Redis.V1beta1.ListInstancesResponse

  rpc :GetInstance,
      Google.Cloud.Redis.V1beta1.GetInstanceRequest,
      Google.Cloud.Redis.V1beta1.Instance

  rpc :GetInstanceAuthString,
      Google.Cloud.Redis.V1beta1.GetInstanceAuthStringRequest,
      Google.Cloud.Redis.V1beta1.InstanceAuthString

  rpc :CreateInstance,
      Google.Cloud.Redis.V1beta1.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstance,
      Google.Cloud.Redis.V1beta1.UpdateInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpgradeInstance,
      Google.Cloud.Redis.V1beta1.UpgradeInstanceRequest,
      Google.Longrunning.Operation

  rpc :ImportInstance,
      Google.Cloud.Redis.V1beta1.ImportInstanceRequest,
      Google.Longrunning.Operation

  rpc :ExportInstance,
      Google.Cloud.Redis.V1beta1.ExportInstanceRequest,
      Google.Longrunning.Operation

  rpc :FailoverInstance,
      Google.Cloud.Redis.V1beta1.FailoverInstanceRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstance,
      Google.Cloud.Redis.V1beta1.DeleteInstanceRequest,
      Google.Longrunning.Operation

  rpc :RescheduleMaintenance,
      Google.Cloud.Redis.V1beta1.RescheduleMaintenanceRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Redis.V1beta1.CloudRedis.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Redis.V1beta1.CloudRedis.Service
end
