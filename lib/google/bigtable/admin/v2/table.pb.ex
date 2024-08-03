defmodule Google.Bigtable.Admin.V2.RestoreSourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RESTORE_SOURCE_TYPE_UNSPECIFIED, 0
  field :BACKUP, 1
end

defmodule Google.Bigtable.Admin.V2.Table.TimestampGranularity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TIMESTAMP_GRANULARITY_UNSPECIFIED, 0
  field :MILLIS, 1
end

defmodule Google.Bigtable.Admin.V2.Table.View do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :VIEW_UNSPECIFIED, 0
  field :NAME_ONLY, 1
  field :SCHEMA_VIEW, 2
  field :REPLICATION_VIEW, 3
  field :ENCRYPTION_VIEW, 5
  field :FULL, 4
end

defmodule Google.Bigtable.Admin.V2.Table.ClusterState.ReplicationState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_NOT_KNOWN, 0
  field :INITIALIZING, 1
  field :PLANNED_MAINTENANCE, 2
  field :UNPLANNED_MAINTENANCE, 3
  field :READY, 4
  field :READY_OPTIMIZING, 5
end

defmodule Google.Bigtable.Admin.V2.AuthorizedView.ResponseView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RESPONSE_VIEW_UNSPECIFIED, 0
  field :NAME_ONLY, 1
  field :BASIC, 2
  field :FULL, 3
end

defmodule Google.Bigtable.Admin.V2.EncryptionInfo.EncryptionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ENCRYPTION_TYPE_UNSPECIFIED, 0
  field :GOOGLE_DEFAULT_ENCRYPTION, 1
  field :CUSTOMER_MANAGED_ENCRYPTION, 2
end

defmodule Google.Bigtable.Admin.V2.Snapshot.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_NOT_KNOWN, 0
  field :READY, 1
  field :CREATING, 2
end

defmodule Google.Bigtable.Admin.V2.Backup.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
end

defmodule Google.Bigtable.Admin.V2.Backup.BackupType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :BACKUP_TYPE_UNSPECIFIED, 0
  field :STANDARD, 1
  field :HOT, 2
end

defmodule Google.Bigtable.Admin.V2.RestoreInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Bigtable.Admin.V2.ChangeStreamConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :retention_period, 1, type: Google.Protobuf.Duration, json_name: "retentionPeriod"
end

defmodule Google.Bigtable.Admin.V2.Table.ClusterState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Bigtable.Admin.V2.Table.AutomatedBackupPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :retention_period, 1,
    type: Google.Protobuf.Duration,
    json_name: "retentionPeriod",
    deprecated: false

  field :frequency, 2, type: Google.Protobuf.Duration, deprecated: false
end

defmodule Google.Bigtable.Admin.V2.Table.ClusterStatesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Bigtable.Admin.V2.Table.ClusterState
end

defmodule Google.Bigtable.Admin.V2.Table.ColumnFamiliesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Bigtable.Admin.V2.ColumnFamily
end

defmodule Google.Bigtable.Admin.V2.Table do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :automated_backup_config, 0

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

  field :change_stream_config, 8,
    type: Google.Bigtable.Admin.V2.ChangeStreamConfig,
    json_name: "changeStreamConfig"

  field :deletion_protection, 9, type: :bool, json_name: "deletionProtection"

  field :automated_backup_policy, 13,
    type: Google.Bigtable.Admin.V2.Table.AutomatedBackupPolicy,
    json_name: "automatedBackupPolicy",
    oneof: 0
end

defmodule Google.Bigtable.Admin.V2.AuthorizedView.FamilySubsets do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :qualifiers, 1, repeated: true, type: :bytes
  field :qualifier_prefixes, 2, repeated: true, type: :bytes, json_name: "qualifierPrefixes"
end

defmodule Google.Bigtable.Admin.V2.AuthorizedView.SubsetView.FamilySubsetsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Bigtable.Admin.V2.AuthorizedView.FamilySubsets
end

defmodule Google.Bigtable.Admin.V2.AuthorizedView.SubsetView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :row_prefixes, 1, repeated: true, type: :bytes, json_name: "rowPrefixes"

  field :family_subsets, 2,
    repeated: true,
    type: Google.Bigtable.Admin.V2.AuthorizedView.SubsetView.FamilySubsetsEntry,
    json_name: "familySubsets",
    map: true
end

defmodule Google.Bigtable.Admin.V2.AuthorizedView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :authorized_view, 0

  field :name, 1, type: :string, deprecated: false

  field :subset_view, 2,
    type: Google.Bigtable.Admin.V2.AuthorizedView.SubsetView,
    json_name: "subsetView",
    oneof: 0

  field :etag, 3, type: :string
  field :deletion_protection, 4, type: :bool, json_name: "deletionProtection"
end

defmodule Google.Bigtable.Admin.V2.ColumnFamily do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :gc_rule, 1, type: Google.Bigtable.Admin.V2.GcRule, json_name: "gcRule"
  field :value_type, 3, type: Google.Bigtable.Admin.V2.Type, json_name: "valueType"
end

defmodule Google.Bigtable.Admin.V2.GcRule.Intersection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rules, 1, repeated: true, type: Google.Bigtable.Admin.V2.GcRule
end

defmodule Google.Bigtable.Admin.V2.GcRule.Union do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rules, 1, repeated: true, type: Google.Bigtable.Admin.V2.GcRule
end

defmodule Google.Bigtable.Admin.V2.GcRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :rule, 0

  field :max_num_versions, 1, type: :int32, json_name: "maxNumVersions", oneof: 0
  field :max_age, 2, type: Google.Protobuf.Duration, json_name: "maxAge", oneof: 0
  field :intersection, 3, type: Google.Bigtable.Admin.V2.GcRule.Intersection, oneof: 0
  field :union, 4, type: Google.Bigtable.Admin.V2.GcRule.Union, oneof: 0
end

defmodule Google.Bigtable.Admin.V2.EncryptionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :source_table, 2,
    type: Google.Bigtable.Admin.V2.Table,
    json_name: "sourceTable",
    deprecated: false

  field :data_size_bytes, 3, type: :int64, json_name: "dataSizeBytes", deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :delete_time, 5, type: Google.Protobuf.Timestamp, json_name: "deleteTime"
  field :state, 6, type: Google.Bigtable.Admin.V2.Snapshot.State, enum: true, deprecated: false
  field :description, 7, type: :string
end

defmodule Google.Bigtable.Admin.V2.Backup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :source_table, 2, type: :string, json_name: "sourceTable", deprecated: false
  field :source_backup, 10, type: :string, json_name: "sourceBackup", deprecated: false

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

  field :backup_type, 11,
    type: Google.Bigtable.Admin.V2.Backup.BackupType,
    json_name: "backupType",
    enum: true

  field :hot_to_standard_time, 12, type: Google.Protobuf.Timestamp, json_name: "hotToStandardTime"
end

defmodule Google.Bigtable.Admin.V2.BackupInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backup, 1, type: :string, deprecated: false
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :source_table, 4, type: :string, json_name: "sourceTable", deprecated: false
  field :source_backup, 10, type: :string, json_name: "sourceBackup", deprecated: false
end