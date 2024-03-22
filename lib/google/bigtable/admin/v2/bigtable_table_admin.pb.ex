defmodule Google.Bigtable.Admin.V2.RestoreTableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :parent, 1, type: :string, deprecated: false
  field :table_id, 2, type: :string, json_name: "tableId", deprecated: false
  field :backup, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Bigtable.Admin.V2.RestoreTableMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source_info, 0

  field :name, 1, type: :string

  field :source_type, 2,
    type: Google.Bigtable.Admin.V2.RestoreSourceType,
    json_name: "sourceType",
    enum: true

  field :backup_info, 3,
    type: Google.Bigtable.Admin.V2.BackupInfo,
    json_name: "backupInfo",
    oneof: 0

  field :optimize_table_operation_name, 4, type: :string, json_name: "optimizeTableOperationName"
  field :progress, 5, type: Google.Bigtable.Admin.V2.OperationProgress
end

defmodule Google.Bigtable.Admin.V2.OptimizeRestoredTableMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :progress, 2, type: Google.Bigtable.Admin.V2.OperationProgress
end

defmodule Google.Bigtable.Admin.V2.CreateTableRequest.Split do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :bytes
end

defmodule Google.Bigtable.Admin.V2.CreateTableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :table_id, 2, type: :string, json_name: "tableId", deprecated: false
  field :table, 3, type: Google.Bigtable.Admin.V2.Table, deprecated: false

  field :initial_splits, 4,
    repeated: true,
    type: Google.Bigtable.Admin.V2.CreateTableRequest.Split,
    json_name: "initialSplits"
end

defmodule Google.Bigtable.Admin.V2.CreateTableFromSnapshotRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :table_id, 2, type: :string, json_name: "tableId", deprecated: false
  field :source_snapshot, 3, type: :string, json_name: "sourceSnapshot", deprecated: false
end

defmodule Google.Bigtable.Admin.V2.DropRowRangeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :target, 0

  field :name, 1, type: :string, deprecated: false
  field :row_key_prefix, 2, type: :bytes, json_name: "rowKeyPrefix", oneof: 0
  field :delete_all_data_from_table, 3, type: :bool, json_name: "deleteAllDataFromTable", oneof: 0
end

defmodule Google.Bigtable.Admin.V2.ListTablesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Bigtable.Admin.V2.Table.View, enum: true
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Bigtable.Admin.V2.ListTablesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tables, 1, repeated: true, type: Google.Bigtable.Admin.V2.Table
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Bigtable.Admin.V2.GetTableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Bigtable.Admin.V2.Table.View, enum: true
end

defmodule Google.Bigtable.Admin.V2.UpdateTableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :table, 1, type: Google.Bigtable.Admin.V2.Table, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Bigtable.Admin.V2.UpdateTableMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Bigtable.Admin.V2.DeleteTableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Bigtable.Admin.V2.UndeleteTableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Bigtable.Admin.V2.UndeleteTableMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Bigtable.Admin.V2.ModifyColumnFamiliesRequest.Modification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :mod, 0

  field :id, 1, type: :string
  field :create, 2, type: Google.Bigtable.Admin.V2.ColumnFamily, oneof: 0
  field :update, 3, type: Google.Bigtable.Admin.V2.ColumnFamily, oneof: 0
  field :drop, 4, type: :bool, oneof: 0

  field :update_mask, 6,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Bigtable.Admin.V2.ModifyColumnFamiliesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :modifications, 2,
    repeated: true,
    type: Google.Bigtable.Admin.V2.ModifyColumnFamiliesRequest.Modification,
    deprecated: false

  field :ignore_warnings, 3, type: :bool, json_name: "ignoreWarnings", deprecated: false
end

defmodule Google.Bigtable.Admin.V2.GenerateConsistencyTokenRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Bigtable.Admin.V2.GenerateConsistencyTokenResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :consistency_token, 1, type: :string, json_name: "consistencyToken"
end

defmodule Google.Bigtable.Admin.V2.CheckConsistencyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :mode, 0

  field :name, 1, type: :string, deprecated: false
  field :consistency_token, 2, type: :string, json_name: "consistencyToken", deprecated: false

  field :standard_read_remote_writes, 3,
    type: Google.Bigtable.Admin.V2.StandardReadRemoteWrites,
    json_name: "standardReadRemoteWrites",
    oneof: 0

  field :data_boost_read_local_writes, 4,
    type: Google.Bigtable.Admin.V2.DataBoostReadLocalWrites,
    json_name: "dataBoostReadLocalWrites",
    oneof: 0
end

defmodule Google.Bigtable.Admin.V2.StandardReadRemoteWrites do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Bigtable.Admin.V2.DataBoostReadLocalWrites do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Bigtable.Admin.V2.CheckConsistencyResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :consistent, 1, type: :bool
end

