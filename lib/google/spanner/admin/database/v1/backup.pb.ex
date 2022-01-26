defmodule Google.Spanner.Admin.Database.V1.Backup.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :READY

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
end
defmodule Google.Spanner.Admin.Database.V1.CreateBackupEncryptionConfig.EncryptionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ENCRYPTION_TYPE_UNSPECIFIED
          | :USE_DATABASE_ENCRYPTION
          | :GOOGLE_DEFAULT_ENCRYPTION
          | :CUSTOMER_MANAGED_ENCRYPTION

  field :ENCRYPTION_TYPE_UNSPECIFIED, 0
  field :USE_DATABASE_ENCRYPTION, 1
  field :GOOGLE_DEFAULT_ENCRYPTION, 2
  field :CUSTOMER_MANAGED_ENCRYPTION, 3
end
defmodule Google.Spanner.Admin.Database.V1.Backup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t(),
          version_time: Google.Protobuf.Timestamp.t() | nil,
          expire_time: Google.Protobuf.Timestamp.t() | nil,
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          size_bytes: integer,
          state: Google.Spanner.Admin.Database.V1.Backup.State.t(),
          referencing_databases: [String.t()],
          encryption_info: Google.Spanner.Admin.Database.V1.EncryptionInfo.t() | nil,
          database_dialect: Google.Spanner.Admin.Database.V1.DatabaseDialect.t()
        }

  defstruct database: "",
            version_time: nil,
            expire_time: nil,
            name: "",
            create_time: nil,
            size_bytes: 0,
            state: :STATE_UNSPECIFIED,
            referencing_databases: [],
            encryption_info: nil,
            database_dialect: :DATABASE_DIALECT_UNSPECIFIED

  field :database, 2, type: :string, deprecated: false
  field :version_time, 9, type: Google.Protobuf.Timestamp, json_name: "versionTime"
  field :expire_time, 3, type: Google.Protobuf.Timestamp, json_name: "expireTime"
  field :name, 1, type: :string

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :size_bytes, 5, type: :int64, json_name: "sizeBytes", deprecated: false

  field :state, 6,
    type: Google.Spanner.Admin.Database.V1.Backup.State,
    enum: true,
    deprecated: false

  field :referencing_databases, 7,
    repeated: true,
    type: :string,
    json_name: "referencingDatabases",
    deprecated: false

  field :encryption_info, 8,
    type: Google.Spanner.Admin.Database.V1.EncryptionInfo,
    json_name: "encryptionInfo",
    deprecated: false

  field :database_dialect, 10,
    type: Google.Spanner.Admin.Database.V1.DatabaseDialect,
    json_name: "databaseDialect",
    enum: true,
    deprecated: false
end
defmodule Google.Spanner.Admin.Database.V1.CreateBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          backup_id: String.t(),
          backup: Google.Spanner.Admin.Database.V1.Backup.t() | nil,
          encryption_config:
            Google.Spanner.Admin.Database.V1.CreateBackupEncryptionConfig.t() | nil
        }

  defstruct parent: "",
            backup_id: "",
            backup: nil,
            encryption_config: nil

  field :parent, 1, type: :string, deprecated: false
  field :backup_id, 2, type: :string, json_name: "backupId", deprecated: false
  field :backup, 3, type: Google.Spanner.Admin.Database.V1.Backup, deprecated: false

  field :encryption_config, 4,
    type: Google.Spanner.Admin.Database.V1.CreateBackupEncryptionConfig,
    json_name: "encryptionConfig",
    deprecated: false
end
defmodule Google.Spanner.Admin.Database.V1.CreateBackupMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          database: String.t(),
          progress: Google.Spanner.Admin.Database.V1.OperationProgress.t() | nil,
          cancel_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            database: "",
            progress: nil,
            cancel_time: nil

  field :name, 1, type: :string, deprecated: false
  field :database, 2, type: :string, deprecated: false
  field :progress, 3, type: Google.Spanner.Admin.Database.V1.OperationProgress
  field :cancel_time, 4, type: Google.Protobuf.Timestamp, json_name: "cancelTime"
end
defmodule Google.Spanner.Admin.Database.V1.UpdateBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backup: Google.Spanner.Admin.Database.V1.Backup.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct backup: nil,
            update_mask: nil

  field :backup, 1, type: Google.Spanner.Admin.Database.V1.Backup, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Spanner.Admin.Database.V1.GetBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Spanner.Admin.Database.V1.DeleteBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Spanner.Admin.Database.V1.ListBackupsRequest do
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
defmodule Google.Spanner.Admin.Database.V1.ListBackupsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backups: [Google.Spanner.Admin.Database.V1.Backup.t()],
          next_page_token: String.t()
        }

  defstruct backups: [],
            next_page_token: ""

  field :backups, 1, repeated: true, type: Google.Spanner.Admin.Database.V1.Backup
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Spanner.Admin.Database.V1.ListBackupOperationsRequest do
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
defmodule Google.Spanner.Admin.Database.V1.ListBackupOperationsResponse do
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
defmodule Google.Spanner.Admin.Database.V1.BackupInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backup: String.t(),
          version_time: Google.Protobuf.Timestamp.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          source_database: String.t()
        }

  defstruct backup: "",
            version_time: nil,
            create_time: nil,
            source_database: ""

  field :backup, 1, type: :string, deprecated: false
  field :version_time, 4, type: Google.Protobuf.Timestamp, json_name: "versionTime"
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :source_database, 3, type: :string, json_name: "sourceDatabase", deprecated: false
end
defmodule Google.Spanner.Admin.Database.V1.CreateBackupEncryptionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          encryption_type:
            Google.Spanner.Admin.Database.V1.CreateBackupEncryptionConfig.EncryptionType.t(),
          kms_key_name: String.t()
        }

  defstruct encryption_type: :ENCRYPTION_TYPE_UNSPECIFIED,
            kms_key_name: ""

  field :encryption_type, 1,
    type: Google.Spanner.Admin.Database.V1.CreateBackupEncryptionConfig.EncryptionType,
    json_name: "encryptionType",
    enum: true,
    deprecated: false

  field :kms_key_name, 2, type: :string, json_name: "kmsKeyName", deprecated: false
end
