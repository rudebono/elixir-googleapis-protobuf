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
          encryption_info: Google.Spanner.Admin.Database.V1.EncryptionInfo.t() | nil
        }

  defstruct [
    :database,
    :version_time,
    :expire_time,
    :name,
    :create_time,
    :size_bytes,
    :state,
    :referencing_databases,
    :encryption_info
  ]

  field :database, 2, type: :string
  field :version_time, 9, type: Google.Protobuf.Timestamp, json_name: "versionTime"
  field :expire_time, 3, type: Google.Protobuf.Timestamp, json_name: "expireTime"
  field :name, 1, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :size_bytes, 5, type: :int64, json_name: "sizeBytes"
  field :state, 6, type: Google.Spanner.Admin.Database.V1.Backup.State, enum: true

  field :referencing_databases, 7,
    repeated: true,
    type: :string,
    json_name: "referencingDatabases"

  field :encryption_info, 8,
    type: Google.Spanner.Admin.Database.V1.EncryptionInfo,
    json_name: "encryptionInfo"

  def transform_module(), do: nil
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

  defstruct [:parent, :backup_id, :backup, :encryption_config]

  field :parent, 1, type: :string
  field :backup_id, 2, type: :string, json_name: "backupId"
  field :backup, 3, type: Google.Spanner.Admin.Database.V1.Backup

  field :encryption_config, 4,
    type: Google.Spanner.Admin.Database.V1.CreateBackupEncryptionConfig,
    json_name: "encryptionConfig"

  def transform_module(), do: nil
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

  defstruct [:name, :database, :progress, :cancel_time]

  field :name, 1, type: :string
  field :database, 2, type: :string
  field :progress, 3, type: Google.Spanner.Admin.Database.V1.OperationProgress
  field :cancel_time, 4, type: Google.Protobuf.Timestamp, json_name: "cancelTime"

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Database.V1.UpdateBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backup: Google.Spanner.Admin.Database.V1.Backup.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:backup, :update_mask]

  field :backup, 1, type: Google.Spanner.Admin.Database.V1.Backup
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Database.V1.GetBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Database.V1.DeleteBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
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

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Database.V1.ListBackupsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backups: [Google.Spanner.Admin.Database.V1.Backup.t()],
          next_page_token: String.t()
        }

  defstruct [:backups, :next_page_token]

  field :backups, 1, repeated: true, type: Google.Spanner.Admin.Database.V1.Backup
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
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

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Database.V1.ListBackupOperationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operations: [Google.Longrunning.Operation.t()],
          next_page_token: String.t()
        }

  defstruct [:operations, :next_page_token]

  field :operations, 1, repeated: true, type: Google.Longrunning.Operation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
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

  defstruct [:backup, :version_time, :create_time, :source_database]

  field :backup, 1, type: :string
  field :version_time, 4, type: Google.Protobuf.Timestamp, json_name: "versionTime"
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :source_database, 3, type: :string, json_name: "sourceDatabase"

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Database.V1.CreateBackupEncryptionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          encryption_type:
            Google.Spanner.Admin.Database.V1.CreateBackupEncryptionConfig.EncryptionType.t(),
          kms_key_name: String.t()
        }

  defstruct [:encryption_type, :kms_key_name]

  field :encryption_type, 1,
    type: Google.Spanner.Admin.Database.V1.CreateBackupEncryptionConfig.EncryptionType,
    enum: true,
    json_name: "encryptionType"

  field :kms_key_name, 2, type: :string, json_name: "kmsKeyName"

  def transform_module(), do: nil
end
