defmodule Google.Cloud.Filestore.V1beta1.NetworkConfig.AddressMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ADDRESS_MODE_UNSPECIFIED, 0
  field :MODE_IPV4, 1
end

defmodule Google.Cloud.Filestore.V1beta1.NetworkConfig.ConnectMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CONNECT_MODE_UNSPECIFIED, 0
  field :DIRECT_PEERING, 1
  field :PRIVATE_SERVICE_ACCESS, 2
end

defmodule Google.Cloud.Filestore.V1beta1.NfsExportOptions.AccessMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ACCESS_MODE_UNSPECIFIED, 0
  field :READ_ONLY, 1
  field :READ_WRITE, 2
end

defmodule Google.Cloud.Filestore.V1beta1.NfsExportOptions.SquashMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SQUASH_MODE_UNSPECIFIED, 0
  field :NO_ROOT_SQUASH, 1
  field :ROOT_SQUASH, 2
end

defmodule Google.Cloud.Filestore.V1beta1.NfsExportOptions.SecurityFlavor do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SECURITY_FLAVOR_UNSPECIFIED, 0
  field :AUTH_SYS, 1
  field :KRB5, 2
  field :KRB5I, 3
  field :KRB5P, 4
end

defmodule Google.Cloud.Filestore.V1beta1.Instance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :REPAIRING, 3
  field :DELETING, 4
  field :ERROR, 6
  field :RESTORING, 7
  field :SUSPENDED, 8
  field :REVERTING, 9
  field :SUSPENDING, 10
  field :RESUMING, 11
end

defmodule Google.Cloud.Filestore.V1beta1.Instance.Tier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TIER_UNSPECIFIED, 0
  field :STANDARD, 1
  field :PREMIUM, 2
  field :BASIC_HDD, 3
  field :BASIC_SSD, 4
  field :HIGH_SCALE_SSD, 6
  field :ENTERPRISE, 7
  field :ZONAL, 8
end

defmodule Google.Cloud.Filestore.V1beta1.Instance.SuspensionReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SUSPENSION_REASON_UNSPECIFIED, 0
  field :KMS_KEY_ISSUE, 1
end

defmodule Google.Cloud.Filestore.V1beta1.Instance.FileProtocol do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FILE_PROTOCOL_UNSPECIFIED, 0
  field :NFS_V3, 1
  field :NFS_V4_1, 2
end

defmodule Google.Cloud.Filestore.V1beta1.Snapshot.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Filestore.V1beta1.Backup.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :FINALIZING, 2
  field :READY, 3
  field :DELETING, 4
  field :INVALID, 5
end

defmodule Google.Cloud.Filestore.V1beta1.Share.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Filestore.V1beta1.NetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :network, 1, type: :string

  field :modes, 3,
    repeated: true,
    type: Google.Cloud.Filestore.V1beta1.NetworkConfig.AddressMode,
    enum: true

  field :reserved_ip_range, 4, type: :string, json_name: "reservedIpRange"

  field :ip_addresses, 5,
    repeated: true,
    type: :string,
    json_name: "ipAddresses",
    deprecated: false

  field :connect_mode, 6,
    type: Google.Cloud.Filestore.V1beta1.NetworkConfig.ConnectMode,
    json_name: "connectMode",
    enum: true
end

defmodule Google.Cloud.Filestore.V1beta1.FileShareConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :name, 1, type: :string
  field :capacity_gb, 2, type: :int64, json_name: "capacityGb"
  field :source_backup, 9, type: :string, json_name: "sourceBackup", oneof: 0, deprecated: false

  field :nfs_export_options, 8,
    repeated: true,
    type: Google.Cloud.Filestore.V1beta1.NfsExportOptions,
    json_name: "nfsExportOptions"
end

