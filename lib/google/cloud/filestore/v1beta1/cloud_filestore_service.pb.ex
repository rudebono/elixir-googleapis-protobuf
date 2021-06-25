defmodule Google.Cloud.Filestore.V1beta1.NetworkConfig.AddressMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ADDRESS_MODE_UNSPECIFIED | :MODE_IPV4

  field :ADDRESS_MODE_UNSPECIFIED, 0

  field :MODE_IPV4, 1
end

defmodule Google.Cloud.Filestore.V1beta1.NfsExportOptions.AccessMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ACCESS_MODE_UNSPECIFIED | :READ_ONLY | :READ_WRITE

  field :ACCESS_MODE_UNSPECIFIED, 0

  field :READ_ONLY, 1

  field :READ_WRITE, 2
end

defmodule Google.Cloud.Filestore.V1beta1.NfsExportOptions.SquashMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SQUASH_MODE_UNSPECIFIED | :NO_ROOT_SQUASH | :ROOT_SQUASH

  field :SQUASH_MODE_UNSPECIFIED, 0

  field :NO_ROOT_SQUASH, 1

  field :ROOT_SQUASH, 2
end

defmodule Google.Cloud.Filestore.V1beta1.Instance.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :CREATING
          | :READY
          | :REPAIRING
          | :DELETING
          | :ERROR
          | :RESTORING

  field :STATE_UNSPECIFIED, 0

  field :CREATING, 1

  field :READY, 2

  field :REPAIRING, 3

  field :DELETING, 4

  field :ERROR, 6

  field :RESTORING, 7
end

defmodule Google.Cloud.Filestore.V1beta1.Instance.Tier do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TIER_UNSPECIFIED
          | :STANDARD
          | :PREMIUM
          | :BASIC_HDD
          | :BASIC_SSD
          | :HIGH_SCALE_SSD

  field :TIER_UNSPECIFIED, 0

  field :STANDARD, 1

  field :PREMIUM, 2

  field :BASIC_HDD, 3

  field :BASIC_SSD, 4

  field :HIGH_SCALE_SSD, 6
end

defmodule Google.Cloud.Filestore.V1beta1.Backup.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :FINALIZING | :READY | :DELETING

  field :STATE_UNSPECIFIED, 0

  field :CREATING, 1

  field :FINALIZING, 2

  field :READY, 3

  field :DELETING, 4
end

defmodule Google.Cloud.Filestore.V1beta1.NetworkConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          network: String.t(),
          modes: [[Google.Cloud.Filestore.V1beta1.NetworkConfig.AddressMode.t()]],
          reserved_ip_range: String.t(),
          ip_addresses: [String.t()]
        }

  defstruct [:network, :modes, :reserved_ip_range, :ip_addresses]

  field :network, 1, type: :string

  field :modes, 3,
    repeated: true,
    type: Google.Cloud.Filestore.V1beta1.NetworkConfig.AddressMode,
    enum: true

  field :reserved_ip_range, 4, type: :string
  field :ip_addresses, 5, repeated: true, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.FileShareConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          name: String.t(),
          capacity_gb: integer,
          nfs_export_options: [Google.Cloud.Filestore.V1beta1.NfsExportOptions.t()]
        }

  defstruct [:source, :name, :capacity_gb, :nfs_export_options]

  oneof :source, 0
  field :name, 1, type: :string
  field :capacity_gb, 2, type: :int64
  field :source_backup, 9, type: :string, oneof: 0

  field :nfs_export_options, 8,
    repeated: true,
    type: Google.Cloud.Filestore.V1beta1.NfsExportOptions
end

defmodule Google.Cloud.Filestore.V1beta1.NfsExportOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ip_ranges: [String.t()],
          access_mode: Google.Cloud.Filestore.V1beta1.NfsExportOptions.AccessMode.t(),
          squash_mode: Google.Cloud.Filestore.V1beta1.NfsExportOptions.SquashMode.t(),
          anon_uid: integer,
          anon_gid: integer
        }

  defstruct [:ip_ranges, :access_mode, :squash_mode, :anon_uid, :anon_gid]

  field :ip_ranges, 1, repeated: true, type: :string

  field :access_mode, 2,
    type: Google.Cloud.Filestore.V1beta1.NfsExportOptions.AccessMode,
    enum: true

  field :squash_mode, 3,
    type: Google.Cloud.Filestore.V1beta1.NfsExportOptions.SquashMode,
    enum: true

  field :anon_uid, 4, type: :int64
  field :anon_gid, 5, type: :int64
end