defmodule Google.Bigtable.Admin.V2.SnapshotTableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :cluster, 2, type: :string, deprecated: false
  field :snapshot_id, 3, type: :string, json_name: "snapshotId", deprecated: false
  field :ttl, 4, type: Google.Protobuf.Duration
  field :description, 5, type: :string
end

defmodule Google.Bigtable.Admin.V2.GetSnapshotRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Bigtable.Admin.V2.ListSnapshotsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Bigtable.Admin.V2.ListSnapshotsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :snapshots, 1, repeated: true, type: Google.Bigtable.Admin.V2.Snapshot
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Bigtable.Admin.V2.DeleteSnapshotRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Bigtable.Admin.V2.SnapshotTableMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :original_request, 1,
    type: Google.Bigtable.Admin.V2.SnapshotTableRequest,
    json_name: "originalRequest"

  field :request_time, 2, type: Google.Protobuf.Timestamp, json_name: "requestTime"
  field :finish_time, 3, type: Google.Protobuf.Timestamp, json_name: "finishTime"
end

defmodule Google.Bigtable.Admin.V2.CreateTableFromSnapshotMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :original_request, 1,
    type: Google.Bigtable.Admin.V2.CreateTableFromSnapshotRequest,
    json_name: "originalRequest"

  field :request_time, 2, type: Google.Protobuf.Timestamp, json_name: "requestTime"
  field :finish_time, 3, type: Google.Protobuf.Timestamp, json_name: "finishTime"
end

defmodule Google.Bigtable.Admin.V2.CreateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :backup_id, 2, type: :string, json_name: "backupId", deprecated: false
  field :backup, 3, type: Google.Bigtable.Admin.V2.Backup, deprecated: false
end

defmodule Google.Bigtable.Admin.V2.CreateBackupMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :source_table, 2, type: :string, json_name: "sourceTable"
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Bigtable.Admin.V2.UpdateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backup, 1, type: Google.Bigtable.Admin.V2.Backup, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Bigtable.Admin.V2.GetBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Bigtable.Admin.V2.DeleteBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Bigtable.Admin.V2.ListBackupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :order_by, 3, type: :string, json_name: "orderBy"
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
end

defmodule Google.Bigtable.Admin.V2.ListBackupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backups, 1, repeated: true, type: Google.Bigtable.Admin.V2.Backup
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Bigtable.Admin.V2.CopyBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :backup_id, 2, type: :string, json_name: "backupId", deprecated: false
  field :source_backup, 3, type: :string, json_name: "sourceBackup", deprecated: false

  field :expire_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false
end

defmodule Google.Bigtable.Admin.V2.CopyBackupMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :source_backup_info, 2,
    type: Google.Bigtable.Admin.V2.BackupInfo,
    json_name: "sourceBackupInfo"

  field :progress, 3, type: Google.Bigtable.Admin.V2.OperationProgress
end

defmodule Google.Bigtable.Admin.V2.CreateAuthorizedViewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :authorized_view_id, 2, type: :string, json_name: "authorizedViewId", deprecated: false

  field :authorized_view, 3,
    type: Google.Bigtable.Admin.V2.AuthorizedView,
    json_name: "authorizedView",
    deprecated: false
end

defmodule Google.Bigtable.Admin.V2.CreateAuthorizedViewMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :original_request, 1,
    type: Google.Bigtable.Admin.V2.CreateAuthorizedViewRequest,
    json_name: "originalRequest"

  field :request_time, 2, type: Google.Protobuf.Timestamp, json_name: "requestTime"
  field :finish_time, 3, type: Google.Protobuf.Timestamp, json_name: "finishTime"
end

defmodule Google.Bigtable.Admin.V2.ListAuthorizedViewsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false

  field :view, 4,
    type: Google.Bigtable.Admin.V2.AuthorizedView.ResponseView,
    enum: true,
    deprecated: false
end

defmodule Google.Bigtable.Admin.V2.ListAuthorizedViewsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :authorized_views, 1,
    repeated: true,
    type: Google.Bigtable.Admin.V2.AuthorizedView,
    json_name: "authorizedViews"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Bigtable.Admin.V2.GetAuthorizedViewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :view, 2,
    type: Google.Bigtable.Admin.V2.AuthorizedView.ResponseView,
    enum: true,
    deprecated: false
end

defmodule Google.Bigtable.Admin.V2.UpdateAuthorizedViewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :authorized_view, 1,
    type: Google.Bigtable.Admin.V2.AuthorizedView,
    json_name: "authorizedView",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :ignore_warnings, 3, type: :bool, json_name: "ignoreWarnings", deprecated: false
end

