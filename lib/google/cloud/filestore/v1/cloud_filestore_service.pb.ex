defmodule Google.Cloud.Filestore.V1.NetworkConfig.AddressMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ADDRESS_MODE_UNSPECIFIED, 0
  field :MODE_IPV4, 1
end

defmodule Google.Cloud.Filestore.V1.NetworkConfig.ConnectMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONNECT_MODE_UNSPECIFIED, 0
  field :DIRECT_PEERING, 1
  field :PRIVATE_SERVICE_ACCESS, 2
end

defmodule Google.Cloud.Filestore.V1.NfsExportOptions.AccessMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ACCESS_MODE_UNSPECIFIED, 0
  field :READ_ONLY, 1
  field :READ_WRITE, 2
end

defmodule Google.Cloud.Filestore.V1.NfsExportOptions.SquashMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SQUASH_MODE_UNSPECIFIED, 0
  field :NO_ROOT_SQUASH, 1
  field :ROOT_SQUASH, 2
end

defmodule Google.Cloud.Filestore.V1.ReplicaConfig.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 3
  field :REMOVING, 4
  field :FAILED, 5
end

defmodule Google.Cloud.Filestore.V1.ReplicaConfig.StateReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_REASON_UNSPECIFIED, 0
  field :PEER_INSTANCE_UNREACHABLE, 1
  field :REMOVE_FAILED, 2
end

defmodule Google.Cloud.Filestore.V1.Replication.Role do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ROLE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :STANDBY, 2
end

defmodule Google.Cloud.Filestore.V1.Instance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :REPAIRING, 3
  field :DELETING, 4
  field :ERROR, 6
  field :RESTORING, 7
  field :SUSPENDED, 8
  field :SUSPENDING, 9
  field :RESUMING, 10
  field :REVERTING, 12
  field :PROMOTING, 13
end

defmodule Google.Cloud.Filestore.V1.Instance.Tier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TIER_UNSPECIFIED, 0
  field :STANDARD, 1
  field :PREMIUM, 2
  field :BASIC_HDD, 3
  field :BASIC_SSD, 4
  field :HIGH_SCALE_SSD, 5
  field :ENTERPRISE, 6
  field :ZONAL, 7
  field :REGIONAL, 8
end

defmodule Google.Cloud.Filestore.V1.Instance.SuspensionReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SUSPENSION_REASON_UNSPECIFIED, 0
  field :KMS_KEY_ISSUE, 1
end

defmodule Google.Cloud.Filestore.V1.Instance.FileProtocol do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FILE_PROTOCOL_UNSPECIFIED, 0
  field :NFS_V3, 1
  field :NFS_V4_1, 2
end

defmodule Google.Cloud.Filestore.V1.Snapshot.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :DELETING, 3
end

defmodule Google.Cloud.Filestore.V1.Backup.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :FINALIZING, 2
  field :READY, 3
  field :DELETING, 4
  field :INVALID, 5
end

defmodule Google.Cloud.Filestore.V1.NetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network, 1, type: :string

  field :modes, 3,
    repeated: true,
    type: Google.Cloud.Filestore.V1.NetworkConfig.AddressMode,
    enum: true

  field :reserved_ip_range, 4, type: :string, json_name: "reservedIpRange"

  field :ip_addresses, 5,
    repeated: true,
    type: :string,
    json_name: "ipAddresses",
    deprecated: false

  field :connect_mode, 6,
    type: Google.Cloud.Filestore.V1.NetworkConfig.ConnectMode,
    json_name: "connectMode",
    enum: true
end

defmodule Google.Cloud.Filestore.V1.FileShareConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :name, 1, type: :string
  field :capacity_gb, 2, type: :int64, json_name: "capacityGb"
  field :source_backup, 8, type: :string, json_name: "sourceBackup", oneof: 0, deprecated: false

  field :nfs_export_options, 7,
    repeated: true,
    type: Google.Cloud.Filestore.V1.NfsExportOptions,
    json_name: "nfsExportOptions"
end

