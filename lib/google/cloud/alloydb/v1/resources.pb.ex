defmodule Google.Cloud.Alloydb.V1.InstanceView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :INSTANCE_VIEW_UNSPECIFIED, 0
  field :INSTANCE_VIEW_BASIC, 1
  field :INSTANCE_VIEW_FULL, 2
end

defmodule Google.Cloud.Alloydb.V1.ClusterView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CLUSTER_VIEW_UNSPECIFIED, 0
  field :CLUSTER_VIEW_BASIC, 1
  field :CLUSTER_VIEW_CONTINUOUS_BACKUP, 2
end

defmodule Google.Cloud.Alloydb.V1.DatabaseVersion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DATABASE_VERSION_UNSPECIFIED, 0
  field :POSTGRES_13, 1
  field :POSTGRES_14, 2
end

defmodule Google.Cloud.Alloydb.V1.MigrationSource.MigrationSourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MIGRATION_SOURCE_TYPE_UNSPECIFIED, 0
  field :DMS, 1
end

defmodule Google.Cloud.Alloydb.V1.EncryptionInfo.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :GOOGLE_DEFAULT_ENCRYPTION, 1
  field :CUSTOMER_MANAGED_ENCRYPTION, 2
end

defmodule Google.Cloud.Alloydb.V1.SslConfig.SslMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SSL_MODE_UNSPECIFIED, 0
  field :SSL_MODE_ALLOW, 1
  field :SSL_MODE_REQUIRE, 2
  field :SSL_MODE_VERIFY_CA, 3
  field :ALLOW_UNENCRYPTED_AND_ENCRYPTED, 4
  field :ENCRYPTED_ONLY, 5
end

defmodule Google.Cloud.Alloydb.V1.SslConfig.CaSource do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CA_SOURCE_UNSPECIFIED, 0
  field :CA_SOURCE_MANAGED, 1
end

defmodule Google.Cloud.Alloydb.V1.Cluster.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :READY, 1
  field :STOPPED, 2
  field :EMPTY, 3
  field :CREATING, 4
  field :DELETING, 5
  field :FAILED, 6
  field :BOOTSTRAPPING, 7
  field :MAINTENANCE, 8
  field :PROMOTING, 9
end

defmodule Google.Cloud.Alloydb.V1.Cluster.ClusterType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CLUSTER_TYPE_UNSPECIFIED, 0
  field :PRIMARY, 1
  field :SECONDARY, 2
end

defmodule Google.Cloud.Alloydb.V1.Instance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :READY, 1
  field :STOPPED, 2
  field :CREATING, 3
  field :DELETING, 4
  field :MAINTENANCE, 5
  field :FAILED, 6
  field :BOOTSTRAPPING, 8
  field :PROMOTING, 9
end

defmodule Google.Cloud.Alloydb.V1.Instance.InstanceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :INSTANCE_TYPE_UNSPECIFIED, 0
  field :PRIMARY, 1
  field :READ_POOL, 2
  field :SECONDARY, 3
end

defmodule Google.Cloud.Alloydb.V1.Instance.AvailabilityType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :AVAILABILITY_TYPE_UNSPECIFIED, 0
  field :ZONAL, 1
  field :REGIONAL, 2
end

defmodule Google.Cloud.Alloydb.V1.Backup.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :READY, 1
  field :CREATING, 2
  field :FAILED, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Alloydb.V1.Backup.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :ON_DEMAND, 1
  field :AUTOMATED, 2
  field :CONTINUOUS, 3
end

defmodule Google.Cloud.Alloydb.V1.SupportedDatabaseFlag.ValueType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :VALUE_TYPE_UNSPECIFIED, 0
  field :STRING, 1
  field :INTEGER, 2
  field :FLOAT, 3
  field :NONE, 4
end

defmodule Google.Cloud.Alloydb.V1.User.UserType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :USER_TYPE_UNSPECIFIED, 0
  field :ALLOYDB_BUILT_IN, 1
  field :ALLOYDB_IAM_USER, 2
end

defmodule Google.Cloud.Alloydb.V1.UserPassword do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :user, 1, type: :string
  field :password, 2, type: :string
end

defmodule Google.Cloud.Alloydb.V1.MigrationSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :host_port, 1, type: :string, json_name: "hostPort", deprecated: false
  field :reference_id, 2, type: :string, json_name: "referenceId", deprecated: false

  field :source_type, 3,
    type: Google.Cloud.Alloydb.V1.MigrationSource.MigrationSourceType,
    json_name: "sourceType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.EncryptionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :kms_key_name, 1, type: :string, json_name: "kmsKeyName"
end

