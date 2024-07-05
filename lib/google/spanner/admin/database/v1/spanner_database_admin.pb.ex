defmodule Google.Spanner.Admin.Database.V1.RestoreSourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :BACKUP, 1
end

defmodule Google.Spanner.Admin.Database.V1.Database.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :READY_OPTIMIZING, 3
end

defmodule Google.Spanner.Admin.Database.V1.RestoreDatabaseEncryptionConfig.EncryptionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ENCRYPTION_TYPE_UNSPECIFIED, 0
  field :USE_CONFIG_DEFAULT_OR_BACKUP_ENCRYPTION, 1
  field :GOOGLE_DEFAULT_ENCRYPTION, 2
  field :CUSTOMER_MANAGED_ENCRYPTION, 3
end

defmodule Google.Spanner.Admin.Database.V1.RestoreInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  field :enable_drop_protection, 11, type: :bool, json_name: "enableDropProtection"
  field :reconciling, 12, type: :bool, deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.ListDatabasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Spanner.Admin.Database.V1.ListDatabasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :databases, 1, repeated: true, type: Google.Spanner.Admin.Database.V1.Database
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Spanner.Admin.Database.V1.CreateDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  field :proto_descriptors, 6, type: :bytes, json_name: "protoDescriptors", deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.CreateDatabaseMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :database, 1, type: :string, deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.GetDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.UpdateDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :database, 1, type: Google.Spanner.Admin.Database.V1.Database, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.UpdateDatabaseMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :request, 1, type: Google.Spanner.Admin.Database.V1.UpdateDatabaseRequest
  field :progress, 2, type: Google.Spanner.Admin.Database.V1.OperationProgress
  field :cancel_time, 3, type: Google.Protobuf.Timestamp, json_name: "cancelTime"
end

defmodule Google.Spanner.Admin.Database.V1.UpdateDatabaseDdlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :database, 1, type: :string, deprecated: false
  field :statements, 2, repeated: true, type: :string, deprecated: false
  field :operation_id, 3, type: :string, json_name: "operationId"
  field :proto_descriptors, 4, type: :bytes, json_name: "protoDescriptors", deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.DdlStatementActionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :action, 1, type: :string
  field :entity_type, 2, type: :string, json_name: "entityType"
  field :entity_names, 3, repeated: true, type: :string, json_name: "entityNames"
end

defmodule Google.Spanner.Admin.Database.V1.UpdateDatabaseDdlMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :database, 1, type: :string, deprecated: false
  field :statements, 2, repeated: true, type: :string

  field :commit_timestamps, 3,
    repeated: true,
    type: Google.Protobuf.Timestamp,
    json_name: "commitTimestamps"

  field :throttled, 4, type: :bool, deprecated: false
  field :progress, 5, repeated: true, type: Google.Spanner.Admin.Database.V1.OperationProgress
  field :actions, 6, repeated: true, type: Google.Spanner.Admin.Database.V1.DdlStatementActionInfo
end

defmodule Google.Spanner.Admin.Database.V1.DropDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :database, 1, type: :string, deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.GetDatabaseDdlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :database, 1, type: :string, deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.GetDatabaseDdlResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :statements, 1, repeated: true, type: :string
  field :proto_descriptors, 2, type: :bytes, json_name: "protoDescriptors"
end

defmodule Google.Spanner.Admin.Database.V1.ListDatabaseOperationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Spanner.Admin.Database.V1.ListDatabaseOperationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operations, 1, repeated: true, type: Google.Longrunning.Operation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Spanner.Admin.Database.V1.RestoreDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :encryption_type, 1,
    type: Google.Spanner.Admin.Database.V1.RestoreDatabaseEncryptionConfig.EncryptionType,
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

defmodule Google.Spanner.Admin.Database.V1.RestoreDatabaseMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :progress, 2, type: Google.Spanner.Admin.Database.V1.OperationProgress
end

defmodule Google.Spanner.Admin.Database.V1.DatabaseRole do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.ListDatabaseRolesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Spanner.Admin.Database.V1.ListDatabaseRolesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :database_roles, 1,
    repeated: true,
    type: Google.Spanner.Admin.Database.V1.DatabaseRole,
    json_name: "databaseRoles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Spanner.Admin.Database.V1.DatabaseAdmin.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.spanner.admin.database.v1.DatabaseAdmin",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListDatabases,
      Google.Spanner.Admin.Database.V1.ListDatabasesRequest,
      Google.Spanner.Admin.Database.V1.ListDatabasesResponse

  rpc :CreateDatabase,
      Google.Spanner.Admin.Database.V1.CreateDatabaseRequest,
      Google.Longrunning.Operation

  rpc :GetDatabase,
      Google.Spanner.Admin.Database.V1.GetDatabaseRequest,
      Google.Spanner.Admin.Database.V1.Database

  rpc :UpdateDatabase,
      Google.Spanner.Admin.Database.V1.UpdateDatabaseRequest,
      Google.Longrunning.Operation

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

  rpc :CopyBackup,
      Google.Spanner.Admin.Database.V1.CopyBackupRequest,
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

  rpc :ListDatabaseRoles,
      Google.Spanner.Admin.Database.V1.ListDatabaseRolesRequest,
      Google.Spanner.Admin.Database.V1.ListDatabaseRolesResponse

  rpc :CreateBackupSchedule,
      Google.Spanner.Admin.Database.V1.CreateBackupScheduleRequest,
      Google.Spanner.Admin.Database.V1.BackupSchedule

  rpc :GetBackupSchedule,
      Google.Spanner.Admin.Database.V1.GetBackupScheduleRequest,
      Google.Spanner.Admin.Database.V1.BackupSchedule

  rpc :UpdateBackupSchedule,
      Google.Spanner.Admin.Database.V1.UpdateBackupScheduleRequest,
      Google.Spanner.Admin.Database.V1.BackupSchedule

  rpc :DeleteBackupSchedule,
      Google.Spanner.Admin.Database.V1.DeleteBackupScheduleRequest,
      Google.Protobuf.Empty

  rpc :ListBackupSchedules,
      Google.Spanner.Admin.Database.V1.ListBackupSchedulesRequest,
      Google.Spanner.Admin.Database.V1.ListBackupSchedulesResponse
end

defmodule Google.Spanner.Admin.Database.V1.DatabaseAdmin.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Spanner.Admin.Database.V1.DatabaseAdmin.Service
end