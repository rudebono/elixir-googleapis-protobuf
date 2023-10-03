defmodule Google.Cloud.Sql.V1beta4.ExternalSyncParallelLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :EXTERNAL_SYNC_PARALLEL_LEVEL_UNSPECIFIED, 0
  field :MIN, 1
  field :OPTIMAL, 2
  field :MAX, 3
end

defmodule Google.Cloud.Sql.V1beta4.BackupReencryptionConfig.BackupType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :BACKUP_TYPE_UNSPECIFIED, 0
  field :AUTOMATED, 1
  field :ON_DEMAND, 2
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesVerifyExternalSyncSettingsRequest.ExternalSyncMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :EXTERNAL_SYNC_MODE_UNSPECIFIED, 0
  field :ONLINE, 1
  field :OFFLINE, 2
end

defmodule Google.Cloud.Sql.V1beta4.SqlBackupRunsDeleteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :int64
  field :instance, 2, type: :string
  field :project, 3, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlBackupRunsGetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :int64
  field :instance, 2, type: :string
  field :project, 3, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlBackupRunsInsertRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.BackupRun
end

defmodule Google.Cloud.Sql.V1beta4.SqlBackupRunsListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :max_results, 2, type: :int32, json_name: "maxResults"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :project, 4, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlDatabasesDeleteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :database, 1, type: :string
  field :instance, 2, type: :string
  field :project, 3, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlDatabasesGetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :database, 1, type: :string
  field :instance, 2, type: :string
  field :project, 3, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlDatabasesInsertRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.Database
end

defmodule Google.Cloud.Sql.V1beta4.SqlDatabasesListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlDatabasesUpdateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :database, 1, type: :string
  field :instance, 2, type: :string
  field :project, 3, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.Database
end

defmodule Google.Cloud.Sql.V1beta4.SqlFlagsListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :database_version, 1, type: :string, json_name: "databaseVersion"
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesAddServerCaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesCloneRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.InstancesCloneRequest
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesDeleteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesDemoteMasterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.InstancesDemoteMasterRequest
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesExportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.InstancesExportRequest
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesFailoverRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.InstancesFailoverRequest
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesGetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesImportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.InstancesImportRequest
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesInsertRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project, 1, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.DatabaseInstance
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :filter, 1, type: :string
  field :max_results, 2, type: :uint32, json_name: "maxResults"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :project, 4, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesListServerCasRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesPatchRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.DatabaseInstance
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesPromoteReplicaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesResetSslConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesRestartRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesRestoreBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.InstancesRestoreBackupRequest
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesRotateServerCaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.InstancesRotateServerCaRequest
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesStartReplicaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesStopReplicaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesTruncateLogRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.InstancesTruncateLogRequest
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesUpdateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.DatabaseInstance
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesReencryptRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 3, type: Google.Cloud.Sql.V1beta4.InstancesReencryptRequest
end

defmodule Google.Cloud.Sql.V1beta4.InstancesReencryptRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backup_reencryption_config, 1,
    proto3_optional: true,
    type: Google.Cloud.Sql.V1beta4.BackupReencryptionConfig,
    json_name: "backupReencryptionConfig"
end

defmodule Google.Cloud.Sql.V1beta4.BackupReencryptionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backup_limit, 1, proto3_optional: true, type: :int32, json_name: "backupLimit"

  field :backup_type, 2,
    proto3_optional: true,
    type: Google.Cloud.Sql.V1beta4.BackupReencryptionConfig.BackupType,
    json_name: "backupType",
    enum: true
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesRescheduleMaintenanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.SqlInstancesRescheduleMaintenanceRequestBody
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesPerformDiskShrinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.PerformDiskShrinkContext
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesVerifyExternalSyncSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :sync_config, 0

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :verify_connection_only, 3, type: :bool, json_name: "verifyConnectionOnly"

  field :sync_mode, 4,
    type: Google.Cloud.Sql.V1beta4.SqlInstancesVerifyExternalSyncSettingsRequest.ExternalSyncMode,
    json_name: "syncMode",
    enum: true

  field :verify_replication_only, 5,
    type: :bool,
    json_name: "verifyReplicationOnly",
    deprecated: false

  field :mysql_sync_config, 6,
    type: Google.Cloud.Sql.V1beta4.MySqlSyncConfig,
    json_name: "mysqlSyncConfig",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesStartExternalSyncRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :sync_config, 0

  field :instance, 1, type: :string
  field :project, 2, type: :string

  field :sync_mode, 3,
    type: Google.Cloud.Sql.V1beta4.SqlInstancesVerifyExternalSyncSettingsRequest.ExternalSyncMode,
    json_name: "syncMode",
    enum: true

  field :skip_verification, 4, type: :bool, json_name: "skipVerification"

  field :mysql_sync_config, 6,
    type: Google.Cloud.Sql.V1beta4.MySqlSyncConfig,
    json_name: "mysqlSyncConfig",
    oneof: 0

  field :sync_parallel_level, 7,
    type: Google.Cloud.Sql.V1beta4.ExternalSyncParallelLevel,
    json_name: "syncParallelLevel",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesResetReplicaSizeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlOperationsGetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operation, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlOperationsListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :max_results, 2, type: :uint32, json_name: "maxResults"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :project, 4, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlOperationsCancelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operation, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesCreateEphemeralCertRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.SslCertsCreateEphemeralRequest