defmodule Google.Cloud.Alloydb.V1.EncryptionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :encryption_type, 1,
    type: Google.Cloud.Alloydb.V1.EncryptionInfo.Type,
    json_name: "encryptionType",
    enum: true,
    deprecated: false

  field :kms_key_versions, 2,
    repeated: true,
    type: :string,
    json_name: "kmsKeyVersions",
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.SslConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ssl_mode, 1,
    type: Google.Cloud.Alloydb.V1.SslConfig.SslMode,
    json_name: "sslMode",
    enum: true,
    deprecated: false

  field :ca_source, 2,
    type: Google.Cloud.Alloydb.V1.SslConfig.CaSource,
    json_name: "caSource",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.AutomatedBackupPolicy.WeeklySchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_times, 1, repeated: true, type: Google.Type.TimeOfDay, json_name: "startTimes"

  field :days_of_week, 2,
    repeated: true,
    type: Google.Type.DayOfWeek,
    json_name: "daysOfWeek",
    enum: true
end

defmodule Google.Cloud.Alloydb.V1.AutomatedBackupPolicy.TimeBasedRetention do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :retention_period, 1, type: Google.Protobuf.Duration, json_name: "retentionPeriod"
end

defmodule Google.Cloud.Alloydb.V1.AutomatedBackupPolicy.QuantityBasedRetention do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :count, 1, type: :int32
end

defmodule Google.Cloud.Alloydb.V1.AutomatedBackupPolicy.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Alloydb.V1.AutomatedBackupPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :schedule, 0

  oneof :retention, 1

  field :weekly_schedule, 2,
    type: Google.Cloud.Alloydb.V1.AutomatedBackupPolicy.WeeklySchedule,
    json_name: "weeklySchedule",
    oneof: 0

  field :time_based_retention, 4,
    type: Google.Cloud.Alloydb.V1.AutomatedBackupPolicy.TimeBasedRetention,
    json_name: "timeBasedRetention",
    oneof: 1

  field :quantity_based_retention, 5,
    type: Google.Cloud.Alloydb.V1.AutomatedBackupPolicy.QuantityBasedRetention,
    json_name: "quantityBasedRetention",
    oneof: 1

  field :enabled, 1, proto3_optional: true, type: :bool
  field :backup_window, 3, type: Google.Protobuf.Duration, json_name: "backupWindow"

  field :encryption_config, 8,
    type: Google.Cloud.Alloydb.V1.EncryptionConfig,
    json_name: "encryptionConfig",
    deprecated: false

  field :location, 6, type: :string

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Alloydb.V1.AutomatedBackupPolicy.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Alloydb.V1.ContinuousBackupConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enabled, 1, proto3_optional: true, type: :bool
  field :recovery_window_days, 4, type: :int32, json_name: "recoveryWindowDays"

  field :encryption_config, 3,
    type: Google.Cloud.Alloydb.V1.EncryptionConfig,
    json_name: "encryptionConfig"
end

defmodule Google.Cloud.Alloydb.V1.ContinuousBackupInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :encryption_info, 1,
    type: Google.Cloud.Alloydb.V1.EncryptionInfo,
    json_name: "encryptionInfo",
    deprecated: false

  field :enabled_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "enabledTime",
    deprecated: false

  field :schedule, 3, repeated: true, type: Google.Type.DayOfWeek, enum: true, deprecated: false

  field :earliest_restorable_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "earliestRestorableTime",
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.BackupSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backup_uid, 2, type: :string, json_name: "backupUid", deprecated: false
  field :backup_name, 1, type: :string, json_name: "backupName", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ContinuousBackupSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cluster, 1, type: :string, deprecated: false

  field :point_in_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "pointInTime",
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.Cluster.NetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :network, 1, type: :string, deprecated: false
  field :allocated_ip_range, 2, type: :string, json_name: "allocatedIpRange", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.Cluster.SecondaryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :primary_cluster_name, 1, type: :string, json_name: "primaryClusterName"
end

