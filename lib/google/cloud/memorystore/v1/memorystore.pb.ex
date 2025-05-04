defmodule Google.Cloud.Memorystore.V1.PscConnectionStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PSC_CONNECTION_STATUS_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :NOT_FOUND, 2
end

defmodule Google.Cloud.Memorystore.V1.ConnectionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONNECTION_TYPE_UNSPECIFIED, 0
  field :CONNECTION_TYPE_DISCOVERY, 1
  field :CONNECTION_TYPE_PRIMARY, 2
  field :CONNECTION_TYPE_READER, 3
end

defmodule Google.Cloud.Memorystore.V1.Instance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :UPDATING, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Memorystore.V1.Instance.AuthorizationMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :AUTHORIZATION_MODE_UNSPECIFIED, 0
  field :AUTH_DISABLED, 1
  field :IAM_AUTH, 2
end

defmodule Google.Cloud.Memorystore.V1.Instance.TransitEncryptionMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TRANSIT_ENCRYPTION_MODE_UNSPECIFIED, 0
  field :TRANSIT_ENCRYPTION_DISABLED, 1
  field :SERVER_AUTHENTICATION, 2
end

defmodule Google.Cloud.Memorystore.V1.Instance.NodeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :NODE_TYPE_UNSPECIFIED, 0
  field :SHARED_CORE_NANO, 1
  field :HIGHMEM_MEDIUM, 2
  field :HIGHMEM_XLARGE, 3
  field :STANDARD_SMALL, 4
end

defmodule Google.Cloud.Memorystore.V1.Instance.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :STANDALONE, 1
  field :CLUSTER, 2
  field :CLUSTER_DISABLED, 4
end

defmodule Google.Cloud.Memorystore.V1.AutomatedBackupConfig.AutomatedBackupMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :AUTOMATED_BACKUP_MODE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :ENABLED, 2
end

defmodule Google.Cloud.Memorystore.V1.Backup.BackupType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :BACKUP_TYPE_UNSPECIFIED, 0
  field :ON_DEMAND, 1
  field :AUTOMATED, 2
end

defmodule Google.Cloud.Memorystore.V1.Backup.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :SUSPENDED, 4
end

defmodule Google.Cloud.Memorystore.V1.CrossInstanceReplicationConfig.InstanceRole do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :INSTANCE_ROLE_UNSPECIFIED, 0
  field :NONE, 1
  field :PRIMARY, 2
  field :SECONDARY, 3
end

defmodule Google.Cloud.Memorystore.V1.PersistenceConfig.PersistenceMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PERSISTENCE_MODE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :RDB, 2
  field :AOF, 3
end

defmodule Google.Cloud.Memorystore.V1.PersistenceConfig.RDBConfig.SnapshotPeriod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SNAPSHOT_PERIOD_UNSPECIFIED, 0
  field :ONE_HOUR, 1
  field :SIX_HOURS, 2
  field :TWELVE_HOURS, 3
  field :TWENTY_FOUR_HOURS, 4
end

defmodule Google.Cloud.Memorystore.V1.PersistenceConfig.AOFConfig.AppendFsync do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :APPEND_FSYNC_UNSPECIFIED, 0
  field :NEVER, 1
  field :EVERY_SEC, 2
  field :ALWAYS, 3
end

defmodule Google.Cloud.Memorystore.V1.ZoneDistributionConfig.ZoneDistributionMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ZONE_DISTRIBUTION_MODE_UNSPECIFIED, 0
  field :MULTI_ZONE, 1
  field :SINGLE_ZONE, 2
end

defmodule Google.Cloud.Memorystore.V1.RescheduleMaintenanceRequest.RescheduleType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RESCHEDULE_TYPE_UNSPECIFIED, 0
  field :IMMEDIATE, 1
  field :SPECIFIC_TIME, 3
end

