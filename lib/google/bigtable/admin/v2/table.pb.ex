defmodule Google.Bigtable.Admin.V2.RestoreSourceType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :RESTORE_SOURCE_TYPE_UNSPECIFIED, 0
  field :BACKUP, 1
end
defmodule Google.Bigtable.Admin.V2.Table.TimestampGranularity do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TIMESTAMP_GRANULARITY_UNSPECIFIED, 0
  field :MILLIS, 1
end
defmodule Google.Bigtable.Admin.V2.Table.View do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :VIEW_UNSPECIFIED, 0
  field :NAME_ONLY, 1
  field :SCHEMA_VIEW, 2
  field :REPLICATION_VIEW, 3
  field :ENCRYPTION_VIEW, 5
  field :FULL, 4
end
defmodule Google.Bigtable.Admin.V2.Table.ClusterState.ReplicationState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_NOT_KNOWN, 0
  field :INITIALIZING, 1
  field :PLANNED_MAINTENANCE, 2
  field :UNPLANNED_MAINTENANCE, 3
  field :READY, 4
  field :READY_OPTIMIZING, 5
end
defmodule Google.Bigtable.Admin.V2.EncryptionInfo.EncryptionType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ENCRYPTION_TYPE_UNSPECIFIED, 0
  field :GOOGLE_DEFAULT_ENCRYPTION, 1
  field :CUSTOMER_MANAGED_ENCRYPTION, 2
end
defmodule Google.Bigtable.Admin.V2.Snapshot.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_NOT_KNOWN, 0
  field :READY, 1
  field :CREATING, 2
end
defmodule Google.Bigtable.Admin.V2.Backup.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
end
defmodule Google.Bigtable.Admin.V2.RestoreInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :source_info, 0

  field :source_type, 1,
    type: Google.Bigtable.Admin.V2.RestoreSourceType,
    json_name: "sourceType",
    enum: true

  field :backup_info, 2,
    type: Google.Bigtable.Admin.V2.BackupInfo,
    json_name: "backupInfo",
    oneof: 0
end
defmodule Google.Bigtable.Admin.V2.Table.ClusterState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :replication_state, 1,
    type: Google.Bigtable.Admin.V2.Table.ClusterState.ReplicationState,
    json_name: "replicationState",
    enum: true,
    deprecated: false

  field :encryption_info, 2,
    repeated: true,
    type: Google.Bigtable.Admin.V2.EncryptionInfo,
    json_name: "encryptionInfo",
    deprecated: false
end
defmodule Google.Bigtable.Admin.V2.Table.ClusterStatesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Bigtable.Admin.V2.Table.ClusterState
end
defmodule Google.Bigtable.Admin.V2.Table.ColumnFamiliesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Bigtable.Admin.V2.ColumnFamily
end
defmodule Google.Bigtable.Admin.V2.Table do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string

  field :cluster_states, 2,
    repeated: true,
    type: Google.Bigtable.Admin.V2.Table.ClusterStatesEntry,
    json_name: "clusterStates",
    map: true,
    deprecated: false

  field :column_families, 3,
    repeated: true,
    type: Google.Bigtable.Admin.V2.Table.ColumnFamiliesEntry,
    json_name: "columnFamilies",
    map: true

  field :granularity, 4,
    type: Google.Bigtable.Admin.V2.Table.TimestampGranularity,
    enum: true,
    deprecated: false

  field :restore_info, 6,
    type: Google.Bigtable.Admin.V2.RestoreInfo,
    json_name: "restoreInfo",
    deprecated: false
end
defmodule Google.Bigtable.Admin.V2.ColumnFamily do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :gc_rule, 1, type: Google.Bigtable.Admin.V2.GcRule, json_name: "gcRule"
end
defmodule Google.Bigtable.Admin.V2.GcRule.Intersection do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :rules, 1, repeated: true, type: Google.Bigtable.Admin.V2.GcRule
end
defmodule Google.Bigtable.Admin.V2.GcRule.Union do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :rules, 1, repeated: true, type: Google.Bigtable.Admin.V2.GcRule
end
defmodule Google.Bigtable.Admin.V2.GcRule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :rule, 0

  field :max_num_versions, 1, type: :int32, json_name: "maxNumVersions", oneof: 0
  field :max_age, 2, type: Google.Protobuf.Duration, json_name: "maxAge", oneof: 0
  field :intersection, 3, type: Google.Bigtable.Admin.V2.GcRule.Intersection, oneof: 0
  field :union, 4, type: Google.Bigtable.Admin.V2.GcRule.Union, oneof: 0
end
defmodule Google.Bigtable.Admin.V2.EncryptionInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :encryption_type, 3,
    type: Google.Bigtable.Admin.V2.EncryptionInfo.EncryptionType,
    json_name: "encryptionType",
    enum: true,
    deprecated: false

  field :encryption_status, 4,
    type: Google.Rpc.Status,
    json_name: "encryptionStatus",
    deprecated: false

  field :kms_key_version, 2, type: :string, json_name: "kmsKeyVersion", deprecated: false
end
defmodule Google.Bigtable.Admin.V2.Snapshot do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :source_table, 2, type: Google.Bigtable.Admin.V2.Table, json_name: "sourceTable"
  field :data_size_bytes, 3, type: :int64, json_name: "dataSizeBytes"
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :delete_time, 5, type: Google.Protobuf.Timestamp, json_name: "deleteTime"
  field :state, 6, type: Google.Bigtable.Admin.V2.Snapshot.State, enum: true
  field :description, 7, type: :string
end
defmodule Google.Bigtable.Admin.V2.Backup do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :source_table, 2, type: :string, json_name: "sourceTable", deprecated: false

  field :expire_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :size_bytes, 6, type: :int64, json_name: "sizeBytes", deprecated: false
  field :state, 7, type: Google.Bigtable.Admin.V2.Backup.State, enum: true, deprecated: false

  field :encryption_info, 9,
    type: Google.Bigtable.Admin.V2.EncryptionInfo,
    json_name: "encryptionInfo",
    deprecated: false
end
defmodule Google.Bigtable.Admin.V2.BackupInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :backup, 1, type: :string, deprecated: false
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :source_table, 4, type: :string, json_name: "sourceTable", deprecated: false
end