defmodule Google.Cloud.Alloydb.V1.Cluster.PrimaryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :secondary_cluster_names, 1,
    repeated: true,
    type: :string,
    json_name: "secondaryClusterNames",
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.Cluster.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Alloydb.V1.Cluster.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Alloydb.V1.Cluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :backup_source, 15,
    type: Google.Cloud.Alloydb.V1.BackupSource,
    json_name: "backupSource",
    oneof: 0,
    deprecated: false

  field :migration_source, 16,
    type: Google.Cloud.Alloydb.V1.MigrationSource,
    json_name: "migrationSource",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :uid, 3, type: :string, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :labels, 7, repeated: true, type: Google.Cloud.Alloydb.V1.Cluster.LabelsEntry, map: true
  field :state, 8, type: Google.Cloud.Alloydb.V1.Cluster.State, enum: true, deprecated: false

  field :cluster_type, 24,
    type: Google.Cloud.Alloydb.V1.Cluster.ClusterType,
    json_name: "clusterType",
    enum: true,
    deprecated: false

  field :database_version, 9,
    type: Google.Cloud.Alloydb.V1.DatabaseVersion,
    json_name: "databaseVersion",
    enum: true,
    deprecated: false

  field :network_config, 29,
    type: Google.Cloud.Alloydb.V1.Cluster.NetworkConfig,
    json_name: "networkConfig",
    deprecated: false

  field :network, 10, type: :string, deprecated: true
  field :etag, 11, type: :string

  field :annotations, 12,
    repeated: true,
    type: Google.Cloud.Alloydb.V1.Cluster.AnnotationsEntry,
    map: true

  field :reconciling, 13, type: :bool, deprecated: false

  field :initial_user, 14,
    type: Google.Cloud.Alloydb.V1.UserPassword,
    json_name: "initialUser",
    deprecated: false

  field :automated_backup_policy, 17,
    type: Google.Cloud.Alloydb.V1.AutomatedBackupPolicy,
    json_name: "automatedBackupPolicy"

  field :ssl_config, 18,
    type: Google.Cloud.Alloydb.V1.SslConfig,
    json_name: "sslConfig",
    deprecated: true

  field :encryption_config, 19,
    type: Google.Cloud.Alloydb.V1.EncryptionConfig,
    json_name: "encryptionConfig",
    deprecated: false

  field :encryption_info, 20,
    type: Google.Cloud.Alloydb.V1.EncryptionInfo,
    json_name: "encryptionInfo",
    deprecated: false

  field :continuous_backup_config, 27,
    type: Google.Cloud.Alloydb.V1.ContinuousBackupConfig,
    json_name: "continuousBackupConfig",
    deprecated: false

  field :continuous_backup_info, 28,
    type: Google.Cloud.Alloydb.V1.ContinuousBackupInfo,
    json_name: "continuousBackupInfo",
    deprecated: false

  field :secondary_config, 22,
    type: Google.Cloud.Alloydb.V1.Cluster.SecondaryConfig,
    json_name: "secondaryConfig"

  field :primary_config, 23,
    type: Google.Cloud.Alloydb.V1.Cluster.PrimaryConfig,
    json_name: "primaryConfig",
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.Instance.MachineConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cpu_count, 1, type: :int32, json_name: "cpuCount"
end

defmodule Google.Cloud.Alloydb.V1.Instance.Node do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :zone_id, 1, type: :string, json_name: "zoneId"
  field :id, 2, type: :string
  field :ip, 3, type: :string
  field :state, 4, type: :string
end

defmodule Google.Cloud.Alloydb.V1.Instance.QueryInsightsInstanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :record_application_tags, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "recordApplicationTags"

  field :record_client_address, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "recordClientAddress"

  field :query_string_length, 4, type: :uint32, json_name: "queryStringLength"

  field :query_plans_per_minute, 5,
    proto3_optional: true,
    type: :uint32,
    json_name: "queryPlansPerMinute"
end

defmodule Google.Cloud.Alloydb.V1.Instance.ReadPoolConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :node_count, 1, type: :int32, json_name: "nodeCount"
end