end

defmodule Google.Cloud.Sql.V1beta4.SqlSslCertsDeleteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :sha1_fingerprint, 3, type: :string, json_name: "sha1Fingerprint"
end

defmodule Google.Cloud.Sql.V1beta4.SqlSslCertsGetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :sha1_fingerprint, 3, type: :string, json_name: "sha1Fingerprint"
end

defmodule Google.Cloud.Sql.V1beta4.SqlSslCertsInsertRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.SslCertsInsertRequest
end

defmodule Google.Cloud.Sql.V1beta4.SqlSslCertsListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesGetDiskShrinkConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesGetLatestRecoveryTimeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesGetLatestRecoveryTimeResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :kind, 1, type: :string
  field :latest_recovery_time, 2, type: Google.Protobuf.Timestamp, json_name: "latestRecoveryTime"
end

defmodule Google.Cloud.Sql.V1beta4.SqlBackupRunsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1beta4.SqlBackupRunsService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :Delete,
      Google.Cloud.Sql.V1beta4.SqlBackupRunsDeleteRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Get, Google.Cloud.Sql.V1beta4.SqlBackupRunsGetRequest, Google.Cloud.Sql.V1beta4.BackupRun

  rpc :Insert,
      Google.Cloud.Sql.V1beta4.SqlBackupRunsInsertRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :List,
      Google.Cloud.Sql.V1beta4.SqlBackupRunsListRequest,
      Google.Cloud.Sql.V1beta4.BackupRunsListResponse
end

defmodule Google.Cloud.Sql.V1beta4.SqlBackupRunsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1beta4.SqlBackupRunsService.Service
end

defmodule Google.Cloud.Sql.V1beta4.SqlDatabasesService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1beta4.SqlDatabasesService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :Delete,
      Google.Cloud.Sql.V1beta4.SqlDatabasesDeleteRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Get, Google.Cloud.Sql.V1beta4.SqlDatabasesGetRequest, Google.Cloud.Sql.V1beta4.Database

  rpc :Insert,
      Google.Cloud.Sql.V1beta4.SqlDatabasesInsertRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :List,
      Google.Cloud.Sql.V1beta4.SqlDatabasesListRequest,
      Google.Cloud.Sql.V1beta4.DatabasesListResponse

  rpc :Patch,
      Google.Cloud.Sql.V1beta4.SqlDatabasesUpdateRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Update,
      Google.Cloud.Sql.V1beta4.SqlDatabasesUpdateRequest,
      Google.Cloud.Sql.V1beta4.Operation
end

defmodule Google.Cloud.Sql.V1beta4.SqlDatabasesService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1beta4.SqlDatabasesService.Service
end

defmodule Google.Cloud.Sql.V1beta4.SqlFlagsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1beta4.SqlFlagsService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :List,
      Google.Cloud.Sql.V1beta4.SqlFlagsListRequest,
      Google.Cloud.Sql.V1beta4.FlagsListResponse
end

