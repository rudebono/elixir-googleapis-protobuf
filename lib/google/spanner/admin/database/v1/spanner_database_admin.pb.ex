defmodule Google.Spanner.Admin.Database.V1.RestoreSourceType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :BACKUP

  field :TYPE_UNSPECIFIED, 0

  field :BACKUP, 1
end

defmodule Google.Spanner.Admin.Database.V1.Database.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :READY | :READY_OPTIMIZING

  field :STATE_UNSPECIFIED, 0

  field :CREATING, 1

  field :READY, 2

  field :READY_OPTIMIZING, 3
end

defmodule Google.Spanner.Admin.Database.V1.RestoreDatabaseEncryptionConfig.EncryptionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ENCRYPTION_TYPE_UNSPECIFIED
          | :USE_CONFIG_DEFAULT_OR_BACKUP_ENCRYPTION
          | :GOOGLE_DEFAULT_ENCRYPTION
          | :CUSTOMER_MANAGED_ENCRYPTION

  field :ENCRYPTION_TYPE_UNSPECIFIED, 0

  field :USE_CONFIG_DEFAULT_OR_BACKUP_ENCRYPTION, 1

  field :GOOGLE_DEFAULT_ENCRYPTION, 2

  field :CUSTOMER_MANAGED_ENCRYPTION, 3
end

defmodule Google.Spanner.Admin.Database.V1.RestoreInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_info: {atom, any},
          source_type: Google.Spanner.Admin.Database.V1.RestoreSourceType.t()
        }

  defstruct [:source_info, :source_type]

  oneof :source_info, 0
  field :source_type, 1, type: Google.Spanner.Admin.Database.V1.RestoreSourceType, enum: true
  field :backup_info, 2, type: Google.Spanner.Admin.Database.V1.BackupInfo, oneof: 0
end

defmodule Google.Spanner.Admin.Database.V1.Database do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          state: Google.Spanner.Admin.Database.V1.Database.State.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          restore_info: Google.Spanner.Admin.Database.V1.RestoreInfo.t() | nil,
          encryption_config: Google.Spanner.Admin.Database.V1.EncryptionConfig.t() | nil,
          encryption_info: [Google.Spanner.Admin.Database.V1.EncryptionInfo.t()],
          version_retention_period: String.t(),
          earliest_version_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :name,
    :state,
    :create_time,
    :restore_info,
    :encryption_config,
    :encryption_info,
    :version_retention_period,
    :earliest_version_time
  ]

  field :name, 1, type: :string
  field :state, 2, type: Google.Spanner.Admin.Database.V1.Database.State, enum: true
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :restore_info, 4, type: Google.Spanner.Admin.Database.V1.RestoreInfo
  field :encryption_config, 5, type: Google.Spanner.Admin.Database.V1.EncryptionConfig
  field :encryption_info, 8, repeated: true, type: Google.Spanner.Admin.Database.V1.EncryptionInfo
  field :version_retention_period, 6, type: :string
  field :earliest_version_time, 7, type: Google.Protobuf.Timestamp
end

defmodule Google.Spanner.Admin.Database.V1.ListDatabasesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Spanner.Admin.Database.V1.ListDatabasesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          databases: [Google.Spanner.Admin.Database.V1.Database.t()],
          next_page_token: String.t()
        }

  defstruct [:databases, :next_page_token]

  field :databases, 1, repeated: true, type: Google.Spanner.Admin.Database.V1.Database
  field :next_page_token, 2, type: :string
end

defmodule Google.Spanner.Admin.Database.V1.CreateDatabaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          create_statement: String.t(),
          extra_statements: [String.t()],
          encryption_config: Google.Spanner.Admin.Database.V1.EncryptionConfig.t() | nil
        }

  defstruct [:parent, :create_statement, :extra_statements, :encryption_config]

  field :parent, 1, type: :string
  field :create_statement, 2, type: :string
  field :extra_statements, 3, repeated: true, type: :string
  field :encryption_config, 4, type: Google.Spanner.Admin.Database.V1.EncryptionConfig