defmodule Google.Cloud.Filestore.V1beta1.NfsExportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ip_ranges, 1, repeated: true, type: :string, json_name: "ipRanges"

  field :access_mode, 2,
    type: Google.Cloud.Filestore.V1beta1.NfsExportOptions.AccessMode,
    json_name: "accessMode",
    enum: true

  field :squash_mode, 3,
    type: Google.Cloud.Filestore.V1beta1.NfsExportOptions.SquashMode,
    json_name: "squashMode",
    enum: true

  field :anon_uid, 4, type: :int64, json_name: "anonUid"
  field :anon_gid, 5, type: :int64, json_name: "anonGid"

  field :security_flavors, 6,
    repeated: true,
    type: Google.Cloud.Filestore.V1beta1.NfsExportOptions.SecurityFlavor,
    json_name: "securityFlavors",
    enum: true
end

defmodule Google.Cloud.Filestore.V1beta1.ManagedActiveDirectoryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :domain, 1, type: :string
  field :computer, 2, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.DirectoryServicesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :config, 0

  field :managed_active_directory, 1,
    type: Google.Cloud.Filestore.V1beta1.ManagedActiveDirectoryConfig,
    json_name: "managedActiveDirectory",
    oneof: 0
end

defmodule Google.Cloud.Filestore.V1beta1.Instance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string

  field :state, 5,
    type: Google.Cloud.Filestore.V1beta1.Instance.State,
    enum: true,
    deprecated: false

  field :status_message, 6, type: :string, json_name: "statusMessage", deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :tier, 8, type: Google.Cloud.Filestore.V1beta1.Instance.Tier, enum: true

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Filestore.V1beta1.Instance.LabelsEntry,
    map: true

  field :file_shares, 10,
    repeated: true,
    type: Google.Cloud.Filestore.V1beta1.FileShareConfig,
    json_name: "fileShares"

  field :networks, 11, repeated: true, type: Google.Cloud.Filestore.V1beta1.NetworkConfig
  field :etag, 12, type: :string

  field :satisfies_pzs, 13,
    type: Google.Protobuf.BoolValue,
    json_name: "satisfiesPzs",
    deprecated: false

  field :kms_key_name, 14, type: :string, json_name: "kmsKeyName"

  field :suspension_reasons, 15,
    repeated: true,
    type: Google.Cloud.Filestore.V1beta1.Instance.SuspensionReason,
    json_name: "suspensionReasons",
    enum: true,
    deprecated: false

  field :max_capacity_gb, 16, type: :int64, json_name: "maxCapacityGb", deprecated: false

  field :capacity_step_size_gb, 17,
    type: :int64,
    json_name: "capacityStepSizeGb",
    deprecated: false

  field :max_share_count, 18, type: :int64, json_name: "maxShareCount"
  field :capacity_gb, 19, type: :int64, json_name: "capacityGb"
  field :multi_share_enabled, 20, type: :bool, json_name: "multiShareEnabled"

  field :protocol, 21,
    type: Google.Cloud.Filestore.V1beta1.Instance.FileProtocol,
    enum: true,
    deprecated: false

  field :directory_services, 24,
    type: Google.Cloud.Filestore.V1beta1.DirectoryServicesConfig,
    json_name: "directoryServices"
end

defmodule Google.Cloud.Filestore.V1beta1.CreateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Filestore.V1beta1.Instance, deprecated: false
end

defmodule Google.Cloud.Filestore.V1beta1.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Filestore.V1beta1.UpdateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Filestore.V1beta1.Instance, deprecated: false
end

defmodule Google.Cloud.Filestore.V1beta1.RestoreInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :name, 1, type: :string, deprecated: false
  field :file_share, 2, type: :string, json_name: "fileShare", deprecated: false

  field :source_snapshot, 3,
    type: :string,
    json_name: "sourceSnapshot",
    oneof: 0,
    deprecated: true

  field :source_backup, 4, type: :string, json_name: "sourceBackup", oneof: 0, deprecated: false
end

defmodule Google.Cloud.Filestore.V1beta1.RevertInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :target_snapshot_id, 2, type: :string, json_name: "targetSnapshotId", deprecated: false
end