defmodule Google.Cloud.Alloydb.V1.Instance.ClientConnectionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :require_connectors, 1, type: :bool, json_name: "requireConnectors", deprecated: false

  field :ssl_config, 2,
    type: Google.Cloud.Alloydb.V1.SslConfig,
    json_name: "sslConfig",
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.Instance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Alloydb.V1.Instance.DatabaseFlagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Alloydb.V1.Instance.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Alloydb.V1.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :uid, 3, type: :string, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :labels, 7, repeated: true, type: Google.Cloud.Alloydb.V1.Instance.LabelsEntry, map: true
  field :state, 8, type: Google.Cloud.Alloydb.V1.Instance.State, enum: true, deprecated: false

  field :instance_type, 9,
    type: Google.Cloud.Alloydb.V1.Instance.InstanceType,
    json_name: "instanceType",
    enum: true,
    deprecated: false

  field :machine_config, 10,
    type: Google.Cloud.Alloydb.V1.Instance.MachineConfig,
    json_name: "machineConfig"

  field :availability_type, 11,
    type: Google.Cloud.Alloydb.V1.Instance.AvailabilityType,
    json_name: "availabilityType",
    enum: true

  field :gce_zone, 12, type: :string, json_name: "gceZone"

  field :database_flags, 13,
    repeated: true,
    type: Google.Cloud.Alloydb.V1.Instance.DatabaseFlagsEntry,
    json_name: "databaseFlags",
    map: true

  field :writable_node, 19,
    type: Google.Cloud.Alloydb.V1.Instance.Node,
    json_name: "writableNode",
    deprecated: false

  field :nodes, 20, repeated: true, type: Google.Cloud.Alloydb.V1.Instance.Node, deprecated: false

  field :query_insights_config, 21,
    type: Google.Cloud.Alloydb.V1.Instance.QueryInsightsInstanceConfig,
    json_name: "queryInsightsConfig"

  field :read_pool_config, 14,
    type: Google.Cloud.Alloydb.V1.Instance.ReadPoolConfig,
    json_name: "readPoolConfig"

  field :ip_address, 15, type: :string, json_name: "ipAddress", deprecated: false
  field :reconciling, 16, type: :bool, deprecated: false
  field :etag, 17, type: :string

  field :annotations, 18,
    repeated: true,
    type: Google.Cloud.Alloydb.V1.Instance.AnnotationsEntry,
    map: true

  field :client_connection_config, 23,
    type: Google.Cloud.Alloydb.V1.Instance.ClientConnectionConfig,
    json_name: "clientConnectionConfig",
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.Backup.QuantityBasedExpiry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :retention_count, 1, type: :int32, json_name: "retentionCount", deprecated: false

  field :total_retention_count, 2,
    type: :int32,
    json_name: "totalRetentionCount",
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.Backup.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Alloydb.V1.Backup.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Alloydb.V1.Backup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :uid, 3, type: :string, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 15,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :labels, 6, repeated: true, type: Google.Cloud.Alloydb.V1.Backup.LabelsEntry, map: true
  field :state, 7, type: Google.Cloud.Alloydb.V1.Backup.State, enum: true, deprecated: false
  field :type, 8, type: Google.Cloud.Alloydb.V1.Backup.Type, enum: true
  field :description, 9, type: :string
  field :cluster_uid, 18, type: :string, json_name: "clusterUid", deprecated: false
  field :cluster_name, 10, type: :string, json_name: "clusterName", deprecated: false
  field :reconciling, 11, type: :bool, deprecated: false

  field :encryption_config, 12,
    type: Google.Cloud.Alloydb.V1.EncryptionConfig,
    json_name: "encryptionConfig",
    deprecated: false

  field :encryption_info, 13,
    type: Google.Cloud.Alloydb.V1.EncryptionInfo,
    json_name: "encryptionInfo",
    deprecated: false

  field :etag, 14, type: :string

  field :annotations, 16,
    repeated: true,
    type: Google.Cloud.Alloydb.V1.Backup.AnnotationsEntry,
    map: true

  field :size_bytes, 17, type: :int64, json_name: "sizeBytes", deprecated: false

  field :expiry_time, 19,
    type: Google.Protobuf.Timestamp,
    json_name: "expiryTime",
    deprecated: false

  field :expiry_quantity, 20,
    type: Google.Cloud.Alloydb.V1.Backup.QuantityBasedExpiry,
    json_name: "expiryQuantity",
    deprecated: false

  field :database_version, 22,
    type: Google.Cloud.Alloydb.V1.DatabaseVersion,
    json_name: "databaseVersion",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.SupportedDatabaseFlag.StringRestrictions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :allowed_values, 1, repeated: true, type: :string, json_name: "allowedValues"
end

defmodule Google.Cloud.Alloydb.V1.SupportedDatabaseFlag.IntegerRestrictions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min_value, 1, type: Google.Protobuf.Int64Value, json_name: "minValue"
  field :max_value, 2, type: Google.Protobuf.Int64Value, json_name: "maxValue"
end

defmodule Google.Cloud.Alloydb.V1.SupportedDatabaseFlag do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :restrictions, 0

  field :string_restrictions, 7,
    type: Google.Cloud.Alloydb.V1.SupportedDatabaseFlag.StringRestrictions,
    json_name: "stringRestrictions",
    oneof: 0

  field :integer_restrictions, 8,
    type: Google.Cloud.Alloydb.V1.SupportedDatabaseFlag.IntegerRestrictions,
    json_name: "integerRestrictions",
    oneof: 0

  field :name, 1, type: :string
  field :flag_name, 2, type: :string, json_name: "flagName"

  field :value_type, 3,
    type: Google.Cloud.Alloydb.V1.SupportedDatabaseFlag.ValueType,
    json_name: "valueType",
    enum: true

  field :accepts_multiple_values, 4, type: :bool, json_name: "acceptsMultipleValues"

  field :supported_db_versions, 5,
    repeated: true,
    type: Google.Cloud.Alloydb.V1.DatabaseVersion,
    json_name: "supportedDbVersions",
    enum: true

  field :requires_db_restart, 6, type: :bool, json_name: "requiresDbRestart"
end

defmodule Google.Cloud.Alloydb.V1.User do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :password, 2, type: :string, deprecated: false

  field :database_roles, 4,
    repeated: true,
    type: :string,
    json_name: "databaseRoles",
    deprecated: false

  field :user_type, 5,
    type: Google.Cloud.Alloydb.V1.User.UserType,
    json_name: "userType",
    enum: true,
    deprecated: false
end