end

defmodule Google.Spanner.Admin.Database.V1.CreateDatabaseMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t()
        }

  defstruct [:database]

  field :database, 1, type: :string
end

defmodule Google.Spanner.Admin.Database.V1.GetDatabaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Spanner.Admin.Database.V1.UpdateDatabaseDdlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t(),
          statements: [String.t()],
          operation_id: String.t()
        }

  defstruct [:database, :statements, :operation_id]

  field :database, 1, type: :string
  field :statements, 2, repeated: true, type: :string
  field :operation_id, 3, type: :string
end

defmodule Google.Spanner.Admin.Database.V1.UpdateDatabaseDdlMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t(),
          statements: [String.t()],
          commit_timestamps: [Google.Protobuf.Timestamp.t()],
          throttled: boolean,
          progress: [Google.Spanner.Admin.Database.V1.OperationProgress.t()]
        }

  defstruct [:database, :statements, :commit_timestamps, :throttled, :progress]

  field :database, 1, type: :string
  field :statements, 2, repeated: true, type: :string
  field :commit_timestamps, 3, repeated: true, type: Google.Protobuf.Timestamp
  field :throttled, 4, type: :bool
  field :progress, 5, repeated: true, type: Google.Spanner.Admin.Database.V1.OperationProgress
end

defmodule Google.Spanner.Admin.Database.V1.DropDatabaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t()
        }

  defstruct [:database]

  field :database, 1, type: :string
end

defmodule Google.Spanner.Admin.Database.V1.GetDatabaseDdlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t()
        }

  defstruct [:database]

  field :database, 1, type: :string
end

defmodule Google.Spanner.Admin.Database.V1.GetDatabaseDdlResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          statements: [String.t()]
        }

  defstruct [:statements]

  field :statements, 1, repeated: true, type: :string
end

defmodule Google.Spanner.Admin.Database.V1.ListDatabaseOperationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Spanner.Admin.Database.V1.ListDatabaseOperationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operations: [Google.Longrunning.Operation.t()],
          next_page_token: String.t()
        }

  defstruct [:operations, :next_page_token]

  field :operations, 1, repeated: true, type: Google.Longrunning.Operation
  field :next_page_token, 2, type: :string
end

defmodule Google.Spanner.Admin.Database.V1.RestoreDatabaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          parent: String.t(),
          database_id: String.t(),
          encryption_config:
            Google.Spanner.Admin.Database.V1.RestoreDatabaseEncryptionConfig.t() | nil
        }

  defstruct [:source, :parent, :database_id, :encryption_config]

  oneof :source, 0
  field :parent, 1, type: :string
  field :database_id, 2, type: :string
  field :backup, 3, type: :string, oneof: 0

  field :encryption_config, 4,
    type: Google.Spanner.Admin.Database.V1.RestoreDatabaseEncryptionConfig
end

defmodule Google.Spanner.Admin.Database.V1.RestoreDatabaseEncryptionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          encryption_type:
            Google.Spanner.Admin.Database.V1.RestoreDatabaseEncryptionConfig.EncryptionType.t(),
          kms_key_name: String.t()
        }

  defstruct [:encryption_type, :kms_key_name]

  field :encryption_type, 1,
    type: Google.Spanner.Admin.Database.V1.RestoreDatabaseEncryptionConfig.EncryptionType,
    enum: true

  field :kms_key_name, 2, type: :string
end