defmodule Google.Cloud.Filestore.V1.NfsExportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ip_ranges, 1, repeated: true, type: :string, json_name: "ipRanges"

  field :access_mode, 2,
    type: Google.Cloud.Filestore.V1.NfsExportOptions.AccessMode,
    json_name: "accessMode",
    enum: true

  field :squash_mode, 3,
    type: Google.Cloud.Filestore.V1.NfsExportOptions.SquashMode,
    json_name: "squashMode",
    enum: true

  field :anon_uid, 4, type: :int64, json_name: "anonUid"
  field :anon_gid, 5, type: :int64, json_name: "anonGid"
end

defmodule Google.Cloud.Filestore.V1.ReplicaConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Filestore.V1.ReplicaConfig.State,
    enum: true,
    deprecated: false

  field :state_reasons, 2,
    repeated: true,
    type: Google.Cloud.Filestore.V1.ReplicaConfig.StateReason,
    json_name: "stateReasons",
    enum: true,
    deprecated: false

  field :peer_instance, 3, type: :string, json_name: "peerInstance", deprecated: false

  field :last_active_sync_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "lastActiveSyncTime",
    deprecated: false
end

defmodule Google.Cloud.Filestore.V1.Replication do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :role, 1, type: Google.Cloud.Filestore.V1.Replication.Role, enum: true, deprecated: false

  field :replicas, 2,
    repeated: true,
    type: Google.Cloud.Filestore.V1.ReplicaConfig,
    deprecated: false
end

defmodule Google.Cloud.Filestore.V1.Instance.IOPSPerTB do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :max_iops_per_tb, 2, type: :int64, json_name: "maxIopsPerTb", deprecated: false
end

defmodule Google.Cloud.Filestore.V1.Instance.FixedIOPS do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :max_iops, 2, type: :int64, json_name: "maxIops", deprecated: false
end

defmodule Google.Cloud.Filestore.V1.Instance.PerformanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :mode, 0

  field :iops_per_tb, 4,
    type: Google.Cloud.Filestore.V1.Instance.IOPSPerTB,
    json_name: "iopsPerTb",
    oneof: 0

  field :fixed_iops, 2,
    type: Google.Cloud.Filestore.V1.Instance.FixedIOPS,
    json_name: "fixedIops",
    oneof: 0
end

defmodule Google.Cloud.Filestore.V1.Instance.PerformanceLimits do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :max_iops, 7, type: :int64, json_name: "maxIops", deprecated: false
  field :max_read_iops, 1, type: :int64, json_name: "maxReadIops", deprecated: false
  field :max_write_iops, 2, type: :int64, json_name: "maxWriteIops", deprecated: false

  field :max_read_throughput_bps, 5,
    type: :int64,
    json_name: "maxReadThroughputBps",
    deprecated: false

  field :max_write_throughput_bps, 6,
    type: :int64,
    json_name: "maxWriteThroughputBps",
    deprecated: false
end

defmodule Google.Cloud.Filestore.V1.Instance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Filestore.V1.Instance.TagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Filestore.V1.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string
  field :state, 5, type: Google.Cloud.Filestore.V1.Instance.State, enum: true, deprecated: false
  field :status_message, 6, type: :string, json_name: "statusMessage", deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :tier, 8, type: Google.Cloud.Filestore.V1.Instance.Tier, enum: true

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Filestore.V1.Instance.LabelsEntry,
    map: true

  field :file_shares, 10,
    repeated: true,
    type: Google.Cloud.Filestore.V1.FileShareConfig,
    json_name: "fileShares"

  field :networks, 11, repeated: true, type: Google.Cloud.Filestore.V1.NetworkConfig
  field :etag, 12, type: :string

  field :satisfies_pzs, 13,
    type: Google.Protobuf.BoolValue,
    json_name: "satisfiesPzs",
    deprecated: false

  field :satisfies_pzi, 18, type: :bool, json_name: "satisfiesPzi", deprecated: false
  field :kms_key_name, 14, type: :string, json_name: "kmsKeyName"

  field :suspension_reasons, 15,
    repeated: true,
    type: Google.Cloud.Filestore.V1.Instance.SuspensionReason,
    json_name: "suspensionReasons",
    enum: true,
    deprecated: false

  field :replication, 19, type: Google.Cloud.Filestore.V1.Replication, deprecated: false

  field :tags, 20,
    repeated: true,
    type: Google.Cloud.Filestore.V1.Instance.TagsEntry,
    map: true,
    deprecated: false

  field :protocol, 21,
    type: Google.Cloud.Filestore.V1.Instance.FileProtocol,
    enum: true,
    deprecated: false

  field :custom_performance_supported, 23,
    type: :bool,
    json_name: "customPerformanceSupported",
    deprecated: false

  field :performance_config, 24,
    type: Google.Cloud.Filestore.V1.Instance.PerformanceConfig,
    json_name: "performanceConfig",
    deprecated: false

  field :performance_limits, 25,
    type: Google.Cloud.Filestore.V1.Instance.PerformanceLimits,
    json_name: "performanceLimits",
    deprecated: false

  field :deletion_protection_enabled, 26,
    type: :bool,
    json_name: "deletionProtectionEnabled",
    deprecated: false

  field :deletion_protection_reason, 27,
    type: :string,
    json_name: "deletionProtectionReason",
    deprecated: false
