defmodule Google.Bigtable.Admin.V2.RestoreTableRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:backup, String.t()},
          parent: String.t(),
          table_id: String.t()
        }

  defstruct source: nil,
            parent: "",
            table_id: ""

  oneof :source, 0

  field :parent, 1, type: :string, deprecated: false
  field :table_id, 2, type: :string, json_name: "tableId", deprecated: false
  field :backup, 3, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Bigtable.Admin.V2.RestoreTableMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_info: {:backup_info, Google.Bigtable.Admin.V2.BackupInfo.t() | nil},
          name: String.t(),
          source_type: Google.Bigtable.Admin.V2.RestoreSourceType.t(),
          optimize_table_operation_name: String.t(),
          progress: Google.Bigtable.Admin.V2.OperationProgress.t() | nil
        }

  defstruct source_info: nil,
            name: "",
            source_type: :RESTORE_SOURCE_TYPE_UNSPECIFIED,
            optimize_table_operation_name: "",
            progress: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          progress: Google.Bigtable.Admin.V2.OperationProgress.t() | nil
        }

  defstruct name: "",
            progress: nil

  field :name, 1, type: :string
  field :progress, 2, type: Google.Bigtable.Admin.V2.OperationProgress
end
defmodule Google.Bigtable.Admin.V2.CreateTableRequest.Split do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: binary
        }

  defstruct key: ""

  field :key, 1, type: :bytes
end
defmodule Google.Bigtable.Admin.V2.CreateTableRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          table_id: String.t(),
          table: Google.Bigtable.Admin.V2.Table.t() | nil,
          initial_splits: [Google.Bigtable.Admin.V2.CreateTableRequest.Split.t()]
        }

  defstruct parent: "",
            table_id: "",
            table: nil,
            initial_splits: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          table_id: String.t(),
          source_snapshot: String.t()
        }

  defstruct parent: "",
            table_id: "",
            source_snapshot: ""

  field :parent, 1, type: :string, deprecated: false
  field :table_id, 2, type: :string, json_name: "tableId", deprecated: false
  field :source_snapshot, 3, type: :string, json_name: "sourceSnapshot", deprecated: false
end
defmodule Google.Bigtable.Admin.V2.DropRowRangeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target: {:row_key_prefix, binary} | {:delete_all_data_from_table, boolean},
          name: String.t()
        }

  defstruct target: nil,
            name: ""

  oneof :target, 0

  field :name, 1, type: :string, deprecated: false
  field :row_key_prefix, 2, type: :bytes, json_name: "rowKeyPrefix", oneof: 0
  field :delete_all_data_from_table, 3, type: :bool, json_name: "deleteAllDataFromTable", oneof: 0
end
defmodule Google.Bigtable.Admin.V2.ListTablesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          view: Google.Bigtable.Admin.V2.Table.View.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            view: :VIEW_UNSPECIFIED,
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Bigtable.Admin.V2.Table.View, enum: true
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Bigtable.Admin.V2.ListTablesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tables: [Google.Bigtable.Admin.V2.Table.t()],
          next_page_token: String.t()
        }

  defstruct tables: [],
            next_page_token: ""

  field :tables, 1, repeated: true, type: Google.Bigtable.Admin.V2.Table
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Bigtable.Admin.V2.GetTableRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Bigtable.Admin.V2.Table.View.t()
        }

  defstruct name: "",
            view: :VIEW_UNSPECIFIED

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Bigtable.Admin.V2.Table.View, enum: true
end
defmodule Google.Bigtable.Admin.V2.DeleteTableRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Bigtable.Admin.V2.ModifyColumnFamiliesRequest.Modification do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mod:
            {:create, Google.Bigtable.Admin.V2.ColumnFamily.t() | nil}
            | {:update, Google.Bigtable.Admin.V2.ColumnFamily.t() | nil}
            | {:drop, boolean},
          id: String.t()
        }

  defstruct mod: nil,
            id: ""

  oneof :mod, 0

  field :id, 1, type: :string
  field :create, 2, type: Google.Bigtable.Admin.V2.ColumnFamily, oneof: 0
  field :update, 3, type: Google.Bigtable.Admin.V2.ColumnFamily, oneof: 0
  field :drop, 4, type: :bool, oneof: 0
end
defmodule Google.Bigtable.Admin.V2.ModifyColumnFamiliesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          modifications: [Google.Bigtable.Admin.V2.ModifyColumnFamiliesRequest.Modification.t()]
        }

  defstruct name: "",
            modifications: []

  field :name, 1, type: :string, deprecated: false

  field :modifications, 2,
    repeated: true,
    type: Google.Bigtable.Admin.V2.ModifyColumnFamiliesRequest.Modification,
    deprecated: false
end
defmodule Google.Bigtable.Admin.V2.GenerateConsistencyTokenRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Bigtable.Admin.V2.GenerateConsistencyTokenResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          consistency_token: String.t()
        }

  defstruct consistency_token: ""

  field :consistency_token, 1, type: :string, json_name: "consistencyToken"
end
defmodule Google.Bigtable.Admin.V2.CheckConsistencyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          consistency_token: String.t()
        }

  defstruct name: "",
            consistency_token: ""

  field :name, 1, type: :string, deprecated: false
  field :consistency_token, 2, type: :string, json_name: "consistencyToken", deprecated: false