defmodule Google.Spanner.Admin.Database.V1.RestoreDatabaseMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_info: {atom, any},
          name: String.t(),
          source_type: Google.Spanner.Admin.Database.V1.RestoreSourceType.t(),
          progress: Google.Spanner.Admin.Database.V1.OperationProgress.t() | nil,
          cancel_time: Google.Protobuf.Timestamp.t() | nil,
          optimize_database_operation_name: String.t()
        }

  defstruct [
    :source_info,
    :name,
    :source_type,
    :progress,
    :cancel_time,
    :optimize_database_operation_name
  ]

  oneof :source_info, 0
  field :name, 1, type: :string
  field :source_type, 2, type: Google.Spanner.Admin.Database.V1.RestoreSourceType, enum: true
  field :backup_info, 3, type: Google.Spanner.Admin.Database.V1.BackupInfo, oneof: 0
  field :progress, 4, type: Google.Spanner.Admin.Database.V1.OperationProgress
  field :cancel_time, 5, type: Google.Protobuf.Timestamp
  field :optimize_database_operation_name, 6, type: :string
end

defmodule Google.Spanner.Admin.Database.V1.OptimizeRestoredDatabaseMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          progress: Google.Spanner.Admin.Database.V1.OperationProgress.t() | nil
        }

  defstruct [:name, :progress]

  field :name, 1, type: :string
  field :progress, 2, type: Google.Spanner.Admin.Database.V1.OperationProgress
end

defmodule Google.Spanner.Admin.Database.V1.DatabaseAdmin.Service do
  @moduledoc false
  use GRPC.Service, name: "google.spanner.admin.database.v1.DatabaseAdmin"

  rpc :ListDatabases,
      Google.Spanner.Admin.Database.V1.ListDatabasesRequest,
      Google.Spanner.Admin.Database.V1.ListDatabasesResponse

  rpc :CreateDatabase,
      Google.Spanner.Admin.Database.V1.CreateDatabaseRequest,
      Google.Longrunning.Operation

  rpc :GetDatabase,
      Google.Spanner.Admin.Database.V1.GetDatabaseRequest,
      Google.Spanner.Admin.Database.V1.Database

  rpc :UpdateDatabaseDdl,
      Google.Spanner.Admin.Database.V1.UpdateDatabaseDdlRequest,
      Google.Longrunning.Operation

  rpc :DropDatabase, Google.Spanner.Admin.Database.V1.DropDatabaseRequest, Google.Protobuf.Empty

  rpc :GetDatabaseDdl,
      Google.Spanner.Admin.Database.V1.GetDatabaseDdlRequest,
      Google.Spanner.Admin.Database.V1.GetDatabaseDdlResponse

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :CreateBackup,
      Google.Spanner.Admin.Database.V1.CreateBackupRequest,
      Google.Longrunning.Operation

  rpc :GetBackup,
      Google.Spanner.Admin.Database.V1.GetBackupRequest,
      Google.Spanner.Admin.Database.V1.Backup

  rpc :UpdateBackup,
      Google.Spanner.Admin.Database.V1.UpdateBackupRequest,
      Google.Spanner.Admin.Database.V1.Backup

  rpc :DeleteBackup, Google.Spanner.Admin.Database.V1.DeleteBackupRequest, Google.Protobuf.Empty

  rpc :ListBackups,
      Google.Spanner.Admin.Database.V1.ListBackupsRequest,
      Google.Spanner.Admin.Database.V1.ListBackupsResponse

  rpc :RestoreDatabase,
      Google.Spanner.Admin.Database.V1.RestoreDatabaseRequest,
      Google.Longrunning.Operation

  rpc :ListDatabaseOperations,
      Google.Spanner.Admin.Database.V1.ListDatabaseOperationsRequest,
      Google.Spanner.Admin.Database.V1.ListDatabaseOperationsResponse

  rpc :ListBackupOperations,
      Google.Spanner.Admin.Database.V1.ListBackupOperationsRequest,
      Google.Spanner.Admin.Database.V1.ListBackupOperationsResponse
end

defmodule Google.Spanner.Admin.Database.V1.DatabaseAdmin.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Spanner.Admin.Database.V1.DatabaseAdmin.Service
end