defmodule Google.Cloud.Memorystore.V1.Instance.StateInfo.UpdateInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :target_shard_count, 1,
    proto3_optional: true,
    type: :int32,
    json_name: "targetShardCount",
    deprecated: false

  field :target_replica_count, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "targetReplicaCount",
    deprecated: false

  field :target_engine_version, 3,
    proto3_optional: true,
    type: :string,
    json_name: "targetEngineVersion",
    deprecated: false

  field :target_node_type, 4,
    proto3_optional: true,
    type: Google.Cloud.Memorystore.V1.Instance.NodeType,
    json_name: "targetNodeType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.Instance.StateInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :info, 0

  field :update_info, 1,
    type: Google.Cloud.Memorystore.V1.Instance.StateInfo.UpdateInfo,
    json_name: "updateInfo",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.Instance.GcsBackupSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uris, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.Instance.ManagedBackupSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :backup, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.Instance.InstanceEndpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :connections, 1,
    repeated: true,
    type: Google.Cloud.Memorystore.V1.Instance.ConnectionDetail,
    deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.Instance.ConnectionDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :connection, 0

  field :psc_auto_connection, 1,
    type: Google.Cloud.Memorystore.V1.PscAutoConnection,
    json_name: "pscAutoConnection",
    oneof: 0,
    deprecated: false

  field :psc_connection, 2,
    type: Google.Cloud.Memorystore.V1.PscConnection,
    json_name: "pscConnection",
    oneof: 0
end

