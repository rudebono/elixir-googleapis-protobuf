defmodule Google.Cloud.Redis.Cluster.V1beta1.PscConnectionStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PSC_CONNECTION_STATUS_UNSPECIFIED, 0
  field :PSC_CONNECTION_STATUS_ACTIVE, 1
  field :PSC_CONNECTION_STATUS_NOT_FOUND, 2
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.AuthorizationMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :AUTH_MODE_UNSPECIFIED, 0
  field :AUTH_MODE_IAM_AUTH, 1
  field :AUTH_MODE_DISABLED, 2
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.NodeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :NODE_TYPE_UNSPECIFIED, 0
  field :REDIS_SHARED_CORE_NANO, 1
  field :REDIS_HIGHMEM_MEDIUM, 2
  field :REDIS_HIGHMEM_XLARGE, 3
  field :REDIS_STANDARD_SMALL, 4
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.TransitEncryptionMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TRANSIT_ENCRYPTION_MODE_UNSPECIFIED, 0
  field :TRANSIT_ENCRYPTION_MODE_DISABLED, 1
  field :TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION, 2
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.ConnectionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONNECTION_TYPE_UNSPECIFIED, 0
  field :CONNECTION_TYPE_DISCOVERY, 1
  field :CONNECTION_TYPE_PRIMARY, 2
  field :CONNECTION_TYPE_READER, 3
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.Cluster.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :UPDATING, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.AutomatedBackupConfig.AutomatedBackupMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :AUTOMATED_BACKUP_MODE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :ENABLED, 2
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.Backup.BackupType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :BACKUP_TYPE_UNSPECIFIED, 0
  field :ON_DEMAND, 1
  field :AUTOMATED, 2
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.Backup.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :SUSPENDED, 4
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.CrossClusterReplicationConfig.ClusterRole do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CLUSTER_ROLE_UNSPECIFIED, 0
  field :NONE, 1
  field :PRIMARY, 2
  field :SECONDARY, 3
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.ClusterPersistenceConfig.PersistenceMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PERSISTENCE_MODE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :RDB, 2
  field :AOF, 3
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.ClusterPersistenceConfig.RDBConfig.SnapshotPeriod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SNAPSHOT_PERIOD_UNSPECIFIED, 0
  field :ONE_HOUR, 1
  field :SIX_HOURS, 2
  field :TWELVE_HOURS, 3
  field :TWENTY_FOUR_HOURS, 4
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.ClusterPersistenceConfig.AOFConfig.AppendFsync do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :APPEND_FSYNC_UNSPECIFIED, 0
  field :NO, 1
  field :EVERYSEC, 2
  field :ALWAYS, 3
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.ZoneDistributionConfig.ZoneDistributionMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ZONE_DISTRIBUTION_MODE_UNSPECIFIED, 0
  field :MULTI_ZONE, 1
  field :SINGLE_ZONE, 2
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.RescheduleClusterMaintenanceRequest.RescheduleType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RESCHEDULE_TYPE_UNSPECIFIED, 0
  field :IMMEDIATE, 1
  field :SPECIFIC_TIME, 3
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.EncryptionInfo.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :GOOGLE_DEFAULT_ENCRYPTION, 1
  field :CUSTOMER_MANAGED_ENCRYPTION, 2
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.EncryptionInfo.KmsKeyState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :KMS_KEY_STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :PERMISSION_DENIED, 2
  field :DISABLED, 3
  field :DESTROYED, 4
  field :DESTROY_SCHEDULED, 5
  field :EKM_KEY_UNREACHABLE_DETECTED, 6
  field :BILLING_DISABLED, 7
  field :UNKNOWN_FAILURE, 8
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.CreateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Cloud.Redis.Cluster.V1beta1.Cluster, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.ListClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.ListClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :clusters, 1, repeated: true, type: Google.Cloud.Redis.Cluster.V1beta1.Cluster
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.UpdateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :cluster, 2, type: Google.Cloud.Redis.Cluster.V1beta1.Cluster, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.GetClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.DeleteClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.GetClusterCertificateAuthorityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.ListBackupCollectionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.ListBackupCollectionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :backup_collections, 1,
    repeated: true,
    type: Google.Cloud.Redis.Cluster.V1beta1.BackupCollection,
    json_name: "backupCollections"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.GetBackupCollectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.ListBackupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.ListBackupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :backups, 1, repeated: true, type: Google.Cloud.Redis.Cluster.V1beta1.Backup
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.GetBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.DeleteBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.ExportBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :destination, 0

  field :gcs_bucket, 3, type: :string, json_name: "gcsBucket", oneof: 0
  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.BackupClusterRequest do
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

