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
          source_info: {:backup_info, Google.Spanner.Admin.Database.V1.BackupInfo.t() | nil},
          source_type: Google.Spanner.Admin.Database.V1.RestoreSourceType.t()
        }

  defstruct source_info: nil,
            source_type: :TYPE_UNSPECIFIED

  oneof :source_info, 0

  field :source_type, 1,
    type: Google.Spanner.Admin.Database.V1.RestoreSourceType,
    json_name: "sourceType",
    enum: true

  field :backup_info, 2,
    type: Google.Spanner.Admin.Database.V1.BackupInfo,
    json_name: "backupInfo",
    oneof: 0
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
          earliest_version_time: Google.Protobuf.Timestamp.t() | nil,
          default_leader: String.t(),
          database_dialect: Google.Spanner.Admin.Database.V1.DatabaseDialect.t()
        }

  defstruct name: "",
            state: :STATE_UNSPECIFIED,
            create_time: nil,
            restore_info: nil,
            encryption_config: nil,
            encryption_info: [],
            version_retention_period: "",
            earliest_version_time: nil,
            default_leader: "",
            database_dialect: :DATABASE_DIALECT_UNSPECIFIED

  field :name, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Spanner.Admin.Database.V1.Database.State,
    enum: true,
    deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :restore_info, 4,
    type: Google.Spanner.Admin.Database.V1.RestoreInfo,
    json_name: "restoreInfo",
    deprecated: false

  field :encryption_config, 5,
    type: Google.Spanner.Admin.Database.V1.EncryptionConfig,
    json_name: "encryptionConfig",
    deprecated: false

  field :encryption_info, 8,
    repeated: true,
    type: Google.Spanner.Admin.Database.V1.EncryptionInfo,
    json_name: "encryptionInfo",
    deprecated: false

  field :version_retention_period, 6,
    type: :string,
    json_name: "versionRetentionPeriod",
    deprecated: false

  field :earliest_version_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "earliestVersionTime",
    deprecated: false

  field :default_leader, 9, type: :string, json_name: "defaultLeader", deprecated: false

  field :database_dialect, 10,
    type: Google.Spanner.Admin.Database.V1.DatabaseDialect,
    json_name: "databaseDialect",
    enum: true,
    deprecated: false
end
defmodule Google.Spanner.Admin.Database.V1.ListDatabasesRequest do
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
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end
defmodule Google.Spanner.Admin.Database.V1.ListDatabasesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          databases: [Google.Spanner.Admin.Database.V1.Database.t()],
          next_page_token: String.t()
        }

  defstruct databases: [],
            next_page_token: ""

  field :databases, 1, repeated: true, type: Google.Spanner.Admin.Database.V1.Database
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Spanner.Admin.Database.V1.CreateDatabaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          create_statement: String.t(),
          extra_statements: [String.t()],
          encryption_config: Google.Spanner.Admin.Database.V1.EncryptionConfig.t() | nil,
          database_dialect: Google.Spanner.Admin.Database.V1.DatabaseDialect.t()
        }

  defstruct parent: "",
            create_statement: "",
            extra_statements: [],
            encryption_config: nil,
            database_dialect: :DATABASE_DIALECT_UNSPECIFIED

  field :parent, 1, type: :string, deprecated: false
  field :create_statement, 2, type: :string, json_name: "createStatement", deprecated: false

  field :extra_statements, 3,
    repeated: true,
    type: :string,
    json_name: "extraStatements",
    deprecated: false

  field :encryption_config, 4,
    type: Google.Spanner.Admin.Database.V1.EncryptionConfig,
    json_name: "encryptionConfig",
    deprecated: false

  field :database_dialect, 5,
    type: Google.Spanner.Admin.Database.V1.DatabaseDialect,
    json_name: "databaseDialect",
    enum: true,
    deprecated: false
end
defmodule Google.Spanner.Admin.Database.V1.CreateDatabaseMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t()
        }

  defstruct database: ""

  field :database, 1, type: :string, deprecated: false
end
defmodule Google.Spanner.Admin.Database.V1.GetDatabaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Spanner.Admin.Database.V1.UpdateDatabaseDdlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t(),
          statements: [String.t()],
          operation_id: String.t()
        }

  defstruct database: "",
            statements: [],
            operation_id: ""

  field :database, 1, type: :string, deprecated: false
  field :statements, 2, repeated: true, type: :string, deprecated: false
  field :operation_id, 3, type: :string, json_name: "operationId"
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

  defstruct database: "",
            statements: [],
            commit_timestamps: [],
            throttled: false,
            progress: []

  field :database, 1, type: :string, deprecated: false
  field :statements, 2, repeated: true, type: :string

  field :commit_timestamps, 3,
    repeated: true,
    type: Google.Protobuf.Timestamp,
    json_name: "commitTimestamps"

  field :throttled, 4, type: :bool, deprecated: false
  field :progress, 5, repeated: true, type: Google.Spanner.Admin.Database.V1.OperationProgress