defmodule Google.Cloud.Filestore.V1beta1.Instance.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.Instance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          state: Google.Cloud.Filestore.V1beta1.Instance.State.t(),
          status_message: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          tier: Google.Cloud.Filestore.V1beta1.Instance.Tier.t(),
          labels: %{String.t() => String.t()},
          file_shares: [Google.Cloud.Filestore.V1beta1.FileShareConfig.t()],
          networks: [Google.Cloud.Filestore.V1beta1.NetworkConfig.t()],
          etag: String.t(),
          satisfies_pzs: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [
    :name,
    :description,
    :state,
    :status_message,
    :create_time,
    :tier,
    :labels,
    :file_shares,
    :networks,
    :etag,
    :satisfies_pzs
  ]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :state, 5, type: Google.Cloud.Filestore.V1beta1.Instance.State, enum: true
  field :status_message, 6, type: :string
  field :create_time, 7, type: Google.Protobuf.Timestamp
  field :tier, 8, type: Google.Cloud.Filestore.V1beta1.Instance.Tier, enum: true

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Filestore.V1beta1.Instance.LabelsEntry,
    map: true

  field :file_shares, 10, repeated: true, type: Google.Cloud.Filestore.V1beta1.FileShareConfig
  field :networks, 11, repeated: true, type: Google.Cloud.Filestore.V1beta1.NetworkConfig
  field :etag, 12, type: :string
  field :satisfies_pzs, 13, type: Google.Protobuf.BoolValue
end

defmodule Google.Cloud.Filestore.V1beta1.CreateInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          instance_id: String.t(),
          instance: Google.Cloud.Filestore.V1beta1.Instance.t() | nil
        }

  defstruct [:parent, :instance_id, :instance]

  field :parent, 1, type: :string
  field :instance_id, 2, type: :string
  field :instance, 3, type: Google.Cloud.Filestore.V1beta1.Instance
end

defmodule Google.Cloud.Filestore.V1beta1.GetInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.UpdateInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          instance: Google.Cloud.Filestore.V1beta1.Instance.t() | nil
        }

  defstruct [:update_mask, :instance]

  field :update_mask, 1, type: Google.Protobuf.FieldMask
  field :instance, 2, type: Google.Cloud.Filestore.V1beta1.Instance
end

defmodule Google.Cloud.Filestore.V1beta1.RestoreInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          name: String.t(),
          file_share: String.t()
        }

  defstruct [:source, :name, :file_share]

  oneof :source, 0
  field :name, 1, type: :string
  field :file_share, 2, type: :string
  field :source_snapshot, 3, type: :string, oneof: 0
  field :source_backup, 4, type: :string, oneof: 0
end

defmodule Google.Cloud.Filestore.V1beta1.DeleteInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.ListInstancesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          order_by: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :order_by, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :order_by, 4, type: :string
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.ListInstancesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instances: [Google.Cloud.Filestore.V1beta1.Instance.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:instances, :next_page_token, :unreachable]

  field :instances, 1, repeated: true, type: Google.Cloud.Filestore.V1beta1.Instance
  field :next_page_token, 2, type: :string
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.Backup.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.Backup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          state: Google.Cloud.Filestore.V1beta1.Backup.State.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          capacity_gb: integer,
          storage_bytes: integer,
          source_instance: String.t(),
          source_file_share: String.t(),
          source_instance_tier: Google.Cloud.Filestore.V1beta1.Instance.Tier.t(),
          download_bytes: integer,
          satisfies_pzs: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [
    :name,
    :description,
    :state,
    :create_time,
    :labels,
    :capacity_gb,
    :storage_bytes,
    :source_instance,
    :source_file_share,
    :source_instance_tier,
    :download_bytes,
    :satisfies_pzs
  ]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :state, 3, type: Google.Cloud.Filestore.V1beta1.Backup.State, enum: true
  field :create_time, 4, type: Google.Protobuf.Timestamp

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Filestore.V1beta1.Backup.LabelsEntry,
    map: true

  field :capacity_gb, 6, type: :int64
  field :storage_bytes, 7, type: :int64
  field :source_instance, 8, type: :string
  field :source_file_share, 9, type: :string
  field :source_instance_tier, 10, type: Google.Cloud.Filestore.V1beta1.Instance.Tier, enum: true
  field :download_bytes, 11, type: :int64
  field :satisfies_pzs, 12, type: Google.Protobuf.BoolValue
end

defmodule Google.Cloud.Filestore.V1beta1.CreateBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          backup: Google.Cloud.Filestore.V1beta1.Backup.t() | nil,
          backup_id: String.t()
        }

  defstruct [:parent, :backup, :backup_id]

  field :parent, 1, type: :string
  field :backup, 2, type: Google.Cloud.Filestore.V1beta1.Backup
  field :backup_id, 3, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.DeleteBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.UpdateBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backup: Google.Cloud.Filestore.V1beta1.Backup.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:backup, :update_mask]

  field :backup, 1, type: Google.Cloud.Filestore.V1beta1.Backup
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Filestore.V1beta1.GetBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.ListBackupsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          order_by: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :order_by, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :order_by, 4, type: :string
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.ListBackupsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backups: [Google.Cloud.Filestore.V1beta1.Backup.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:backups, :next_page_token, :unreachable]

  field :backups, 1, repeated: true, type: Google.Cloud.Filestore.V1beta1.Backup
  field :next_page_token, 2, type: :string
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Filestore.V1beta1.CloudFilestoreManager.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.filestore.v1beta1.CloudFilestoreManager"

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

  rpc :DeleteInstance,
      Google.Cloud.Filestore.V1beta1.DeleteInstanceRequest,
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
end

defmodule Google.Cloud.Filestore.V1beta1.CloudFilestoreManager.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Filestore.V1beta1.CloudFilestoreManager.Service
end