defmodule Google.Cloud.Redis.Cluster.V1beta1.Cluster.StateInfo.UpdateInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :target_shard_count, 1, proto3_optional: true, type: :int32, json_name: "targetShardCount"

  field :target_replica_count, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "targetReplicaCount"
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.Cluster.StateInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :info, 0

  field :update_info, 1,
    type: Google.Cloud.Redis.Cluster.V1beta1.Cluster.StateInfo.UpdateInfo,
    json_name: "updateInfo",
    oneof: 0
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.Cluster.GcsBackupSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uris, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.Cluster.ManagedBackupSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :backup, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.Cluster.RedisConfigsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.Cluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :import_sources, 0

  field :gcs_source, 34,
    type: Google.Cloud.Redis.Cluster.V1beta1.Cluster.GcsBackupSource,
    json_name: "gcsSource",
    oneof: 0,
    deprecated: false

  field :managed_backup_source, 35,
    type: Google.Cloud.Redis.Cluster.V1beta1.Cluster.ManagedBackupSource,
    json_name: "managedBackupSource",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :state, 4,
    type: Google.Cloud.Redis.Cluster.V1beta1.Cluster.State,
    enum: true,
    deprecated: false

  field :uid, 5, type: :string, deprecated: false

  field :replica_count, 8,
    proto3_optional: true,
    type: :int32,
    json_name: "replicaCount",
    deprecated: false

  field :authorization_mode, 11,
    type: Google.Cloud.Redis.Cluster.V1beta1.AuthorizationMode,
    json_name: "authorizationMode",
    enum: true,
    deprecated: false

  field :transit_encryption_mode, 12,
    type: Google.Cloud.Redis.Cluster.V1beta1.TransitEncryptionMode,
    json_name: "transitEncryptionMode",
    enum: true,
    deprecated: false

  field :size_gb, 13, proto3_optional: true, type: :int32, json_name: "sizeGb", deprecated: false

  field :shard_count, 14,
    proto3_optional: true,
    type: :int32,
    json_name: "shardCount",
    deprecated: false

  field :psc_configs, 15,
    repeated: true,
    type: Google.Cloud.Redis.Cluster.V1beta1.PscConfig,
    json_name: "pscConfigs",
    deprecated: false

  field :discovery_endpoints, 16,
    repeated: true,
    type: Google.Cloud.Redis.Cluster.V1beta1.DiscoveryEndpoint,
    json_name: "discoveryEndpoints",
    deprecated: false

  field :psc_connections, 17,
    repeated: true,
    type: Google.Cloud.Redis.Cluster.V1beta1.PscConnection,
    json_name: "pscConnections",
    deprecated: false

  field :state_info, 18,
    type: Google.Cloud.Redis.Cluster.V1beta1.Cluster.StateInfo,
    json_name: "stateInfo",
    deprecated: false

  field :node_type, 19,
    type: Google.Cloud.Redis.Cluster.V1beta1.NodeType,
    json_name: "nodeType",
    enum: true,
    deprecated: false

  field :persistence_config, 20,
    type: Google.Cloud.Redis.Cluster.V1beta1.ClusterPersistenceConfig,
    json_name: "persistenceConfig",
    deprecated: false

  field :redis_configs, 21,
    repeated: true,
    type: Google.Cloud.Redis.Cluster.V1beta1.Cluster.RedisConfigsEntry,
    json_name: "redisConfigs",
    map: true,
    deprecated: false

  field :precise_size_gb, 22,
    proto3_optional: true,
    type: :double,
    json_name: "preciseSizeGb",
    deprecated: false

  field :zone_distribution_config, 23,
    type: Google.Cloud.Redis.Cluster.V1beta1.ZoneDistributionConfig,
    json_name: "zoneDistributionConfig",
    deprecated: false

  field :cross_cluster_replication_config, 24,
    type: Google.Cloud.Redis.Cluster.V1beta1.CrossClusterReplicationConfig,
    json_name: "crossClusterReplicationConfig",
    deprecated: false

  field :deletion_protection_enabled, 25,
    proto3_optional: true,
    type: :bool,
    json_name: "deletionProtectionEnabled",
    deprecated: false

  field :maintenance_policy, 26,
    proto3_optional: true,
    type: Google.Cloud.Redis.Cluster.V1beta1.ClusterMaintenancePolicy,
    json_name: "maintenancePolicy",
    deprecated: false

  field :maintenance_schedule, 27,
    proto3_optional: true,
    type: Google.Cloud.Redis.Cluster.V1beta1.ClusterMaintenanceSchedule,
    json_name: "maintenanceSchedule",
    deprecated: false

  field :psc_service_attachments, 30,
    repeated: true,
    type: Google.Cloud.Redis.Cluster.V1beta1.PscServiceAttachment,
    json_name: "pscServiceAttachments",
    deprecated: false

  field :cluster_endpoints, 36,
    repeated: true,
    type: Google.Cloud.Redis.Cluster.V1beta1.ClusterEndpoint,
    json_name: "clusterEndpoints",
    deprecated: false

  field :backup_collection, 39,
    proto3_optional: true,
    type: :string,
    json_name: "backupCollection",
    deprecated: false

  field :kms_key, 40, proto3_optional: true, type: :string, json_name: "kmsKey", deprecated: false

  field :automated_backup_config, 42,
    type: Google.Cloud.Redis.Cluster.V1beta1.AutomatedBackupConfig,
    json_name: "automatedBackupConfig",
    deprecated: false

  field :encryption_info, 43,
    type: Google.Cloud.Redis.Cluster.V1beta1.EncryptionInfo,
    json_name: "encryptionInfo",
    deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.AutomatedBackupConfig.FixedFrequencySchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_time, 2,
    proto3_optional: true,
    type: Google.Type.TimeOfDay,
    json_name: "startTime",
    deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.AutomatedBackupConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :schedule, 0

  field :fixed_frequency_schedule, 2,
    type: Google.Cloud.Redis.Cluster.V1beta1.AutomatedBackupConfig.FixedFrequencySchedule,
    json_name: "fixedFrequencySchedule",
    oneof: 0,
    deprecated: false

  field :automated_backup_mode, 1,
    type: Google.Cloud.Redis.Cluster.V1beta1.AutomatedBackupConfig.AutomatedBackupMode,
    json_name: "automatedBackupMode",
    enum: true,
    deprecated: false

  field :retention, 3, proto3_optional: true, type: Google.Protobuf.Duration, deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.BackupCollection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :cluster_uid, 3, type: :string, json_name: "clusterUid", deprecated: false
  field :cluster, 4, type: :string, deprecated: false
  field :kms_key, 5, type: :string, json_name: "kmsKey", deprecated: false
  field :uid, 6, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.Backup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :cluster, 3, type: :string, deprecated: false
  field :cluster_uid, 4, type: :string, json_name: "clusterUid", deprecated: false
  field :total_size_bytes, 5, type: :int64, json_name: "totalSizeBytes", deprecated: false

  field :expire_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :engine_version, 7, type: :string, json_name: "engineVersion", deprecated: false

  field :backup_files, 8,
    repeated: true,
    type: Google.Cloud.Redis.Cluster.V1beta1.BackupFile,
    json_name: "backupFiles",
    deprecated: false

  field :node_type, 9,
    type: Google.Cloud.Redis.Cluster.V1beta1.NodeType,
    json_name: "nodeType",
    enum: true,
    deprecated: false

  field :replica_count, 10, type: :int32, json_name: "replicaCount", deprecated: false
  field :shard_count, 11, type: :int32, json_name: "shardCount", deprecated: false

  field :backup_type, 12,
    type: Google.Cloud.Redis.Cluster.V1beta1.Backup.BackupType,
    json_name: "backupType",
    enum: true,
    deprecated: false

  field :state, 13,
    type: Google.Cloud.Redis.Cluster.V1beta1.Backup.State,
    enum: true,
    deprecated: false

  field :encryption_info, 14,
    type: Google.Cloud.Redis.Cluster.V1beta1.EncryptionInfo,
    json_name: "encryptionInfo",
    deprecated: false

  field :uid, 15, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.BackupFile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :file_name, 1, type: :string, json_name: "fileName", deprecated: false
  field :size_bytes, 2, type: :int64, json_name: "sizeBytes", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.PscServiceAttachment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service_attachment, 1, type: :string, json_name: "serviceAttachment", deprecated: false

  field :connection_type, 3,
    type: Google.Cloud.Redis.Cluster.V1beta1.ConnectionType,
    json_name: "connectionType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.CrossClusterReplicationConfig.RemoteCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cluster, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.CrossClusterReplicationConfig.Membership do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :primary_cluster, 1,
    type: Google.Cloud.Redis.Cluster.V1beta1.CrossClusterReplicationConfig.RemoteCluster,
    json_name: "primaryCluster",
    deprecated: false

  field :secondary_clusters, 2,
    repeated: true,
    type: Google.Cloud.Redis.Cluster.V1beta1.CrossClusterReplicationConfig.RemoteCluster,
    json_name: "secondaryClusters",
    deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.CrossClusterReplicationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cluster_role, 1,
    type: Google.Cloud.Redis.Cluster.V1beta1.CrossClusterReplicationConfig.ClusterRole,
    json_name: "clusterRole",
    enum: true

  field :primary_cluster, 2,
    type: Google.Cloud.Redis.Cluster.V1beta1.CrossClusterReplicationConfig.RemoteCluster,
    json_name: "primaryCluster"

  field :secondary_clusters, 3,
    repeated: true,
    type: Google.Cloud.Redis.Cluster.V1beta1.CrossClusterReplicationConfig.RemoteCluster,
    json_name: "secondaryClusters"

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :membership, 5,
    type: Google.Cloud.Redis.Cluster.V1beta1.CrossClusterReplicationConfig.Membership,
    deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.ClusterMaintenancePolicy do
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
    type: Google.Cloud.Redis.Cluster.V1beta1.ClusterWeeklyMaintenanceWindow,
    json_name: "weeklyMaintenanceWindow"
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.ClusterWeeklyMaintenanceWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :day, 1, type: Google.Type.DayOfWeek, enum: true
  field :start_time, 2, type: Google.Type.TimeOfDay, json_name: "startTime"
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.ClusterMaintenanceSchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.PscConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :network, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.DiscoveryEndpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :address, 1, type: :string, deprecated: false
  field :port, 2, type: :int32, deprecated: false

  field :psc_config, 3,
    type: Google.Cloud.Redis.Cluster.V1beta1.PscConfig,
    json_name: "pscConfig",
    deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.PscConnection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :psc_connection_id, 1, type: :string, json_name: "pscConnectionId", deprecated: false
  field :address, 2, type: :string, deprecated: false
  field :forwarding_rule, 3, type: :string, json_name: "forwardingRule", deprecated: false
  field :project_id, 4, type: :string, json_name: "projectId", deprecated: false
  field :network, 5, type: :string, deprecated: false
  field :service_attachment, 6, type: :string, json_name: "serviceAttachment", deprecated: false

  field :psc_connection_status, 8,
    type: Google.Cloud.Redis.Cluster.V1beta1.PscConnectionStatus,
    json_name: "pscConnectionStatus",
    enum: true,
    deprecated: false

  field :connection_type, 10,
    type: Google.Cloud.Redis.Cluster.V1beta1.ConnectionType,
    json_name: "connectionType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.ClusterEndpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :connections, 1, repeated: true, type: Google.Cloud.Redis.Cluster.V1beta1.ConnectionDetail
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.ConnectionDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :connection, 0

  field :psc_auto_connection, 1,
    type: Google.Cloud.Redis.Cluster.V1beta1.PscAutoConnection,
    json_name: "pscAutoConnection",
    oneof: 0

  field :psc_connection, 2,
    type: Google.Cloud.Redis.Cluster.V1beta1.PscConnection,
    json_name: "pscConnection",
    oneof: 0
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.PscAutoConnection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :psc_connection_id, 1, type: :string, json_name: "pscConnectionId", deprecated: false
  field :address, 2, type: :string, deprecated: false
  field :forwarding_rule, 3, type: :string, json_name: "forwardingRule", deprecated: false
  field :project_id, 4, type: :string, json_name: "projectId", deprecated: false
  field :network, 5, type: :string, deprecated: false
  field :service_attachment, 6, type: :string, json_name: "serviceAttachment", deprecated: false

  field :psc_connection_status, 8,
    type: Google.Cloud.Redis.Cluster.V1beta1.PscConnectionStatus,
    json_name: "pscConnectionStatus",
    enum: true,
    deprecated: false

  field :connection_type, 9,
    type: Google.Cloud.Redis.Cluster.V1beta1.ConnectionType,
    json_name: "connectionType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.OperationMetadata do
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