defmodule Google.Cloud.Filestore.V1beta1.DeleteInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Filestore.V1beta1.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Filestore.V1beta1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.Snapshot.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.Snapshot do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string

  field :state, 3,
    type: Google.Cloud.Filestore.V1beta1.Snapshot.State,
    enum: true,
    deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Filestore.V1beta1.Snapshot.LabelsEntry,
    map: true

  field :filesystem_used_bytes, 12,
    type: :int64,
    json_name: "filesystemUsedBytes",
    deprecated: false
end

defmodule Google.Cloud.Filestore.V1beta1.CreateSnapshotRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :snapshot_id, 2, type: :string, json_name: "snapshotId", deprecated: false
  field :snapshot, 3, type: Google.Cloud.Filestore.V1beta1.Snapshot, deprecated: false
end

defmodule Google.Cloud.Filestore.V1beta1.GetSnapshotRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Filestore.V1beta1.DeleteSnapshotRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Filestore.V1beta1.UpdateSnapshotRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :snapshot, 2, type: Google.Cloud.Filestore.V1beta1.Snapshot, deprecated: false
end

defmodule Google.Cloud.Filestore.V1beta1.ListSnapshotsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.ListSnapshotsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :snapshots, 1, repeated: true, type: Google.Cloud.Filestore.V1beta1.Snapshot
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Filestore.V1beta1.Backup.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.Backup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string

  field :state, 3,
    type: Google.Cloud.Filestore.V1beta1.Backup.State,
    enum: true,
    deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Filestore.V1beta1.Backup.LabelsEntry,
    map: true

  field :capacity_gb, 6, type: :int64, json_name: "capacityGb", deprecated: false
  field :storage_bytes, 7, type: :int64, json_name: "storageBytes", deprecated: false
  field :source_instance, 8, type: :string, json_name: "sourceInstance", deprecated: false
  field :source_file_share, 9, type: :string, json_name: "sourceFileShare"

  field :source_instance_tier, 10,
    type: Google.Cloud.Filestore.V1beta1.Instance.Tier,
    json_name: "sourceInstanceTier",
    enum: true,
    deprecated: false

  field :download_bytes, 11, type: :int64, json_name: "downloadBytes", deprecated: false

  field :satisfies_pzs, 12,
    type: Google.Protobuf.BoolValue,
    json_name: "satisfiesPzs",
    deprecated: false

  field :kms_key_name, 13, type: :string, json_name: "kmsKeyName", deprecated: false
end

defmodule Google.Cloud.Filestore.V1beta1.CreateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :backup, 2, type: Google.Cloud.Filestore.V1beta1.Backup, deprecated: false
  field :backup_id, 3, type: :string, json_name: "backupId", deprecated: false
end

defmodule Google.Cloud.Filestore.V1beta1.DeleteBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Filestore.V1beta1.UpdateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backup, 1, type: Google.Cloud.Filestore.V1beta1.Backup, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Filestore.V1beta1.GetBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Filestore.V1beta1.ListBackupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.ListBackupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backups, 1, repeated: true, type: Google.Cloud.Filestore.V1beta1.Backup
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.Share.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.Share do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :name, 1, type: :string, deprecated: false
  field :mount_name, 2, type: :string, json_name: "mountName"
  field :description, 3, type: :string
  field :capacity_gb, 4, type: :int64, json_name: "capacityGb"

  field :nfs_export_options, 5,
    repeated: true,
    type: Google.Cloud.Filestore.V1beta1.NfsExportOptions,
    json_name: "nfsExportOptions"

  field :state, 6, type: Google.Cloud.Filestore.V1beta1.Share.State, enum: true, deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Filestore.V1beta1.Share.LabelsEntry,
    map: true

  field :backup, 9, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Cloud.Filestore.V1beta1.CreateShareRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :share_id, 2, type: :string, json_name: "shareId", deprecated: false
  field :share, 3, type: Google.Cloud.Filestore.V1beta1.Share, deprecated: false