end

defmodule Google.Cloud.Filestore.V1.CreateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Filestore.V1.Instance, deprecated: false
end

defmodule Google.Cloud.Filestore.V1.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Filestore.V1.UpdateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :instance, 2, type: Google.Cloud.Filestore.V1.Instance
end

defmodule Google.Cloud.Filestore.V1.RestoreInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :name, 1, type: :string, deprecated: false
  field :file_share, 2, type: :string, json_name: "fileShare", deprecated: false
  field :source_backup, 3, type: :string, json_name: "sourceBackup", oneof: 0, deprecated: false
end

defmodule Google.Cloud.Filestore.V1.RevertInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :target_snapshot_id, 2, type: :string, json_name: "targetSnapshotId", deprecated: false
end

defmodule Google.Cloud.Filestore.V1.DeleteInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Filestore.V1.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Filestore.V1.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Filestore.V1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Filestore.V1.Snapshot.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Filestore.V1.Snapshot.TagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Filestore.V1.Snapshot do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string
  field :state, 3, type: Google.Cloud.Filestore.V1.Snapshot.State, enum: true, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Filestore.V1.Snapshot.LabelsEntry,
    map: true

  field :filesystem_used_bytes, 6,
    type: :int64,
    json_name: "filesystemUsedBytes",
    deprecated: false

  field :tags, 7,
    repeated: true,
    type: Google.Cloud.Filestore.V1.Snapshot.TagsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Filestore.V1.CreateSnapshotRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :snapshot_id, 2, type: :string, json_name: "snapshotId", deprecated: false
  field :snapshot, 3, type: Google.Cloud.Filestore.V1.Snapshot, deprecated: false
end

defmodule Google.Cloud.Filestore.V1.GetSnapshotRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Filestore.V1.DeleteSnapshotRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Filestore.V1.UpdateSnapshotRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :snapshot, 2, type: Google.Cloud.Filestore.V1.Snapshot, deprecated: false
end

defmodule Google.Cloud.Filestore.V1.ListSnapshotsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :filter, 5, type: :string

  field :return_partial_success, 6,
    type: :bool,
    json_name: "returnPartialSuccess",
    deprecated: false
end

defmodule Google.Cloud.Filestore.V1.ListSnapshotsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :snapshots, 1, repeated: true, type: Google.Cloud.Filestore.V1.Snapshot
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Filestore.V1.Backup.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Filestore.V1.Backup.TagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Filestore.V1.Backup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string
  field :state, 3, type: Google.Cloud.Filestore.V1.Backup.State, enum: true, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :labels, 5, repeated: true, type: Google.Cloud.Filestore.V1.Backup.LabelsEntry, map: true
  field :capacity_gb, 6, type: :int64, json_name: "capacityGb", deprecated: false
  field :storage_bytes, 7, type: :int64, json_name: "storageBytes", deprecated: false
  field :source_instance, 8, type: :string, json_name: "sourceInstance", deprecated: false
  field :source_file_share, 9, type: :string, json_name: "sourceFileShare"

  field :source_instance_tier, 10,
    type: Google.Cloud.Filestore.V1.Instance.Tier,
    json_name: "sourceInstanceTier",
    enum: true,
    deprecated: false

  field :download_bytes, 11, type: :int64, json_name: "downloadBytes", deprecated: false

  field :satisfies_pzs, 12,
    type: Google.Protobuf.BoolValue,
    json_name: "satisfiesPzs",
    deprecated: false

  field :satisfies_pzi, 14, type: :bool, json_name: "satisfiesPzi", deprecated: false
  field :kms_key, 13, type: :string, json_name: "kmsKey", deprecated: false

  field :tags, 15,
    repeated: true,
    type: Google.Cloud.Filestore.V1.Backup.TagsEntry,
    map: true,
    deprecated: false

  field :file_system_protocol, 16,
    type: Google.Cloud.Filestore.V1.Instance.FileProtocol,
    json_name: "fileSystemProtocol",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Filestore.V1.CreateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :backup, 2, type: Google.Cloud.Filestore.V1.Backup, deprecated: false
  field :backup_id, 3, type: :string, json_name: "backupId", deprecated: false