defmodule Google.Cloud.Sql.V1beta4.SqlFlagsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1beta4.SqlFlagsService.Service
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1beta4.SqlInstancesService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :AddServerCa,
      Google.Cloud.Sql.V1beta4.SqlInstancesAddServerCaRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Clone,
      Google.Cloud.Sql.V1beta4.SqlInstancesCloneRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Delete,
      Google.Cloud.Sql.V1beta4.SqlInstancesDeleteRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :DemoteMaster,
      Google.Cloud.Sql.V1beta4.SqlInstancesDemoteMasterRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Export,
      Google.Cloud.Sql.V1beta4.SqlInstancesExportRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Failover,
      Google.Cloud.Sql.V1beta4.SqlInstancesFailoverRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Reencrypt,
      Google.Cloud.Sql.V1beta4.SqlInstancesReencryptRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Get,
      Google.Cloud.Sql.V1beta4.SqlInstancesGetRequest,
      Google.Cloud.Sql.V1beta4.DatabaseInstance

  rpc :Import,
      Google.Cloud.Sql.V1beta4.SqlInstancesImportRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Insert,
      Google.Cloud.Sql.V1beta4.SqlInstancesInsertRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :List,
      Google.Cloud.Sql.V1beta4.SqlInstancesListRequest,
      Google.Cloud.Sql.V1beta4.InstancesListResponse

  rpc :ListServerCas,
      Google.Cloud.Sql.V1beta4.SqlInstancesListServerCasRequest,
      Google.Cloud.Sql.V1beta4.InstancesListServerCasResponse

  rpc :Patch,
      Google.Cloud.Sql.V1beta4.SqlInstancesPatchRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :PromoteReplica,
      Google.Cloud.Sql.V1beta4.SqlInstancesPromoteReplicaRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :ResetSslConfig,
      Google.Cloud.Sql.V1beta4.SqlInstancesResetSslConfigRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Restart,
      Google.Cloud.Sql.V1beta4.SqlInstancesRestartRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :RestoreBackup,
      Google.Cloud.Sql.V1beta4.SqlInstancesRestoreBackupRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :RotateServerCa,
      Google.Cloud.Sql.V1beta4.SqlInstancesRotateServerCaRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :StartReplica,
      Google.Cloud.Sql.V1beta4.SqlInstancesStartReplicaRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :StopReplica,
      Google.Cloud.Sql.V1beta4.SqlInstancesStopReplicaRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :TruncateLog,
      Google.Cloud.Sql.V1beta4.SqlInstancesTruncateLogRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Update,
      Google.Cloud.Sql.V1beta4.SqlInstancesUpdateRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :CreateEphemeral,
      Google.Cloud.Sql.V1beta4.SqlInstancesCreateEphemeralCertRequest,
      Google.Cloud.Sql.V1beta4.SslCert

  rpc :RescheduleMaintenance,
      Google.Cloud.Sql.V1beta4.SqlInstancesRescheduleMaintenanceRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :VerifyExternalSyncSettings,
      Google.Cloud.Sql.V1beta4.SqlInstancesVerifyExternalSyncSettingsRequest,
      Google.Cloud.Sql.V1beta4.SqlInstancesVerifyExternalSyncSettingsResponse

  rpc :StartExternalSync,
      Google.Cloud.Sql.V1beta4.SqlInstancesStartExternalSyncRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :PerformDiskShrink,
      Google.Cloud.Sql.V1beta4.SqlInstancesPerformDiskShrinkRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :GetDiskShrinkConfig,
      Google.Cloud.Sql.V1beta4.SqlInstancesGetDiskShrinkConfigRequest,
      Google.Cloud.Sql.V1beta4.SqlInstancesGetDiskShrinkConfigResponse

  rpc :ResetReplicaSize,
      Google.Cloud.Sql.V1beta4.SqlInstancesResetReplicaSizeRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :GetLatestRecoveryTime,
      Google.Cloud.Sql.V1beta4.SqlInstancesGetLatestRecoveryTimeRequest,
      Google.Cloud.Sql.V1beta4.SqlInstancesGetLatestRecoveryTimeResponse
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1beta4.SqlInstancesService.Service
end

defmodule Google.Cloud.Sql.V1beta4.SqlOperationsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1beta4.SqlOperationsService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :Get, Google.Cloud.Sql.V1beta4.SqlOperationsGetRequest, Google.Cloud.Sql.V1beta4.Operation

  rpc :List,
      Google.Cloud.Sql.V1beta4.SqlOperationsListRequest,
      Google.Cloud.Sql.V1beta4.OperationsListResponse

  rpc :Cancel, Google.Cloud.Sql.V1beta4.SqlOperationsCancelRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Sql.V1beta4.SqlOperationsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1beta4.SqlOperationsService.Service
end

defmodule Google.Cloud.Sql.V1beta4.SqlSslCertsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1beta4.SqlSslCertsService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :Delete,
      Google.Cloud.Sql.V1beta4.SqlSslCertsDeleteRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Get, Google.Cloud.Sql.V1beta4.SqlSslCertsGetRequest, Google.Cloud.Sql.V1beta4.SslCert

  rpc :Insert,
      Google.Cloud.Sql.V1beta4.SqlSslCertsInsertRequest,
      Google.Cloud.Sql.V1beta4.SslCertsInsertResponse

  rpc :List,
      Google.Cloud.Sql.V1beta4.SqlSslCertsListRequest,
      Google.Cloud.Sql.V1beta4.SslCertsListResponse
end

defmodule Google.Cloud.Sql.V1beta4.SqlSslCertsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1beta4.SqlSslCertsService.Service
end