defmodule Google.Bigtable.Admin.V2.UpdateAuthorizedViewMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :original_request, 1,
    type: Google.Bigtable.Admin.V2.UpdateAuthorizedViewRequest,
    json_name: "originalRequest"

  field :request_time, 2, type: Google.Protobuf.Timestamp, json_name: "requestTime"
  field :finish_time, 3, type: Google.Protobuf.Timestamp, json_name: "finishTime"
end

defmodule Google.Bigtable.Admin.V2.DeleteAuthorizedViewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Bigtable.Admin.V2.BigtableTableAdmin.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.bigtable.admin.v2.BigtableTableAdmin",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateTable, Google.Bigtable.Admin.V2.CreateTableRequest, Google.Bigtable.Admin.V2.Table

  rpc :CreateTableFromSnapshot,
      Google.Bigtable.Admin.V2.CreateTableFromSnapshotRequest,
      Google.Longrunning.Operation

  rpc :ListTables,
      Google.Bigtable.Admin.V2.ListTablesRequest,
      Google.Bigtable.Admin.V2.ListTablesResponse

  rpc :GetTable, Google.Bigtable.Admin.V2.GetTableRequest, Google.Bigtable.Admin.V2.Table

  rpc :UpdateTable, Google.Bigtable.Admin.V2.UpdateTableRequest, Google.Longrunning.Operation

  rpc :DeleteTable, Google.Bigtable.Admin.V2.DeleteTableRequest, Google.Protobuf.Empty

  rpc :UndeleteTable, Google.Bigtable.Admin.V2.UndeleteTableRequest, Google.Longrunning.Operation

  rpc :CreateAuthorizedView,
      Google.Bigtable.Admin.V2.CreateAuthorizedViewRequest,
      Google.Longrunning.Operation

  rpc :ListAuthorizedViews,
      Google.Bigtable.Admin.V2.ListAuthorizedViewsRequest,
      Google.Bigtable.Admin.V2.ListAuthorizedViewsResponse

  rpc :GetAuthorizedView,
      Google.Bigtable.Admin.V2.GetAuthorizedViewRequest,
      Google.Bigtable.Admin.V2.AuthorizedView

  rpc :UpdateAuthorizedView,
      Google.Bigtable.Admin.V2.UpdateAuthorizedViewRequest,
      Google.Longrunning.Operation

  rpc :DeleteAuthorizedView,
      Google.Bigtable.Admin.V2.DeleteAuthorizedViewRequest,
      Google.Protobuf.Empty

  rpc :ModifyColumnFamilies,
      Google.Bigtable.Admin.V2.ModifyColumnFamiliesRequest,
      Google.Bigtable.Admin.V2.Table

  rpc :DropRowRange, Google.Bigtable.Admin.V2.DropRowRangeRequest, Google.Protobuf.Empty

  rpc :GenerateConsistencyToken,
      Google.Bigtable.Admin.V2.GenerateConsistencyTokenRequest,
      Google.Bigtable.Admin.V2.GenerateConsistencyTokenResponse

  rpc :CheckConsistency,
      Google.Bigtable.Admin.V2.CheckConsistencyRequest,
      Google.Bigtable.Admin.V2.CheckConsistencyResponse

  rpc :SnapshotTable, Google.Bigtable.Admin.V2.SnapshotTableRequest, Google.Longrunning.Operation

  rpc :GetSnapshot, Google.Bigtable.Admin.V2.GetSnapshotRequest, Google.Bigtable.Admin.V2.Snapshot

  rpc :ListSnapshots,
      Google.Bigtable.Admin.V2.ListSnapshotsRequest,
      Google.Bigtable.Admin.V2.ListSnapshotsResponse

  rpc :DeleteSnapshot, Google.Bigtable.Admin.V2.DeleteSnapshotRequest, Google.Protobuf.Empty

  rpc :CreateBackup, Google.Bigtable.Admin.V2.CreateBackupRequest, Google.Longrunning.Operation

  rpc :GetBackup, Google.Bigtable.Admin.V2.GetBackupRequest, Google.Bigtable.Admin.V2.Backup

  rpc :UpdateBackup, Google.Bigtable.Admin.V2.UpdateBackupRequest, Google.Bigtable.Admin.V2.Backup

  rpc :DeleteBackup, Google.Bigtable.Admin.V2.DeleteBackupRequest, Google.Protobuf.Empty

  rpc :ListBackups,
      Google.Bigtable.Admin.V2.ListBackupsRequest,
      Google.Bigtable.Admin.V2.ListBackupsResponse

  rpc :RestoreTable, Google.Bigtable.Admin.V2.RestoreTableRequest, Google.Longrunning.Operation

  rpc :CopyBackup, Google.Bigtable.Admin.V2.CopyBackupRequest, Google.Longrunning.Operation

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Bigtable.Admin.V2.BigtableTableAdmin.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Bigtable.Admin.V2.BigtableTableAdmin.Service
end