end

defmodule Google.Cloud.Filestore.V1.DeleteBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Filestore.V1.UpdateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :backup, 1, type: Google.Cloud.Filestore.V1.Backup, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Filestore.V1.PromoteReplicaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :peer_instance, 2, type: :string, json_name: "peerInstance", deprecated: false
end

defmodule Google.Cloud.Filestore.V1.GetBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Filestore.V1.ListBackupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Filestore.V1.ListBackupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :backups, 1, repeated: true, type: Google.Cloud.Filestore.V1.Backup
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Filestore.V1.CloudFilestoreManager.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.filestore.v1.CloudFilestoreManager",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListInstances,
      Google.Cloud.Filestore.V1.ListInstancesRequest,
      Google.Cloud.Filestore.V1.ListInstancesResponse

  rpc :GetInstance,
      Google.Cloud.Filestore.V1.GetInstanceRequest,
      Google.Cloud.Filestore.V1.Instance

  rpc :CreateInstance,
      Google.Cloud.Filestore.V1.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstance,
      Google.Cloud.Filestore.V1.UpdateInstanceRequest,
      Google.Longrunning.Operation

  rpc :RestoreInstance,
      Google.Cloud.Filestore.V1.RestoreInstanceRequest,
      Google.Longrunning.Operation

  rpc :RevertInstance,
      Google.Cloud.Filestore.V1.RevertInstanceRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstance,
      Google.Cloud.Filestore.V1.DeleteInstanceRequest,
      Google.Longrunning.Operation

  rpc :ListSnapshots,
      Google.Cloud.Filestore.V1.ListSnapshotsRequest,
      Google.Cloud.Filestore.V1.ListSnapshotsResponse

  rpc :GetSnapshot,
      Google.Cloud.Filestore.V1.GetSnapshotRequest,
      Google.Cloud.Filestore.V1.Snapshot

  rpc :CreateSnapshot,
      Google.Cloud.Filestore.V1.CreateSnapshotRequest,
      Google.Longrunning.Operation

  rpc :DeleteSnapshot,
      Google.Cloud.Filestore.V1.DeleteSnapshotRequest,
      Google.Longrunning.Operation

  rpc :UpdateSnapshot,
      Google.Cloud.Filestore.V1.UpdateSnapshotRequest,
      Google.Longrunning.Operation

  rpc :ListBackups,
      Google.Cloud.Filestore.V1.ListBackupsRequest,
      Google.Cloud.Filestore.V1.ListBackupsResponse

  rpc :GetBackup, Google.Cloud.Filestore.V1.GetBackupRequest, Google.Cloud.Filestore.V1.Backup

  rpc :CreateBackup, Google.Cloud.Filestore.V1.CreateBackupRequest, Google.Longrunning.Operation

  rpc :DeleteBackup, Google.Cloud.Filestore.V1.DeleteBackupRequest, Google.Longrunning.Operation

  rpc :UpdateBackup, Google.Cloud.Filestore.V1.UpdateBackupRequest, Google.Longrunning.Operation

  rpc :PromoteReplica,
      Google.Cloud.Filestore.V1.PromoteReplicaRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Filestore.V1.CloudFilestoreManager.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Filestore.V1.CloudFilestoreManager.Service
end
