defmodule Google.Bigtable.Admin.V2.RestoreTableRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          parent: String.t(),
          table_id: String.t()
        }

  defstruct [:source, :parent, :table_id]

  oneof :source, 0
  field :parent, 1, type: :string
  field :table_id, 2, type: :string
  field :backup, 3, type: :string, oneof: 0
end

defmodule Google.Bigtable.Admin.V2.RestoreTableMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_info: {atom, any},
          name: String.t(),
          source_type: Google.Bigtable.Admin.V2.RestoreSourceType.t(),
          optimize_table_operation_name: String.t(),
          progress: Google.Bigtable.Admin.V2.OperationProgress.t() | nil
        }

  defstruct [:source_info, :name, :source_type, :optimize_table_operation_name, :progress]

  oneof :source_info, 0
  field :name, 1, type: :string
  field :source_type, 2, type: Google.Bigtable.Admin.V2.RestoreSourceType, enum: true
  field :backup_info, 3, type: Google.Bigtable.Admin.V2.BackupInfo, oneof: 0
  field :optimize_table_operation_name, 4, type: :string
  field :progress, 5, type: Google.Bigtable.Admin.V2.OperationProgress
end

defmodule Google.Bigtable.Admin.V2.OptimizeRestoredTableMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          progress: Google.Bigtable.Admin.V2.OperationProgress.t() | nil
        }

  defstruct [:name, :progress]

  field :name, 1, type: :string
  field :progress, 2, type: Google.Bigtable.Admin.V2.OperationProgress
end

defmodule Google.Bigtable.Admin.V2.CreateTableRequest.Split do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: binary
        }

  defstruct [:key]

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

  defstruct [:parent, :table_id, :table, :initial_splits]

  field :parent, 1, type: :string
  field :table_id, 2, type: :string
  field :table, 3, type: Google.Bigtable.Admin.V2.Table

  field :initial_splits, 4,
    repeated: true,
    type: Google.Bigtable.Admin.V2.CreateTableRequest.Split
end

defmodule Google.Bigtable.Admin.V2.CreateTableFromSnapshotRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          table_id: String.t(),
          source_snapshot: String.t()
        }

  defstruct [:parent, :table_id, :source_snapshot]

  field :parent, 1, type: :string
  field :table_id, 2, type: :string
  field :source_snapshot, 3, type: :string
end

defmodule Google.Bigtable.Admin.V2.DropRowRangeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target: {atom, any},
          name: String.t()
        }

  defstruct [:target, :name]

  oneof :target, 0
  field :name, 1, type: :string
  field :row_key_prefix, 2, type: :bytes, oneof: 0
  field :delete_all_data_from_table, 3, type: :bool, oneof: 0
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

  defstruct [:parent, :view, :page_size, :page_token]

  field :parent, 1, type: :string
  field :view, 2, type: Google.Bigtable.Admin.V2.Table.View, enum: true
  field :page_size, 4, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Bigtable.Admin.V2.ListTablesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tables: [Google.Bigtable.Admin.V2.Table.t()],
          next_page_token: String.t()
        }

  defstruct [:tables, :next_page_token]

  field :tables, 1, repeated: true, type: Google.Bigtable.Admin.V2.Table
  field :next_page_token, 2, type: :string
end

defmodule Google.Bigtable.Admin.V2.GetTableRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Bigtable.Admin.V2.Table.View.t()
        }

  defstruct [:name, :view]

  field :name, 1, type: :string
  field :view, 2, type: Google.Bigtable.Admin.V2.Table.View, enum: true
end

defmodule Google.Bigtable.Admin.V2.DeleteTableRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Bigtable.Admin.V2.ModifyColumnFamiliesRequest.Modification do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mod: {atom, any},
          id: String.t()
        }

  defstruct [:mod, :id]

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

  defstruct [:name, :modifications]

  field :name, 1, type: :string

  field :modifications, 2,
    repeated: true,
    type: Google.Bigtable.Admin.V2.ModifyColumnFamiliesRequest.Modification
