defmodule Google.Cloud.Gkebackup.V1.VolumeBackup.VolumeBackupFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VOLUME_BACKUP_FORMAT_UNSPECIFIED, 0
  field :GCE_PERSISTENT_DISK, 1
end

defmodule Google.Cloud.Gkebackup.V1.VolumeBackup.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :SNAPSHOTTING, 2
  field :UPLOADING, 3
  field :SUCCEEDED, 4
  field :FAILED, 5
  field :DELETING, 6
  field :CLEANED_UP, 7
end

defmodule Google.Cloud.Gkebackup.V1.VolumeRestore.VolumeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VOLUME_TYPE_UNSPECIFIED, 0
  field :GCE_PERSISTENT_DISK, 1
end

defmodule Google.Cloud.Gkebackup.V1.VolumeRestore.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :RESTORING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :DELETING, 5
end

defmodule Google.Cloud.Gkebackup.V1.VolumeBackup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :source_pvc, 5,
    type: Google.Cloud.Gkebackup.V1.NamespacedName,
    json_name: "sourcePvc",
    deprecated: false

  field :volume_backup_handle, 6,
    type: :string,
    json_name: "volumeBackupHandle",
    deprecated: false

  field :format, 7,
    type: Google.Cloud.Gkebackup.V1.VolumeBackup.VolumeBackupFormat,
    enum: true,
    deprecated: false

  field :storage_bytes, 8, type: :int64, json_name: "storageBytes", deprecated: false
  field :disk_size_bytes, 9, type: :int64, json_name: "diskSizeBytes", deprecated: false

  field :complete_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "completeTime",
    deprecated: false

  field :state, 11,
    type: Google.Cloud.Gkebackup.V1.VolumeBackup.State,
    enum: true,
    deprecated: false

  field :state_message, 12, type: :string, json_name: "stateMessage", deprecated: false
  field :etag, 13, type: :string, deprecated: false
  field :satisfies_pzs, 14, type: :bool, json_name: "satisfiesPzs", deprecated: false
  field :satisfies_pzi, 15, type: :bool, json_name: "satisfiesPzi", deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.VolumeRestore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :volume_backup, 5, type: :string, json_name: "volumeBackup", deprecated: false

  field :target_pvc, 6,
    type: Google.Cloud.Gkebackup.V1.NamespacedName,
    json_name: "targetPvc",
    deprecated: false

  field :volume_handle, 7, type: :string, json_name: "volumeHandle", deprecated: false

  field :volume_type, 8,
    type: Google.Cloud.Gkebackup.V1.VolumeRestore.VolumeType,
    json_name: "volumeType",
    enum: true,
    deprecated: false

  field :complete_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "completeTime",
    deprecated: false

  field :state, 10,
    type: Google.Cloud.Gkebackup.V1.VolumeRestore.State,
    enum: true,
    deprecated: false

  field :state_message, 11, type: :string, json_name: "stateMessage", deprecated: false
  field :etag, 12, type: :string, deprecated: false
end