end
defmodule Google.Bigtable.Admin.V2.CheckConsistencyResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          consistent: boolean
        }

  defstruct consistent: false

  field :consistent, 1, type: :bool
end
defmodule Google.Bigtable.Admin.V2.SnapshotTableRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          cluster: String.t(),
          snapshot_id: String.t(),
          ttl: Google.Protobuf.Duration.t() | nil,
          description: String.t()
        }

  defstruct name: "",
            cluster: "",
            snapshot_id: "",
            ttl: nil,
            description: ""

  field :name, 1, type: :string, deprecated: false
  field :cluster, 2, type: :string, deprecated: false
  field :snapshot_id, 3, type: :string, json_name: "snapshotId", deprecated: false
  field :ttl, 4, type: Google.Protobuf.Duration
  field :description, 5, type: :string
end
defmodule Google.Bigtable.Admin.V2.GetSnapshotRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Bigtable.Admin.V2.ListSnapshotsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Bigtable.Admin.V2.ListSnapshotsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshots: [Google.Bigtable.Admin.V2.Snapshot.t()],
          next_page_token: String.t()
        }

  defstruct snapshots: [],
            next_page_token: ""

  field :snapshots, 1, repeated: true, type: Google.Bigtable.Admin.V2.Snapshot
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Bigtable.Admin.V2.DeleteSnapshotRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Bigtable.Admin.V2.SnapshotTableMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          original_request: Google.Bigtable.Admin.V2.SnapshotTableRequest.t() | nil,
          request_time: Google.Protobuf.Timestamp.t() | nil,
          finish_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct original_request: nil,
            request_time: nil,
            finish_time: nil

  field :original_request, 1,
    type: Google.Bigtable.Admin.V2.SnapshotTableRequest,
    json_name: "originalRequest"

  field :request_time, 2, type: Google.Protobuf.Timestamp, json_name: "requestTime"
  field :finish_time, 3, type: Google.Protobuf.Timestamp, json_name: "finishTime"
end
defmodule Google.Bigtable.Admin.V2.CreateTableFromSnapshotMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          original_request: Google.Bigtable.Admin.V2.CreateTableFromSnapshotRequest.t() | nil,
          request_time: Google.Protobuf.Timestamp.t() | nil,
          finish_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct original_request: nil,
            request_time: nil,
            finish_time: nil

  field :original_request, 1,
    type: Google.Bigtable.Admin.V2.CreateTableFromSnapshotRequest,
    json_name: "originalRequest"

  field :request_time, 2, type: Google.Protobuf.Timestamp, json_name: "requestTime"
  field :finish_time, 3, type: Google.Protobuf.Timestamp, json_name: "finishTime"
end
defmodule Google.Bigtable.Admin.V2.CreateBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          backup_id: String.t(),
          backup: Google.Bigtable.Admin.V2.Backup.t() | nil
        }

  defstruct parent: "",
            backup_id: "",
            backup: nil

  field :parent, 1, type: :string, deprecated: false
  field :backup_id, 2, type: :string, json_name: "backupId", deprecated: false
  field :backup, 3, type: Google.Bigtable.Admin.V2.Backup, deprecated: false
end
defmodule Google.Bigtable.Admin.V2.CreateBackupMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          source_table: String.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            source_table: "",
            start_time: nil,
            end_time: nil

  field :name, 1, type: :string
  field :source_table, 2, type: :string, json_name: "sourceTable"
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
end
defmodule Google.Bigtable.Admin.V2.UpdateBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backup: Google.Bigtable.Admin.V2.Backup.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct backup: nil,
            update_mask: nil

  field :backup, 1, type: Google.Bigtable.Admin.V2.Backup, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Bigtable.Admin.V2.GetBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Bigtable.Admin.V2.DeleteBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Bigtable.Admin.V2.ListBackupsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          order_by: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            filter: "",
            order_by: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :order_by, 3, type: :string, json_name: "orderBy"
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
end
defmodule Google.Bigtable.Admin.V2.ListBackupsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backups: [Google.Bigtable.Admin.V2.Backup.t()],
          next_page_token: String.t()
        }

  defstruct backups: [],
            next_page_token: ""

  field :backups, 1, repeated: true, type: Google.Bigtable.Admin.V2.Backup
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Bigtable.Admin.V2.BigtableTableAdmin.Service do
  @moduledoc false
  use GRPC.Service, name: "google.bigtable.admin.v2.BigtableTableAdmin"

  rpc :CreateTable, Google.Bigtable.Admin.V2.CreateTableRequest, Google.Bigtable.Admin.V2.Table

  rpc :CreateTableFromSnapshot,
      Google.Bigtable.Admin.V2.CreateTableFromSnapshotRequest,
      Google.Longrunning.Operation

  rpc :ListTables,
      Google.Bigtable.Admin.V2.ListTablesRequest,
      Google.Bigtable.Admin.V2.ListTablesResponse

  rpc :GetTable, Google.Bigtable.Admin.V2.GetTableRequest, Google.Bigtable.Admin.V2.Table

  rpc :DeleteTable, Google.Bigtable.Admin.V2.DeleteTableRequest, Google.Protobuf.Empty

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
