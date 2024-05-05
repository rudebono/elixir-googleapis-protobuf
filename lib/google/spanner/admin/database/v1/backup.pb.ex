defmodule Google.Spanner.Admin.Database.V1.Backup.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
end

defmodule Google.Spanner.Admin.Database.V1.CreateBackupEncryptionConfig.EncryptionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ENCRYPTION_TYPE_UNSPECIFIED, 0
  field :USE_DATABASE_ENCRYPTION, 1
  field :GOOGLE_DEFAULT_ENCRYPTION, 2
  field :CUSTOMER_MANAGED_ENCRYPTION, 3
end

defmodule Google.Spanner.Admin.Database.V1.CopyBackupEncryptionConfig.EncryptionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ENCRYPTION_TYPE_UNSPECIFIED, 0
  field :USE_CONFIG_DEFAULT_OR_BACKUP_ENCRYPTION, 1
  field :GOOGLE_DEFAULT_ENCRYPTION, 2
  field :CUSTOMER_MANAGED_ENCRYPTION, 3
end

defmodule Google.Spanner.Admin.Database.V1.Backup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  field :encryption_information, 13,
    repeated: true,
    type: Google.Spanner.Admin.Database.V1.EncryptionInfo,
    json_name: "encryptionInformation",
    deprecated: false

  field :database_dialect, 10,
    type: Google.Spanner.Admin.Database.V1.DatabaseDialect,
    json_name: "databaseDialect",
    enum: true,
    deprecated: false

  field :referencing_backups, 11,
    repeated: true,
    type: :string,
    json_name: "referencingBackups",
    deprecated: false

  field :max_expire_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "maxExpireTime",
    deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.CreateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :database, 2, type: :string, deprecated: false
  field :progress, 3, type: Google.Spanner.Admin.Database.V1.OperationProgress
  field :cancel_time, 4, type: Google.Protobuf.Timestamp, json_name: "cancelTime"
end

defmodule Google.Spanner.Admin.Database.V1.CopyBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :backup_id, 2, type: :string, json_name: "backupId", deprecated: false
  field :source_backup, 3, type: :string, json_name: "sourceBackup", deprecated: false

  field :expire_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :encryption_config, 5,
    type: Google.Spanner.Admin.Database.V1.CopyBackupEncryptionConfig,
    json_name: "encryptionConfig",
    deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.CopyBackupMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :source_backup, 2, type: :string, json_name: "sourceBackup", deprecated: false
  field :progress, 3, type: Google.Spanner.Admin.Database.V1.OperationProgress
  field :cancel_time, 4, type: Google.Protobuf.Timestamp, json_name: "cancelTime"
end

defmodule Google.Spanner.Admin.Database.V1.UpdateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backup, 1, type: Google.Spanner.Admin.Database.V1.Backup, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.GetBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.DeleteBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.ListBackupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Spanner.Admin.Database.V1.ListBackupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backups, 1, repeated: true, type: Google.Spanner.Admin.Database.V1.Backup
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Spanner.Admin.Database.V1.ListBackupOperationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Spanner.Admin.Database.V1.ListBackupOperationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operations, 1, repeated: true, type: Google.Longrunning.Operation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Spanner.Admin.Database.V1.BackupInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backup, 1, type: :string, deprecated: false
  field :version_time, 4, type: Google.Protobuf.Timestamp, json_name: "versionTime"
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :source_database, 3, type: :string, json_name: "sourceDatabase", deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.CreateBackupEncryptionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :encryption_type, 1,
    type: Google.Spanner.Admin.Database.V1.CreateBackupEncryptionConfig.EncryptionType,
    json_name: "encryptionType",
    enum: true,
    deprecated: false

  field :kms_key_name, 2, type: :string, json_name: "kmsKeyName", deprecated: false

  field :kms_key_names, 3,
    repeated: true,
    type: :string,
    json_name: "kmsKeyNames",
    deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.CopyBackupEncryptionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :encryption_type, 1,
    type: Google.Spanner.Admin.Database.V1.CopyBackupEncryptionConfig.EncryptionType,
    json_name: "encryptionType",
    enum: true,
    deprecated: false

  field :kms_key_name, 2, type: :string, json_name: "kmsKeyName", deprecated: false

  field :kms_key_names, 3,
    repeated: true,
    type: :string,
    json_name: "kmsKeyNames",
    deprecated: false
end