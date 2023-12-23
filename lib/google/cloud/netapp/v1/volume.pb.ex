defmodule Google.Cloud.Netapp.V1.Protocols do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PROTOCOLS_UNSPECIFIED, 0
  field :NFSV3, 1
  field :NFSV4, 2
  field :SMB, 3
end

defmodule Google.Cloud.Netapp.V1.AccessType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ACCESS_TYPE_UNSPECIFIED, 0
  field :READ_ONLY, 1
  field :READ_WRITE, 2
  field :READ_NONE, 3
end

defmodule Google.Cloud.Netapp.V1.SMBSettings do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SMB_SETTINGS_UNSPECIFIED, 0
  field :ENCRYPT_DATA, 1
  field :BROWSABLE, 2
  field :CHANGE_NOTIFY, 3
  field :NON_BROWSABLE, 4
  field :OPLOCKS, 5
  field :SHOW_SNAPSHOT, 6
  field :SHOW_PREVIOUS_VERSIONS, 7
  field :ACCESS_BASED_ENUMERATION, 8
  field :CONTINUOUSLY_AVAILABLE, 9
end

defmodule Google.Cloud.Netapp.V1.SecurityStyle do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SECURITY_STYLE_UNSPECIFIED, 0
  field :NTFS, 1
  field :UNIX, 2
end

defmodule Google.Cloud.Netapp.V1.RestrictedAction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RESTRICTED_ACTION_UNSPECIFIED, 0
  field :DELETE, 1
end

defmodule Google.Cloud.Netapp.V1.Volume.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :READY, 1
  field :CREATING, 2
  field :DELETING, 3
  field :UPDATING, 4
  field :RESTORING, 5
  field :DISABLED, 6
  field :ERROR, 7
end

defmodule Google.Cloud.Netapp.V1.ListVolumesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Netapp.V1.ListVolumesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :volumes, 1, repeated: true, type: Google.Cloud.Netapp.V1.Volume
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Netapp.V1.GetVolumeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.CreateVolumeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :volume_id, 2, type: :string, json_name: "volumeId", deprecated: false
  field :volume, 3, type: Google.Cloud.Netapp.V1.Volume, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.UpdateVolumeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :volume, 2, type: Google.Cloud.Netapp.V1.Volume, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.DeleteVolumeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Netapp.V1.RevertVolumeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :snapshot_id, 2, type: :string, json_name: "snapshotId", deprecated: false
end

defmodule Google.Cloud.Netapp.V1.Volume.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Netapp.V1.Volume do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :state, 2, type: Google.Cloud.Netapp.V1.Volume.State, enum: true, deprecated: false
  field :state_details, 3, type: :string, json_name: "stateDetails", deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :share_name, 5, type: :string, json_name: "shareName", deprecated: false
  field :psa_range, 6, type: :string, json_name: "psaRange", deprecated: false
  field :storage_pool, 7, type: :string, json_name: "storagePool", deprecated: false
  field :network, 8, type: :string, deprecated: false

  field :service_level, 9,
    type: Google.Cloud.Netapp.V1.ServiceLevel,
    json_name: "serviceLevel",
    enum: true,
    deprecated: false

  field :capacity_gib, 10, type: :int64, json_name: "capacityGib", deprecated: false

  field :export_policy, 11,
    type: Google.Cloud.Netapp.V1.ExportPolicy,
    json_name: "exportPolicy",
    deprecated: false

  field :protocols, 12,
    repeated: true,
    type: Google.Cloud.Netapp.V1.Protocols,
    enum: true,
    deprecated: false

  field :smb_settings, 13,
    repeated: true,
    type: Google.Cloud.Netapp.V1.SMBSettings,
    json_name: "smbSettings",
    enum: true,
    deprecated: false

  field :mount_options, 14,
    repeated: true,
    type: Google.Cloud.Netapp.V1.MountOption,
    json_name: "mountOptions",
    deprecated: false

  field :unix_permissions, 15, type: :string, json_name: "unixPermissions", deprecated: false

  field :labels, 16,
    repeated: true,
    type: Google.Cloud.Netapp.V1.Volume.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 17, type: :string, deprecated: false

  field :snapshot_policy, 18,
    type: Google.Cloud.Netapp.V1.SnapshotPolicy,
    json_name: "snapshotPolicy",
    deprecated: false

  field :snap_reserve, 19, type: :double, json_name: "snapReserve", deprecated: false
  field :snapshot_directory, 20, type: :bool, json_name: "snapshotDirectory", deprecated: false
  field :used_gib, 21, type: :int64, json_name: "usedGib", deprecated: false

  field :security_style, 22,
    type: Google.Cloud.Netapp.V1.SecurityStyle,
    json_name: "securityStyle",
    enum: true,
    deprecated: false

  field :kerberos_enabled, 23, type: :bool, json_name: "kerberosEnabled", deprecated: false
  field :ldap_enabled, 24, type: :bool, json_name: "ldapEnabled", deprecated: false
  field :active_directory, 25, type: :string, json_name: "activeDirectory", deprecated: false

  field :restore_parameters, 26,
    type: Google.Cloud.Netapp.V1.RestoreParameters,
    json_name: "restoreParameters",
    deprecated: false

  field :kms_config, 27, type: :string, json_name: "kmsConfig", deprecated: false

  field :encryption_type, 28,
    type: Google.Cloud.Netapp.V1.EncryptionType,
    json_name: "encryptionType",
    enum: true,
    deprecated: false

  field :has_replication, 29, type: :bool, json_name: "hasReplication", deprecated: false

  field :backup_config, 30,
    proto3_optional: true,
    type: Google.Cloud.Netapp.V1.BackupConfig,
    json_name: "backupConfig"

  field :restricted_actions, 31,
    repeated: true,
    type: Google.Cloud.Netapp.V1.RestrictedAction,
    json_name: "restrictedActions",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Netapp.V1.ExportPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rules, 1,
    repeated: true,
    type: Google.Cloud.Netapp.V1.SimpleExportPolicyRule,
    deprecated: false