end

defmodule Google.Cloud.Filestore.V1beta1.GetShareRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Filestore.V1beta1.DeleteShareRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Filestore.V1beta1.ListSharesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.ListSharesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :shares, 1, repeated: true, type: Google.Cloud.Filestore.V1beta1.Share
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.UpdateShareRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :share, 1, type: Google.Cloud.Filestore.V1beta1.Share, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Filestore.V1beta1.CloudFilestoreManager.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.filestore.v1beta1.CloudFilestoreManager",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListInstances,
      Google.Cloud.Filestore.V1beta1.ListInstancesRequest,
      Google.Cloud.Filestore.V1beta1.ListInstancesResponse

  rpc :GetInstance,
      Google.Cloud.Filestore.V1beta1.GetInstanceRequest,
      Google.Cloud.Filestore.V1beta1.Instance

  rpc :CreateInstance,
      Google.Cloud.Filestore.V1beta1.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstance,
      Google.Cloud.Filestore.V1beta1.UpdateInstanceRequest,
      Google.Longrunning.Operation

  rpc :RestoreInstance,
      Google.Cloud.Filestore.V1beta1.RestoreInstanceRequest,
      Google.Longrunning.Operation

  rpc :RevertInstance,
      Google.Cloud.Filestore.V1beta1.RevertInstanceRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstance,
      Google.Cloud.Filestore.V1beta1.DeleteInstanceRequest,
      Google.Longrunning.Operation

  rpc :ListSnapshots,
      Google.Cloud.Filestore.V1beta1.ListSnapshotsRequest,
      Google.Cloud.Filestore.V1beta1.ListSnapshotsResponse

  rpc :GetSnapshot,
      Google.Cloud.Filestore.V1beta1.GetSnapshotRequest,
      Google.Cloud.Filestore.V1beta1.Snapshot

  rpc :CreateSnapshot,
      Google.Cloud.Filestore.V1beta1.CreateSnapshotRequest,
      Google.Longrunning.Operation

  rpc :DeleteSnapshot,
      Google.Cloud.Filestore.V1beta1.DeleteSnapshotRequest,
      Google.Longrunning.Operation

  rpc :UpdateSnapshot,
      Google.Cloud.Filestore.V1beta1.UpdateSnapshotRequest,
      Google.Longrunning.Operation

  rpc :ListBackups,
      Google.Cloud.Filestore.V1beta1.ListBackupsRequest,
      Google.Cloud.Filestore.V1beta1.ListBackupsResponse

  rpc :GetBackup,
      Google.Cloud.Filestore.V1beta1.GetBackupRequest,
      Google.Cloud.Filestore.V1beta1.Backup

  rpc :CreateBackup,
      Google.Cloud.Filestore.V1beta1.CreateBackupRequest,
      Google.Longrunning.Operation

  rpc :DeleteBackup,
      Google.Cloud.Filestore.V1beta1.DeleteBackupRequest,
      Google.Longrunning.Operation

  rpc :UpdateBackup,
      Google.Cloud.Filestore.V1beta1.UpdateBackupRequest,
      Google.Longrunning.Operation

  rpc :ListShares,
      Google.Cloud.Filestore.V1beta1.ListSharesRequest,
      Google.Cloud.Filestore.V1beta1.ListSharesResponse

  rpc :GetShare,
      Google.Cloud.Filestore.V1beta1.GetShareRequest,
      Google.Cloud.Filestore.V1beta1.Share

  rpc :CreateShare,
      Google.Cloud.Filestore.V1beta1.CreateShareRequest,
      Google.Longrunning.Operation

  rpc :DeleteShare,
      Google.Cloud.Filestore.V1beta1.DeleteShareRequest,
      Google.Longrunning.Operation

  rpc :UpdateShare,
      Google.Cloud.Filestore.V1beta1.UpdateShareRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Filestore.V1beta1.CloudFilestoreManager.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Filestore.V1beta1.CloudFilestoreManager.Service
end