defmodule Google.Cloud.Redis.Cluster.V1beta1.CertificateAuthority.ManagedCertificateAuthority.CertChain do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :certificates, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.CertificateAuthority.ManagedCertificateAuthority do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ca_certs, 1,
    repeated: true,
    type:
      Google.Cloud.Redis.Cluster.V1beta1.CertificateAuthority.ManagedCertificateAuthority.CertChain,
    json_name: "caCerts"
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.CertificateAuthority do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :server_ca, 0

  field :managed_server_ca, 1,
    type: Google.Cloud.Redis.Cluster.V1beta1.CertificateAuthority.ManagedCertificateAuthority,
    json_name: "managedServerCa",
    oneof: 0

  field :name, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.ClusterPersistenceConfig.RDBConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rdb_snapshot_period, 1,
    type: Google.Cloud.Redis.Cluster.V1beta1.ClusterPersistenceConfig.RDBConfig.SnapshotPeriod,
    json_name: "rdbSnapshotPeriod",
    enum: true,
    deprecated: false

  field :rdb_snapshot_start_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "rdbSnapshotStartTime",
    deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.ClusterPersistenceConfig.AOFConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :append_fsync, 1,
    type: Google.Cloud.Redis.Cluster.V1beta1.ClusterPersistenceConfig.AOFConfig.AppendFsync,
    json_name: "appendFsync",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.ClusterPersistenceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :mode, 1,
    type: Google.Cloud.Redis.Cluster.V1beta1.ClusterPersistenceConfig.PersistenceMode,
    enum: true,
    deprecated: false

  field :rdb_config, 2,
    type: Google.Cloud.Redis.Cluster.V1beta1.ClusterPersistenceConfig.RDBConfig,
    json_name: "rdbConfig",
    deprecated: false

  field :aof_config, 3,
    type: Google.Cloud.Redis.Cluster.V1beta1.ClusterPersistenceConfig.AOFConfig,
    json_name: "aofConfig",
    deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.ZoneDistributionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :mode, 1,
    type: Google.Cloud.Redis.Cluster.V1beta1.ZoneDistributionConfig.ZoneDistributionMode,
    enum: true,
    deprecated: false

  field :zone, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.RescheduleClusterMaintenanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :reschedule_type, 2,
    type: Google.Cloud.Redis.Cluster.V1beta1.RescheduleClusterMaintenanceRequest.RescheduleType,
    json_name: "rescheduleType",
    enum: true,
    deprecated: false

  field :schedule_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "scheduleTime",
    deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.EncryptionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :encryption_type, 1,
    type: Google.Cloud.Redis.Cluster.V1beta1.EncryptionInfo.Type,
    json_name: "encryptionType",
    enum: true,
    deprecated: false

  field :kms_key_versions, 2,
    repeated: true,
    type: :string,
    json_name: "kmsKeyVersions",
    deprecated: false

  field :kms_key_primary_state, 3,
    type: Google.Cloud.Redis.Cluster.V1beta1.EncryptionInfo.KmsKeyState,
    json_name: "kmsKeyPrimaryState",
    enum: true,
    deprecated: false

  field :last_update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "lastUpdateTime",
    deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.CloudRedisCluster.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.redis.cluster.v1beta1.CloudRedisCluster",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListClusters,
      Google.Cloud.Redis.Cluster.V1beta1.ListClustersRequest,
      Google.Cloud.Redis.Cluster.V1beta1.ListClustersResponse

  rpc :GetCluster,
      Google.Cloud.Redis.Cluster.V1beta1.GetClusterRequest,
      Google.Cloud.Redis.Cluster.V1beta1.Cluster

  rpc :UpdateCluster,
      Google.Cloud.Redis.Cluster.V1beta1.UpdateClusterRequest,
      Google.Longrunning.Operation

  rpc :DeleteCluster,
      Google.Cloud.Redis.Cluster.V1beta1.DeleteClusterRequest,
      Google.Longrunning.Operation

  rpc :CreateCluster,
      Google.Cloud.Redis.Cluster.V1beta1.CreateClusterRequest,
      Google.Longrunning.Operation

  rpc :GetClusterCertificateAuthority,
      Google.Cloud.Redis.Cluster.V1beta1.GetClusterCertificateAuthorityRequest,
      Google.Cloud.Redis.Cluster.V1beta1.CertificateAuthority

  rpc :RescheduleClusterMaintenance,
      Google.Cloud.Redis.Cluster.V1beta1.RescheduleClusterMaintenanceRequest,
      Google.Longrunning.Operation

  rpc :ListBackupCollections,
      Google.Cloud.Redis.Cluster.V1beta1.ListBackupCollectionsRequest,
      Google.Cloud.Redis.Cluster.V1beta1.ListBackupCollectionsResponse

  rpc :GetBackupCollection,
      Google.Cloud.Redis.Cluster.V1beta1.GetBackupCollectionRequest,
      Google.Cloud.Redis.Cluster.V1beta1.BackupCollection

  rpc :ListBackups,
      Google.Cloud.Redis.Cluster.V1beta1.ListBackupsRequest,
      Google.Cloud.Redis.Cluster.V1beta1.ListBackupsResponse

  rpc :GetBackup,
      Google.Cloud.Redis.Cluster.V1beta1.GetBackupRequest,
      Google.Cloud.Redis.Cluster.V1beta1.Backup

  rpc :DeleteBackup,
      Google.Cloud.Redis.Cluster.V1beta1.DeleteBackupRequest,
      Google.Longrunning.Operation

  rpc :ExportBackup,
      Google.Cloud.Redis.Cluster.V1beta1.ExportBackupRequest,
      Google.Longrunning.Operation

  rpc :BackupCluster,
      Google.Cloud.Redis.Cluster.V1beta1.BackupClusterRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Redis.Cluster.V1beta1.CloudRedisCluster.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Redis.Cluster.V1beta1.CloudRedisCluster.Service
end