defmodule Google.Cloud.Memorystore.V1.Instance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Memorystore.V1.Instance.EngineConfigsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Memorystore.V1.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :import_sources, 0

  field :gcs_source, 23,
    type: Google.Cloud.Memorystore.V1.Instance.GcsBackupSource,
    json_name: "gcsSource",
    oneof: 0,
    deprecated: false

  field :managed_backup_source, 24,
    type: Google.Cloud.Memorystore.V1.Instance.ManagedBackupSource,
    json_name: "managedBackupSource",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Memorystore.V1.Instance.LabelsEntry,
    map: true,
    deprecated: false

  field :state, 5, type: Google.Cloud.Memorystore.V1.Instance.State, enum: true, deprecated: false

  field :state_info, 6,
    type: Google.Cloud.Memorystore.V1.Instance.StateInfo,
    json_name: "stateInfo",
    deprecated: false

  field :uid, 7, type: :string, deprecated: false

  field :replica_count, 8,
    proto3_optional: true,
    type: :int32,
    json_name: "replicaCount",
    deprecated: false

  field :authorization_mode, 9,
    type: Google.Cloud.Memorystore.V1.Instance.AuthorizationMode,
    json_name: "authorizationMode",
    enum: true,
    deprecated: false

  field :transit_encryption_mode, 10,
    type: Google.Cloud.Memorystore.V1.Instance.TransitEncryptionMode,
    json_name: "transitEncryptionMode",
    enum: true,
    deprecated: false

  field :shard_count, 11, type: :int32, json_name: "shardCount", deprecated: false

  field :discovery_endpoints, 12,
    repeated: true,
    type: Google.Cloud.Memorystore.V1.DiscoveryEndpoint,
    json_name: "discoveryEndpoints",
    deprecated: true

  field :node_type, 13,
    type: Google.Cloud.Memorystore.V1.Instance.NodeType,
    json_name: "nodeType",
    enum: true,
    deprecated: false

  field :persistence_config, 14,
    type: Google.Cloud.Memorystore.V1.PersistenceConfig,
    json_name: "persistenceConfig",
    deprecated: false

  field :engine_version, 15, type: :string, json_name: "engineVersion", deprecated: false

  field :engine_configs, 16,
    repeated: true,
    type: Google.Cloud.Memorystore.V1.Instance.EngineConfigsEntry,
    json_name: "engineConfigs",
    map: true,
    deprecated: false

  field :node_config, 17,
    type: Google.Cloud.Memorystore.V1.NodeConfig,
    json_name: "nodeConfig",
    deprecated: false

  field :zone_distribution_config, 18,
    type: Google.Cloud.Memorystore.V1.ZoneDistributionConfig,
    json_name: "zoneDistributionConfig",
    deprecated: false

  field :deletion_protection_enabled, 19,
    proto3_optional: true,
    type: :bool,
    json_name: "deletionProtectionEnabled",
    deprecated: false

  field :psc_auto_connections, 20,
    repeated: true,
    type: Google.Cloud.Memorystore.V1.PscAutoConnection,
    json_name: "pscAutoConnections",
    deprecated: true

  field :psc_attachment_details, 21,
    repeated: true,
    type: Google.Cloud.Memorystore.V1.PscAttachmentDetail,
    json_name: "pscAttachmentDetails",
    deprecated: false

  field :endpoints, 25,
    repeated: true,
    type: Google.Cloud.Memorystore.V1.Instance.InstanceEndpoint,
    deprecated: false

  field :mode, 26, type: Google.Cloud.Memorystore.V1.Instance.Mode, enum: true, deprecated: false

  field :ondemand_maintenance, 28,
    proto3_optional: true,
    type: :bool,
    json_name: "ondemandMaintenance",
    deprecated: false

  field :maintenance_policy, 31,
    type: Google.Cloud.Memorystore.V1.MaintenancePolicy,
    json_name: "maintenancePolicy",
    deprecated: false

  field :maintenance_schedule, 32,
    type: Google.Cloud.Memorystore.V1.MaintenanceSchedule,
    json_name: "maintenanceSchedule",
    deprecated: false

  field :cross_instance_replication_config, 33,
    type: Google.Cloud.Memorystore.V1.CrossInstanceReplicationConfig,
    json_name: "crossInstanceReplicationConfig",
    deprecated: false

  field :async_instance_endpoints_deletion_enabled, 44,
    proto3_optional: true,
    type: :bool,
    json_name: "asyncInstanceEndpointsDeletionEnabled",
    deprecated: false

  field :backup_collection, 47,
    proto3_optional: true,
    type: :string,
    json_name: "backupCollection",
    deprecated: false

  field :automated_backup_config, 48,
    type: Google.Cloud.Memorystore.V1.AutomatedBackupConfig,
    json_name: "automatedBackupConfig",
    deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.AutomatedBackupConfig.FixedFrequencySchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_time, 2, type: Google.Type.TimeOfDay, json_name: "startTime", deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.AutomatedBackupConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :schedule, 0

  field :fixed_frequency_schedule, 2,
    type: Google.Cloud.Memorystore.V1.AutomatedBackupConfig.FixedFrequencySchedule,
    json_name: "fixedFrequencySchedule",
    oneof: 0,
    deprecated: false

  field :automated_backup_mode, 1,
    type: Google.Cloud.Memorystore.V1.AutomatedBackupConfig.AutomatedBackupMode,
    json_name: "automatedBackupMode",
    enum: true,
    deprecated: false

  field :retention, 3, type: Google.Protobuf.Duration, deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.BackupCollection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :instance_uid, 3, type: :string, json_name: "instanceUid", deprecated: false
  field :instance, 4, type: :string, deprecated: false
  field :kms_key, 5, type: :string, json_name: "kmsKey", deprecated: false
  field :uid, 6, type: :string, deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.Backup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :instance, 3, type: :string, deprecated: false
  field :instance_uid, 4, type: :string, json_name: "instanceUid", deprecated: false
  field :total_size_bytes, 5, type: :int64, json_name: "totalSizeBytes", deprecated: false

  field :expire_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :engine_version, 7, type: :string, json_name: "engineVersion", deprecated: false

  field :backup_files, 8,
    repeated: true,
    type: Google.Cloud.Memorystore.V1.BackupFile,
    json_name: "backupFiles",
    deprecated: false

  field :node_type, 9,
    type: Google.Cloud.Memorystore.V1.Instance.NodeType,
    json_name: "nodeType",
    enum: true,
    deprecated: false

  field :replica_count, 10, type: :int32, json_name: "replicaCount", deprecated: false
  field :shard_count, 11, type: :int32, json_name: "shardCount", deprecated: false

  field :backup_type, 12,
    type: Google.Cloud.Memorystore.V1.Backup.BackupType,
    json_name: "backupType",
    enum: true,
    deprecated: false

  field :state, 13, type: Google.Cloud.Memorystore.V1.Backup.State, enum: true, deprecated: false
  field :uid, 15, type: :string, deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.BackupFile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :file_name, 1, type: :string, json_name: "fileName", deprecated: false
  field :size_bytes, 2, type: :int64, json_name: "sizeBytes", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.CrossInstanceReplicationConfig.RemoteInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.CrossInstanceReplicationConfig.Membership do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :primary_instance, 1,
    type: Google.Cloud.Memorystore.V1.CrossInstanceReplicationConfig.RemoteInstance,
    json_name: "primaryInstance",
    deprecated: false

  field :secondary_instances, 2,
    repeated: true,
    type: Google.Cloud.Memorystore.V1.CrossInstanceReplicationConfig.RemoteInstance,
    json_name: "secondaryInstances",
    deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.CrossInstanceReplicationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance_role, 1,
    type: Google.Cloud.Memorystore.V1.CrossInstanceReplicationConfig.InstanceRole,
    json_name: "instanceRole",
    enum: true,
    deprecated: false

  field :primary_instance, 2,
    type: Google.Cloud.Memorystore.V1.CrossInstanceReplicationConfig.RemoteInstance,
    json_name: "primaryInstance",
    deprecated: false

  field :secondary_instances, 3,
    repeated: true,
    type: Google.Cloud.Memorystore.V1.CrossInstanceReplicationConfig.RemoteInstance,
    json_name: "secondaryInstances",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :membership, 5,
    type: Google.Cloud.Memorystore.V1.CrossInstanceReplicationConfig.Membership,
    deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.MaintenancePolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :weekly_maintenance_window, 3,
    repeated: true,
    type: Google.Cloud.Memorystore.V1.WeeklyMaintenanceWindow,
    json_name: "weeklyMaintenanceWindow",
    deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.WeeklyMaintenanceWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :day, 1, type: Google.Type.DayOfWeek, enum: true, deprecated: false
  field :start_time, 2, type: Google.Type.TimeOfDay, json_name: "startTime", deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.MaintenanceSchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.PscAttachmentDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service_attachment, 1, type: :string, json_name: "serviceAttachment", deprecated: false

  field :connection_type, 4,
    type: Google.Cloud.Memorystore.V1.ConnectionType,
    json_name: "connectionType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.PscAutoConnection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :ports, 0

  field :port, 9, type: :int32, oneof: 0, deprecated: false
  field :psc_connection_id, 1, type: :string, json_name: "pscConnectionId", deprecated: false
  field :ip_address, 2, type: :string, json_name: "ipAddress", deprecated: false
  field :forwarding_rule, 3, type: :string, json_name: "forwardingRule", deprecated: false
  field :project_id, 4, type: :string, json_name: "projectId", deprecated: false
  field :network, 5, type: :string, deprecated: false
  field :service_attachment, 6, type: :string, json_name: "serviceAttachment", deprecated: false

  field :psc_connection_status, 7,
    type: Google.Cloud.Memorystore.V1.PscConnectionStatus,
    json_name: "pscConnectionStatus",
    enum: true,
    deprecated: false

  field :connection_type, 8,
    type: Google.Cloud.Memorystore.V1.ConnectionType,
    json_name: "connectionType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.PscConnection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :ports, 0

  field :port, 9, type: :int32, oneof: 0, deprecated: false
  field :psc_connection_id, 1, type: :string, json_name: "pscConnectionId", deprecated: false
  field :ip_address, 2, type: :string, json_name: "ipAddress", deprecated: false
  field :forwarding_rule, 3, type: :string, json_name: "forwardingRule", deprecated: false
  field :project_id, 4, type: :string, json_name: "projectId", deprecated: false
  field :network, 5, type: :string, deprecated: false
  field :service_attachment, 6, type: :string, json_name: "serviceAttachment", deprecated: false

  field :psc_connection_status, 7,
    type: Google.Cloud.Memorystore.V1.PscConnectionStatus,
    json_name: "pscConnectionStatus",
    enum: true,
    deprecated: false

  field :connection_type, 8,
    type: Google.Cloud.Memorystore.V1.ConnectionType,
    json_name: "connectionType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.DiscoveryEndpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :address, 1, type: :string, deprecated: false
  field :port, 2, type: :int32, deprecated: false
  field :network, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.PersistenceConfig.RDBConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rdb_snapshot_period, 1,
    type: Google.Cloud.Memorystore.V1.PersistenceConfig.RDBConfig.SnapshotPeriod,
    json_name: "rdbSnapshotPeriod",
    enum: true,
    deprecated: false

  field :rdb_snapshot_start_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "rdbSnapshotStartTime",
    deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.PersistenceConfig.AOFConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :append_fsync, 1,
    type: Google.Cloud.Memorystore.V1.PersistenceConfig.AOFConfig.AppendFsync,
    json_name: "appendFsync",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.PersistenceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :mode, 1,
    type: Google.Cloud.Memorystore.V1.PersistenceConfig.PersistenceMode,
    enum: true,
    deprecated: false

  field :rdb_config, 2,
    type: Google.Cloud.Memorystore.V1.PersistenceConfig.RDBConfig,
    json_name: "rdbConfig",
    deprecated: false

  field :aof_config, 3,
    type: Google.Cloud.Memorystore.V1.PersistenceConfig.AOFConfig,
    json_name: "aofConfig",
    deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.NodeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :size_gb, 1, type: :double, json_name: "sizeGb", deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.ZoneDistributionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :zone, 2, type: :string, deprecated: false

  field :mode, 1,
    type: Google.Cloud.Memorystore.V1.ZoneDistributionConfig.ZoneDistributionMode,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.RescheduleMaintenanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :reschedule_type, 2,
    type: Google.Cloud.Memorystore.V1.RescheduleMaintenanceRequest.RescheduleType,
    json_name: "rescheduleType",
    enum: true,
    deprecated: false

  field :schedule_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "scheduleTime",
    deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Memorystore.V1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Memorystore.V1.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.CreateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Memorystore.V1.Instance, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.UpdateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Memorystore.V1.Instance, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.DeleteInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.ListBackupCollectionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.ListBackupCollectionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :backup_collections, 1,
    repeated: true,
    type: Google.Cloud.Memorystore.V1.BackupCollection,
    json_name: "backupCollections"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Memorystore.V1.GetBackupCollectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.ListBackupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.ListBackupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :backups, 1, repeated: true, type: Google.Cloud.Memorystore.V1.Backup
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Memorystore.V1.GetBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.DeleteBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.ExportBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :destination, 0

  field :gcs_bucket, 2, type: :string, json_name: "gcsBucket", oneof: 0
  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.BackupInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :ttl, 2, type: Google.Protobuf.Duration, deprecated: false

  field :backup_id, 3,
    proto3_optional: true,
    type: :string,
    json_name: "backupId",
    deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.GetCertificateAuthorityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.CertificateAuthority.ManagedCertificateAuthority.CertChain do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :certificates, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Memorystore.V1.CertificateAuthority.ManagedCertificateAuthority do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ca_certs, 1,
    repeated: true,
    type: Google.Cloud.Memorystore.V1.CertificateAuthority.ManagedCertificateAuthority.CertChain,
    json_name: "caCerts"
