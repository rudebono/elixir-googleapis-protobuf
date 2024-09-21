defmodule Google.Cloud.Netapp.V1.Backup.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :UPLOADING, 2
  field :READY, 3
  field :DELETING, 4
  field :ERROR, 5
  field :UPDATING, 6
end

defmodule Google.Cloud.Netapp.V1.Backup.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :MANUAL, 1
  field :SCHEDULED, 2
end

defmodule Google.Cloud.Netapp.V1.Backup.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Netapp.V1.Backup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :state, 2, type: Google.Cloud.Netapp.V1.Backup.State, enum: true, deprecated: false
  field :description, 3, type: :string
  field :volume_usage_bytes, 4, type: :int64, json_name: "volumeUsageBytes", deprecated: false

  field :backup_type, 5,
    type: Google.Cloud.Netapp.V1.Backup.Type,
    json_name: "backupType",
    enum: true,
    deprecated: false

  field :source_volume, 6, type: :string, json_name: "sourceVolume", deprecated: false

  field :source_snapshot, 7,
    proto3_optional: true,
    type: :string,
    json_name: "sourceSnapshot",
    deprecated: false

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :labels, 9, repeated: true, type: Google.Cloud.Netapp.V1.Backup.LabelsEntry, map: true
  field :chain_storage_bytes, 10, type: :int64, json_name: "chainStorageBytes", deprecated: false
end

defmodule Google.Cloud.Netapp.V1.ListBackupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Netapp.V1.ListBackupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :backups, 1, repeated: true, type: Google.Cloud.Netapp.V1.Backup
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Netapp.V1.GetBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.CreateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :backup_id, 2, type: :string, json_name: "backupId", deprecated: false
  field :backup, 3, type: Google.Cloud.Netapp.V1.Backup, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.DeleteBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.UpdateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :backup, 2, type: Google.Cloud.Netapp.V1.Backup, deprecated: false
end