end
defmodule Google.Spanner.Admin.Database.V1.DropDatabaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t()
        }

  defstruct database: ""

  field :database, 1, type: :string, deprecated: false
end
defmodule Google.Spanner.Admin.Database.V1.GetDatabaseDdlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t()
        }

  defstruct database: ""

  field :database, 1, type: :string, deprecated: false
end
defmodule Google.Spanner.Admin.Database.V1.GetDatabaseDdlResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          statements: [String.t()]
        }

  defstruct statements: []

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

  defstruct parent: "",
            filter: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end
defmodule Google.Spanner.Admin.Database.V1.ListDatabaseOperationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operations: [Google.Longrunning.Operation.t()],
          next_page_token: String.t()
        }

  defstruct operations: [],
            next_page_token: ""

  field :operations, 1, repeated: true, type: Google.Longrunning.Operation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Spanner.Admin.Database.V1.RestoreDatabaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:backup, String.t()},
          parent: String.t(),
          database_id: String.t(),
          encryption_config:
            Google.Spanner.Admin.Database.V1.RestoreDatabaseEncryptionConfig.t() | nil
        }

  defstruct source: nil,
            parent: "",
            database_id: "",
            encryption_config: nil

  oneof :source, 0

  field :parent, 1, type: :string, deprecated: false
  field :database_id, 2, type: :string, json_name: "databaseId", deprecated: false
  field :backup, 3, type: :string, oneof: 0, deprecated: false

  field :encryption_config, 4,
    type: Google.Spanner.Admin.Database.V1.RestoreDatabaseEncryptionConfig,
    json_name: "encryptionConfig",
    deprecated: false
end
defmodule Google.Spanner.Admin.Database.V1.RestoreDatabaseEncryptionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          encryption_type:
            Google.Spanner.Admin.Database.V1.RestoreDatabaseEncryptionConfig.EncryptionType.t(),
          kms_key_name: String.t()
        }

  defstruct encryption_type: :ENCRYPTION_TYPE_UNSPECIFIED,
            kms_key_name: ""

  field :encryption_type, 1,
    type: Google.Spanner.Admin.Database.V1.RestoreDatabaseEncryptionConfig.EncryptionType,
    json_name: "encryptionType",
    enum: true,
    deprecated: false

  field :kms_key_name, 2, type: :string, json_name: "kmsKeyName", deprecated: false
end
defmodule Google.Spanner.Admin.Database.V1.RestoreDatabaseMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_info: {:backup_info, Google.Spanner.Admin.Database.V1.BackupInfo.t() | nil},
          name: String.t(),
          source_type: Google.Spanner.Admin.Database.V1.RestoreSourceType.t(),
          progress: Google.Spanner.Admin.Database.V1.OperationProgress.t() | nil,
          cancel_time: Google.Protobuf.Timestamp.t() | nil,
          optimize_database_operation_name: String.t()
        }

  defstruct source_info: nil,
            name: "",
            source_type: :TYPE_UNSPECIFIED,
            progress: nil,
            cancel_time: nil,
            optimize_database_operation_name: ""

  oneof :source_info, 0

  field :name, 1, type: :string, deprecated: false

  field :source_type, 2,
    type: Google.Spanner.Admin.Database.V1.RestoreSourceType,
    json_name: "sourceType",
    enum: true

  field :backup_info, 3,
    type: Google.Spanner.Admin.Database.V1.BackupInfo,
    json_name: "backupInfo",
    oneof: 0

  field :progress, 4, type: Google.Spanner.Admin.Database.V1.OperationProgress
  field :cancel_time, 5, type: Google.Protobuf.Timestamp, json_name: "cancelTime"

  field :optimize_database_operation_name, 6,
    type: :string,
    json_name: "optimizeDatabaseOperationName"
end
defmodule Google.Spanner.Admin.Database.V1.OptimizeRestoredDatabaseMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          progress: Google.Spanner.Admin.Database.V1.OperationProgress.t() | nil
        }

  defstruct name: "",
            progress: nil

  field :name, 1, type: :string, deprecated: false
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