end

defmodule Google.Bigtable.Admin.V2.GenerateConsistencyTokenRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Bigtable.Admin.V2.GenerateConsistencyTokenResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          consistency_token: String.t()
        }

  defstruct [:consistency_token]

  field :consistency_token, 1, type: :string
end

defmodule Google.Bigtable.Admin.V2.CheckConsistencyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          consistency_token: String.t()
        }

  defstruct [:name, :consistency_token]

  field :name, 1, type: :string
  field :consistency_token, 2, type: :string
end

defmodule Google.Bigtable.Admin.V2.CheckConsistencyResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          consistent: boolean
        }

  defstruct [:consistent]

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

  defstruct [:name, :cluster, :snapshot_id, :ttl, :description]

  field :name, 1, type: :string
  field :cluster, 2, type: :string
  field :snapshot_id, 3, type: :string
  field :ttl, 4, type: Google.Protobuf.Duration
  field :description, 5, type: :string
end

defmodule Google.Bigtable.Admin.V2.GetSnapshotRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Bigtable.Admin.V2.ListSnapshotsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Bigtable.Admin.V2.ListSnapshotsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshots: [Google.Bigtable.Admin.V2.Snapshot.t()],
          next_page_token: String.t()
        }

  defstruct [:snapshots, :next_page_token]

  field :snapshots, 1, repeated: true, type: Google.Bigtable.Admin.V2.Snapshot
  field :next_page_token, 2, type: :string
end

defmodule Google.Bigtable.Admin.V2.DeleteSnapshotRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Bigtable.Admin.V2.SnapshotTableMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          original_request: Google.Bigtable.Admin.V2.SnapshotTableRequest.t() | nil,
          request_time: Google.Protobuf.Timestamp.t() | nil,
          finish_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:original_request, :request_time, :finish_time]

  field :original_request, 1, type: Google.Bigtable.Admin.V2.SnapshotTableRequest
  field :request_time, 2, type: Google.Protobuf.Timestamp
  field :finish_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Bigtable.Admin.V2.CreateTableFromSnapshotMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          original_request: Google.Bigtable.Admin.V2.CreateTableFromSnapshotRequest.t() | nil,
          request_time: Google.Protobuf.Timestamp.t() | nil,
          finish_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:original_request, :request_time, :finish_time]

  field :original_request, 1, type: Google.Bigtable.Admin.V2.CreateTableFromSnapshotRequest
  field :request_time, 2, type: Google.Protobuf.Timestamp
  field :finish_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Bigtable.Admin.V2.CreateBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          backup_id: String.t(),
          backup: Google.Bigtable.Admin.V2.Backup.t() | nil
        }

  defstruct [:parent, :backup_id, :backup]

  field :parent, 1, type: :string
  field :backup_id, 2, type: :string
  field :backup, 3, type: Google.Bigtable.Admin.V2.Backup
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

  defstruct [:name, :source_table, :start_time, :end_time]

  field :name, 1, type: :string
  field :source_table, 2, type: :string
  field :start_time, 3, type: Google.Protobuf.Timestamp
  field :end_time, 4, type: Google.Protobuf.Timestamp
end

defmodule Google.Bigtable.Admin.V2.UpdateBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backup: Google.Bigtable.Admin.V2.Backup.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:backup, :update_mask]

  field :backup, 1, type: Google.Bigtable.Admin.V2.Backup
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Bigtable.Admin.V2.GetBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Bigtable.Admin.V2.DeleteBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
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

  defstruct [:parent, :filter, :order_by, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :order_by, 3, type: :string
  field :page_size, 4, type: :int32
  field :page_token, 5, type: :string
end

defmodule Google.Bigtable.Admin.V2.ListBackupsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backups: [Google.Bigtable.Admin.V2.Backup.t()],
          next_page_token: String.t()
        }

  defstruct [:backups, :next_page_token]

  field :backups, 1, repeated: true, type: Google.Bigtable.Admin.V2.Backup
  field :next_page_token, 2, type: :string
end