end

defmodule Google.Cloud.Memorystore.V1.CertificateAuthority do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :server_ca, 0

  field :managed_server_ca, 2,
    type: Google.Cloud.Memorystore.V1.CertificateAuthority.ManagedCertificateAuthority,
    json_name: "managedServerCa",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Memorystore.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Cloud.Memorystore.V1.Memorystore.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.memorystore.v1.Memorystore",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListInstances,
      Google.Cloud.Memorystore.V1.ListInstancesRequest,
      Google.Cloud.Memorystore.V1.ListInstancesResponse

  rpc :GetInstance,
      Google.Cloud.Memorystore.V1.GetInstanceRequest,
      Google.Cloud.Memorystore.V1.Instance

  rpc :CreateInstance,
      Google.Cloud.Memorystore.V1.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstance,
      Google.Cloud.Memorystore.V1.UpdateInstanceRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstance,
      Google.Cloud.Memorystore.V1.DeleteInstanceRequest,
      Google.Longrunning.Operation

  rpc :GetCertificateAuthority,
      Google.Cloud.Memorystore.V1.GetCertificateAuthorityRequest,
      Google.Cloud.Memorystore.V1.CertificateAuthority

  rpc :RescheduleMaintenance,
      Google.Cloud.Memorystore.V1.RescheduleMaintenanceRequest,
      Google.Longrunning.Operation

  rpc :ListBackupCollections,
      Google.Cloud.Memorystore.V1.ListBackupCollectionsRequest,
      Google.Cloud.Memorystore.V1.ListBackupCollectionsResponse

  rpc :GetBackupCollection,
      Google.Cloud.Memorystore.V1.GetBackupCollectionRequest,
      Google.Cloud.Memorystore.V1.BackupCollection

  rpc :ListBackups,
      Google.Cloud.Memorystore.V1.ListBackupsRequest,
      Google.Cloud.Memorystore.V1.ListBackupsResponse

  rpc :GetBackup, Google.Cloud.Memorystore.V1.GetBackupRequest, Google.Cloud.Memorystore.V1.Backup

  rpc :DeleteBackup, Google.Cloud.Memorystore.V1.DeleteBackupRequest, Google.Longrunning.Operation

  rpc :ExportBackup, Google.Cloud.Memorystore.V1.ExportBackupRequest, Google.Longrunning.Operation

  rpc :BackupInstance,
      Google.Cloud.Memorystore.V1.BackupInstanceRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Memorystore.V1.Memorystore.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Memorystore.V1.Memorystore.Service
end