end

defmodule Google.Cloud.Netapp.V1.SimpleExportPolicyRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :allowed_clients, 1, proto3_optional: true, type: :string, json_name: "allowedClients"
  field :has_root_access, 2, proto3_optional: true, type: :string, json_name: "hasRootAccess"

  field :access_type, 3,
    proto3_optional: true,
    type: Google.Cloud.Netapp.V1.AccessType,
    json_name: "accessType",
    enum: true

  field :nfsv3, 4, proto3_optional: true, type: :bool
  field :nfsv4, 5, proto3_optional: true, type: :bool

  field :kerberos_5_read_only, 6,
    proto3_optional: true,
    type: :bool,
    json_name: "kerberos5ReadOnly"

  field :kerberos_5_read_write, 7,
    proto3_optional: true,
    type: :bool,
    json_name: "kerberos5ReadWrite"

  field :kerberos_5i_read_only, 8,
    proto3_optional: true,
    type: :bool,
    json_name: "kerberos5iReadOnly"

  field :kerberos_5i_read_write, 9,
    proto3_optional: true,
    type: :bool,
    json_name: "kerberos5iReadWrite"

  field :kerberos_5p_read_only, 10,
    proto3_optional: true,
    type: :bool,
    json_name: "kerberos5pReadOnly"

  field :kerberos_5p_read_write, 11,
    proto3_optional: true,
    type: :bool,
    json_name: "kerberos5pReadWrite"
end

defmodule Google.Cloud.Netapp.V1.SnapshotPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enabled, 1, proto3_optional: true, type: :bool

  field :hourly_schedule, 2,
    proto3_optional: true,
    type: Google.Cloud.Netapp.V1.HourlySchedule,
    json_name: "hourlySchedule"

  field :daily_schedule, 3,
    proto3_optional: true,
    type: Google.Cloud.Netapp.V1.DailySchedule,
    json_name: "dailySchedule"

  field :weekly_schedule, 4,
    proto3_optional: true,
    type: Google.Cloud.Netapp.V1.WeeklySchedule,
    json_name: "weeklySchedule"

  field :monthly_schedule, 5,
    proto3_optional: true,
    type: Google.Cloud.Netapp.V1.MonthlySchedule,
    json_name: "monthlySchedule"
end

defmodule Google.Cloud.Netapp.V1.HourlySchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :snapshots_to_keep, 1, proto3_optional: true, type: :double, json_name: "snapshotsToKeep"
  field :minute, 2, proto3_optional: true, type: :double
end

defmodule Google.Cloud.Netapp.V1.DailySchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :snapshots_to_keep, 1, proto3_optional: true, type: :double, json_name: "snapshotsToKeep"
  field :minute, 2, proto3_optional: true, type: :double
  field :hour, 3, proto3_optional: true, type: :double
end

defmodule Google.Cloud.Netapp.V1.WeeklySchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :snapshots_to_keep, 1, proto3_optional: true, type: :double, json_name: "snapshotsToKeep"
  field :minute, 2, proto3_optional: true, type: :double
  field :hour, 3, proto3_optional: true, type: :double
  field :day, 4, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Netapp.V1.MonthlySchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :snapshots_to_keep, 1, proto3_optional: true, type: :double, json_name: "snapshotsToKeep"
  field :minute, 2, proto3_optional: true, type: :double
  field :hour, 3, proto3_optional: true, type: :double
  field :days_of_month, 4, proto3_optional: true, type: :string, json_name: "daysOfMonth"
end

defmodule Google.Cloud.Netapp.V1.MountOption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :export, 1, type: :string
  field :export_full, 2, type: :string, json_name: "exportFull"
  field :protocol, 3, type: Google.Cloud.Netapp.V1.Protocols, enum: true
  field :instructions, 4, type: :string
end

defmodule Google.Cloud.Netapp.V1.RestoreParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :source_snapshot, 1, type: :string, json_name: "sourceSnapshot", oneof: 0
  field :source_backup, 2, type: :string, json_name: "sourceBackup", oneof: 0
end

defmodule Google.Cloud.Netapp.V1.BackupConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backup_policies, 1,
    repeated: true,
    type: :string,
    json_name: "backupPolicies",
    deprecated: false

  field :backup_vault, 2, type: :string, json_name: "backupVault", deprecated: false

  field :scheduled_backup_enabled, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "scheduledBackupEnabled",
    deprecated: false
end