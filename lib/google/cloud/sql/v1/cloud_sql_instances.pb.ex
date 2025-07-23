defmodule Google.Cloud.Sql.V1.ExternalSyncParallelLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EXTERNAL_SYNC_PARALLEL_LEVEL_UNSPECIFIED, 0
  field :MIN, 1
  field :OPTIMAL, 2
  field :MAX, 3
end

defmodule Google.Cloud.Sql.V1.SqlInstanceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SQL_INSTANCE_TYPE_UNSPECIFIED, 0
  field :CLOUD_SQL_INSTANCE, 1
  field :ON_PREMISES_INSTANCE, 2
  field :READ_REPLICA_INSTANCE, 3
end

defmodule Google.Cloud.Sql.V1.SqlSuspensionReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SQL_SUSPENSION_REASON_UNSPECIFIED, 0
  field :BILLING_ISSUE, 2
  field :LEGAL_ISSUE, 3
  field :OPERATIONAL_ISSUE, 4
  field :KMS_KEY_ISSUE, 5
end

defmodule Google.Cloud.Sql.V1.BackupReencryptionConfig.BackupType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BACKUP_TYPE_UNSPECIFIED, 0
  field :AUTOMATED, 1
  field :ON_DEMAND, 2
end

defmodule Google.Cloud.Sql.V1.SqlInstancesVerifyExternalSyncSettingsRequest.ExternalSyncMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EXTERNAL_SYNC_MODE_UNSPECIFIED, 0
  field :ONLINE, 1
  field :OFFLINE, 2
end

defmodule Google.Cloud.Sql.V1.SqlInstancesVerifyExternalSyncSettingsRequest.MigrationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MIGRATION_TYPE_UNSPECIFIED, 0
  field :LOGICAL, 1
  field :PHYSICAL, 2
end

defmodule Google.Cloud.Sql.V1.DatabaseInstance.SqlInstanceState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SQL_INSTANCE_STATE_UNSPECIFIED, 0
  field :RUNNABLE, 1
  field :SUSPENDED, 2
  field :PENDING_DELETE, 3
  field :PENDING_CREATE, 4
  field :MAINTENANCE, 5
  field :FAILED, 6
  field :ONLINE_MAINTENANCE, 7
end

defmodule Google.Cloud.Sql.V1.DatabaseInstance.SqlNetworkArchitecture do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SQL_NETWORK_ARCHITECTURE_UNSPECIFIED, 0
  field :NEW_NETWORK_ARCHITECTURE, 1
  field :OLD_NETWORK_ARCHITECTURE, 2
end

defmodule Google.Cloud.Sql.V1.DatabaseInstance.SqlOutOfDiskReport.SqlOutOfDiskState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SQL_OUT_OF_DISK_STATE_UNSPECIFIED, 0
  field :NORMAL, 1
  field :SOFT_SHUTDOWN, 2
end

defmodule Google.Cloud.Sql.V1.SqlInstancesRescheduleMaintenanceRequestBody.RescheduleType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RESCHEDULE_TYPE_UNSPECIFIED, 0
  field :IMMEDIATE, 1
  field :NEXT_AVAILABLE_WINDOW, 2
  field :SPECIFIC_TIME, 3
end

defmodule Google.Cloud.Sql.V1.SqlExternalSyncSettingError.SqlExternalSyncSettingErrorType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SQL_EXTERNAL_SYNC_SETTING_ERROR_TYPE_UNSPECIFIED, 0
  field :CONNECTION_FAILURE, 1
  field :BINLOG_NOT_ENABLED, 2
  field :INCOMPATIBLE_DATABASE_VERSION, 3
  field :REPLICA_ALREADY_SETUP, 4
  field :INSUFFICIENT_PRIVILEGE, 5
  field :UNSUPPORTED_MIGRATION_TYPE, 6
  field :NO_PGLOGICAL_INSTALLED, 7
  field :PGLOGICAL_NODE_ALREADY_EXISTS, 8
  field :INVALID_WAL_LEVEL, 9
  field :INVALID_SHARED_PRELOAD_LIBRARY, 10
  field :INSUFFICIENT_MAX_REPLICATION_SLOTS, 11
  field :INSUFFICIENT_MAX_WAL_SENDERS, 12
  field :INSUFFICIENT_MAX_WORKER_PROCESSES, 13
  field :UNSUPPORTED_EXTENSIONS, 14
  field :INVALID_RDS_LOGICAL_REPLICATION, 15
  field :INVALID_LOGGING_SETUP, 16
  field :INVALID_DB_PARAM, 17
  field :UNSUPPORTED_GTID_MODE, 18
  field :SQLSERVER_AGENT_NOT_RUNNING, 19
  field :UNSUPPORTED_TABLE_DEFINITION, 20
  field :UNSUPPORTED_DEFINER, 21
  field :SQLSERVER_SERVERNAME_MISMATCH, 22
  field :PRIMARY_ALREADY_SETUP, 23
  field :UNSUPPORTED_BINLOG_FORMAT, 24
  field :BINLOG_RETENTION_SETTING, 25
  field :UNSUPPORTED_STORAGE_ENGINE, 26
  field :LIMITED_SUPPORT_TABLES, 27
  field :EXISTING_DATA_IN_REPLICA, 28
  field :MISSING_OPTIONAL_PRIVILEGES, 29
  field :RISKY_BACKUP_ADMIN_PRIVILEGE, 30
  field :INSUFFICIENT_GCS_PERMISSIONS, 31
  field :INVALID_FILE_INFO, 32
  field :UNSUPPORTED_DATABASE_SETTINGS, 33
  field :MYSQL_PARALLEL_IMPORT_INSUFFICIENT_PRIVILEGE, 34
  field :LOCAL_INFILE_OFF, 35
  field :TURN_ON_PITR_AFTER_PROMOTE, 36
  field :INCOMPATIBLE_DATABASE_MINOR_VERSION, 37
  field :SOURCE_MAX_SUBSCRIPTIONS, 38
  field :UNABLE_TO_VERIFY_DEFINERS, 39
  field :SUBSCRIPTION_CALCULATION_STATUS, 40
  field :PG_SUBSCRIPTION_COUNT, 41
  field :PG_SYNC_PARALLEL_LEVEL, 42
  field :INSUFFICIENT_DISK_SIZE, 43
  field :INSUFFICIENT_MACHINE_TIER, 44
  field :UNSUPPORTED_EXTENSIONS_NOT_MIGRATED, 45
  field :EXTENSIONS_NOT_MIGRATED, 46
  field :PG_CRON_FLAG_ENABLED_IN_REPLICA, 47
  field :EXTENSIONS_NOT_ENABLED_IN_REPLICA, 48
  field :UNSUPPORTED_COLUMNS, 49
end

defmodule Google.Cloud.Sql.V1.SqlInstancesAddServerCaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlInstancesCloneRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.InstancesCloneRequest
end

defmodule Google.Cloud.Sql.V1.SqlInstancesDeleteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlInstancesDemoteMasterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.InstancesDemoteMasterRequest
end

defmodule Google.Cloud.Sql.V1.SqlInstancesDemoteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string, deprecated: false
  field :project, 2, type: :string, deprecated: false
  field :body, 100, type: Google.Cloud.Sql.V1.InstancesDemoteRequest, deprecated: false
end

defmodule Google.Cloud.Sql.V1.SqlInstancesExportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.InstancesExportRequest
end

defmodule Google.Cloud.Sql.V1.SqlInstancesFailoverRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.InstancesFailoverRequest
end

defmodule Google.Cloud.Sql.V1.SqlInstancesGetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlInstancesImportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.InstancesImportRequest
end

defmodule Google.Cloud.Sql.V1.SqlInstancesInsertRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project, 1, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.DatabaseInstance
end

defmodule Google.Cloud.Sql.V1.SqlInstancesListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :filter, 1, type: :string
  field :max_results, 2, type: :uint32, json_name: "maxResults"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :project, 4, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlInstancesListServerCasRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlInstancesPatchRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.DatabaseInstance
end

defmodule Google.Cloud.Sql.V1.SqlInstancesPromoteReplicaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :failover, 3, type: :bool
end

defmodule Google.Cloud.Sql.V1.SqlInstancesSwitchoverRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :db_timeout, 3, type: Google.Protobuf.Duration, json_name: "dbTimeout", deprecated: false
end

defmodule Google.Cloud.Sql.V1.SqlInstancesResetSslConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlInstancesRestartRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlInstancesRestoreBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.InstancesRestoreBackupRequest
end

defmodule Google.Cloud.Sql.V1.SqlInstancesRotateServerCaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.InstancesRotateServerCaRequest
end

defmodule Google.Cloud.Sql.V1.SqlInstancesStartReplicaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlInstancesStopReplicaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlInstancesTruncateLogRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.InstancesTruncateLogRequest
end

defmodule Google.Cloud.Sql.V1.SqlInstancesPerformDiskShrinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.PerformDiskShrinkContext
end

defmodule Google.Cloud.Sql.V1.SqlInstancesUpdateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.DatabaseInstance
end

defmodule Google.Cloud.Sql.V1.SqlInstancesRescheduleMaintenanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.SqlInstancesRescheduleMaintenanceRequestBody
end

defmodule Google.Cloud.Sql.V1.SqlInstancesReencryptRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 3, type: Google.Cloud.Sql.V1.InstancesReencryptRequest
end

defmodule Google.Cloud.Sql.V1.InstancesReencryptRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :backup_reencryption_config, 1,
    proto3_optional: true,
    type: Google.Cloud.Sql.V1.BackupReencryptionConfig,
    json_name: "backupReencryptionConfig"
end

defmodule Google.Cloud.Sql.V1.BackupReencryptionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :backup_limit, 1, proto3_optional: true, type: :int32, json_name: "backupLimit"

  field :backup_type, 2,
    proto3_optional: true,
    type: Google.Cloud.Sql.V1.BackupReencryptionConfig.BackupType,
    json_name: "backupType",
    enum: true
end

defmodule Google.Cloud.Sql.V1.SqlInstancesGetDiskShrinkConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlInstancesVerifyExternalSyncSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :sync_config, 0

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :verify_connection_only, 3, type: :bool, json_name: "verifyConnectionOnly"

  field :sync_mode, 4,
    type: Google.Cloud.Sql.V1.SqlInstancesVerifyExternalSyncSettingsRequest.ExternalSyncMode,
    json_name: "syncMode",
    enum: true

  field :verify_replication_only, 5,
    type: :bool,
    json_name: "verifyReplicationOnly",
    deprecated: false

  field :mysql_sync_config, 6,
    type: Google.Cloud.Sql.V1.MySqlSyncConfig,
    json_name: "mysqlSyncConfig",
    oneof: 0,
    deprecated: false

  field :migration_type, 7,
    type: Google.Cloud.Sql.V1.SqlInstancesVerifyExternalSyncSettingsRequest.MigrationType,
    json_name: "migrationType",
    enum: true,
    deprecated: false

  field :sync_parallel_level, 8,
    type: Google.Cloud.Sql.V1.ExternalSyncParallelLevel,
    json_name: "syncParallelLevel",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Sql.V1.SqlInstancesStartExternalSyncRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :sync_config, 0

  field :instance, 1, type: :string
  field :project, 2, type: :string

  field :sync_mode, 3,
    type: Google.Cloud.Sql.V1.SqlInstancesVerifyExternalSyncSettingsRequest.ExternalSyncMode,
    json_name: "syncMode",
    enum: true

  field :skip_verification, 4, type: :bool, json_name: "skipVerification"

  field :mysql_sync_config, 6,
    type: Google.Cloud.Sql.V1.MySqlSyncConfig,
    json_name: "mysqlSyncConfig",
    oneof: 0

  field :sync_parallel_level, 7,
    type: Google.Cloud.Sql.V1.ExternalSyncParallelLevel,
    json_name: "syncParallelLevel",
    enum: true,
    deprecated: false

  field :migration_type, 8,
    type: Google.Cloud.Sql.V1.SqlInstancesVerifyExternalSyncSettingsRequest.MigrationType,
    json_name: "migrationType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Sql.V1.SqlInstancesResetReplicaSizeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlInstancesCreateEphemeralCertRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.SslCertsCreateEphemeralRequest
end

defmodule Google.Cloud.Sql.V1.InstancesCloneRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :clone_context, 1, type: Google.Cloud.Sql.V1.CloneContext, json_name: "cloneContext"
end

defmodule Google.Cloud.Sql.V1.InstancesDemoteMasterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :demote_master_context, 1,
    type: Google.Cloud.Sql.V1.DemoteMasterContext,
    json_name: "demoteMasterContext"
end

defmodule Google.Cloud.Sql.V1.InstancesDemoteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :demote_context, 1,
    type: Google.Cloud.Sql.V1.DemoteContext,
    json_name: "demoteContext",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1.InstancesExportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :export_context, 1, type: Google.Cloud.Sql.V1.ExportContext, json_name: "exportContext"
end

defmodule Google.Cloud.Sql.V1.InstancesFailoverRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :failover_context, 1,
    type: Google.Cloud.Sql.V1.FailoverContext,
    json_name: "failoverContext"
end

defmodule Google.Cloud.Sql.V1.SslCertsCreateEphemeralRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :public_key, 1, type: :string
  field :access_token, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.InstancesImportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :import_context, 1, type: Google.Cloud.Sql.V1.ImportContext, json_name: "importContext"
end

defmodule Google.Cloud.Sql.V1.InstancesListResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kind, 1, type: :string
  field :warnings, 2, repeated: true, type: Google.Cloud.Sql.V1.ApiWarning
  field :items, 3, repeated: true, type: Google.Cloud.Sql.V1.DatabaseInstance
  field :next_page_token, 4, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Sql.V1.InstancesListServerCasResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :certs, 1, repeated: true, type: Google.Cloud.Sql.V1.SslCert
  field :active_version, 2, type: :string, json_name: "activeVersion"
  field :kind, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.InstancesRestoreBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :restore_backup_context, 1,
    type: Google.Cloud.Sql.V1.RestoreBackupContext,
    json_name: "restoreBackupContext"
end

defmodule Google.Cloud.Sql.V1.InstancesRotateServerCaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rotate_server_ca_context, 1,
    type: Google.Cloud.Sql.V1.RotateServerCaContext,
    json_name: "rotateServerCaContext"
end

defmodule Google.Cloud.Sql.V1.InstancesTruncateLogRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :truncate_log_context, 1,
    type: Google.Cloud.Sql.V1.TruncateLogContext,
    json_name: "truncateLogContext"
end

defmodule Google.Cloud.Sql.V1.InstancesAcquireSsrsLeaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :acquire_ssrs_lease_context, 1,
    type: Google.Cloud.Sql.V1.AcquireSsrsLeaseContext,
    json_name: "acquireSsrsLeaseContext"
end

defmodule Google.Cloud.Sql.V1.SqlInstancesVerifyExternalSyncSettingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kind, 1, type: :string
  field :errors, 2, repeated: true, type: Google.Cloud.Sql.V1.SqlExternalSyncSettingError
  field :warnings, 3, repeated: true, type: Google.Cloud.Sql.V1.SqlExternalSyncSettingError
end

defmodule Google.Cloud.Sql.V1.SqlInstancesGetDiskShrinkConfigResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kind, 1, type: :string
  field :minimal_target_size_gb, 2, type: :int64, json_name: "minimalTargetSizeGb"
  field :message, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlInstancesGetLatestRecoveryTimeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlInstancesGetLatestRecoveryTimeResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kind, 1, type: :string
  field :latest_recovery_time, 2, type: Google.Protobuf.Timestamp, json_name: "latestRecoveryTime"
end

defmodule Google.Cloud.Sql.V1.CloneContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kind, 1, type: :string
  field :pitr_timestamp_ms, 2, type: :int64, json_name: "pitrTimestampMs"
  field :destination_instance_name, 3, type: :string, json_name: "destinationInstanceName"

  field :bin_log_coordinates, 4,
    type: Google.Cloud.Sql.V1.BinLogCoordinates,
    json_name: "binLogCoordinates"

  field :point_in_time, 5, type: Google.Protobuf.Timestamp, json_name: "pointInTime"
  field :allocated_ip_range, 6, type: :string, json_name: "allocatedIpRange"
  field :database_names, 9, repeated: true, type: :string, json_name: "databaseNames"

  field :preferred_zone, 10,
    proto3_optional: true,
    type: :string,
    json_name: "preferredZone",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1.BinLogCoordinates do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bin_log_file_name, 1, type: :string, json_name: "binLogFileName"
  field :bin_log_position, 2, type: :int64, json_name: "binLogPosition"
  field :kind, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.DatabaseInstance.SqlFailoverReplica do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :available, 2, type: Google.Protobuf.BoolValue
end

defmodule Google.Cloud.Sql.V1.DatabaseInstance.SqlScheduledMaintenance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :can_defer, 2, type: :bool, json_name: "canDefer", deprecated: true
  field :can_reschedule, 3, type: :bool, json_name: "canReschedule"

  field :schedule_deadline_time, 4,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "scheduleDeadlineTime"
end

defmodule Google.Cloud.Sql.V1.DatabaseInstance.SqlOutOfDiskReport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sql_out_of_disk_state, 1,
    proto3_optional: true,
    type: Google.Cloud.Sql.V1.DatabaseInstance.SqlOutOfDiskReport.SqlOutOfDiskState,
    json_name: "sqlOutOfDiskState",
    enum: true

  field :sql_min_recommended_increase_size_gb, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "sqlMinRecommendedIncreaseSizeGb"
end

defmodule Google.Cloud.Sql.V1.DatabaseInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kind, 1, type: :string
  field :state, 2, type: Google.Cloud.Sql.V1.DatabaseInstance.SqlInstanceState, enum: true

  field :database_version, 3,
    type: Google.Cloud.Sql.V1.SqlDatabaseVersion,
    json_name: "databaseVersion",
    enum: true

  field :settings, 4, type: Google.Cloud.Sql.V1.Settings
  field :etag, 5, type: :string

  field :failover_replica, 6,
    type: Google.Cloud.Sql.V1.DatabaseInstance.SqlFailoverReplica,
    json_name: "failoverReplica"

  field :master_instance_name, 7, type: :string, json_name: "masterInstanceName"
  field :replica_names, 8, repeated: true, type: :string, json_name: "replicaNames"

  field :max_disk_size, 9,
    type: Google.Protobuf.Int64Value,
    json_name: "maxDiskSize",
    deprecated: true

  field :current_disk_size, 10,
    type: Google.Protobuf.Int64Value,
    json_name: "currentDiskSize",
    deprecated: true

  field :ip_addresses, 11,
    repeated: true,
    type: Google.Cloud.Sql.V1.IpMapping,
    json_name: "ipAddresses"

  field :server_ca_cert, 12, type: Google.Cloud.Sql.V1.SslCert, json_name: "serverCaCert"

  field :instance_type, 13,
    type: Google.Cloud.Sql.V1.SqlInstanceType,
    json_name: "instanceType",
    enum: true

  field :project, 14, type: :string
  field :ipv6_address, 15, type: :string, json_name: "ipv6Address", deprecated: true
  field :service_account_email_address, 16, type: :string, json_name: "serviceAccountEmailAddress"

  field :on_premises_configuration, 17,
    type: Google.Cloud.Sql.V1.OnPremisesConfiguration,
    json_name: "onPremisesConfiguration"

  field :replica_configuration, 18,
    type: Google.Cloud.Sql.V1.ReplicaConfiguration,
    json_name: "replicaConfiguration"

  field :backend_type, 19,
    type: Google.Cloud.Sql.V1.SqlBackendType,
    json_name: "backendType",
    enum: true

  field :self_link, 20, type: :string, json_name: "selfLink"

  field :suspension_reason, 21,
    repeated: true,
    type: Google.Cloud.Sql.V1.SqlSuspensionReason,
    json_name: "suspensionReason",
    enum: true

  field :connection_name, 22, type: :string, json_name: "connectionName"
  field :name, 23, type: :string
  field :region, 24, type: :string
  field :gce_zone, 25, type: :string, json_name: "gceZone"
  field :secondary_gce_zone, 34, type: :string, json_name: "secondaryGceZone"

  field :disk_encryption_configuration, 26,
    type: Google.Cloud.Sql.V1.DiskEncryptionConfiguration,
    json_name: "diskEncryptionConfiguration"

  field :disk_encryption_status, 27,
    type: Google.Cloud.Sql.V1.DiskEncryptionStatus,
    json_name: "diskEncryptionStatus"

  field :root_password, 29, type: :string, json_name: "rootPassword"

  field :scheduled_maintenance, 30,
    type: Google.Cloud.Sql.V1.DatabaseInstance.SqlScheduledMaintenance,
    json_name: "scheduledMaintenance"

  field :satisfies_pzs, 35, type: Google.Protobuf.BoolValue, json_name: "satisfiesPzs"

  field :database_installed_version, 40,
    type: :string,
    json_name: "databaseInstalledVersion",
    deprecated: false

  field :out_of_disk_report, 38,
    proto3_optional: true,
    type: Google.Cloud.Sql.V1.DatabaseInstance.SqlOutOfDiskReport,
    json_name: "outOfDiskReport"

  field :create_time, 39,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :available_maintenance_versions, 41,
    repeated: true,
    type: :string,
    json_name: "availableMaintenanceVersions",
    deprecated: false

  field :maintenance_version, 42, type: :string, json_name: "maintenanceVersion"

  field :upgradable_database_versions, 45,
    repeated: true,
    type: Google.Cloud.Sql.V1.AvailableDatabaseVersion,
    json_name: "upgradableDatabaseVersions",
    deprecated: false

  field :sql_network_architecture, 47,
    proto3_optional: true,
    type: Google.Cloud.Sql.V1.DatabaseInstance.SqlNetworkArchitecture,
    json_name: "sqlNetworkArchitecture",
    enum: true

  field :psc_service_attachment_link, 48,
    proto3_optional: true,
    type: :string,
    json_name: "pscServiceAttachmentLink",
    deprecated: false

  field :dns_name, 49,
    proto3_optional: true,
    type: :string,
    json_name: "dnsName",
    deprecated: false

  field :primary_dns_name, 51,
    proto3_optional: true,
    type: :string,
    json_name: "primaryDnsName",
    deprecated: true

  field :write_endpoint, 52,
    proto3_optional: true,
    type: :string,
    json_name: "writeEndpoint",
    deprecated: false

  field :replication_cluster, 54,
    type: Google.Cloud.Sql.V1.ReplicationCluster,
    json_name: "replicationCluster",
    deprecated: false

  field :gemini_config, 55,
    proto3_optional: true,
    type: Google.Cloud.Sql.V1.GeminiInstanceConfig,
    json_name: "geminiConfig"

  field :satisfies_pzi, 56,
    type: Google.Protobuf.BoolValue,
    json_name: "satisfiesPzi",
    deprecated: false

  field :switch_transaction_logs_to_cloud_storage_enabled, 57,
    proto3_optional: true,
    type: Google.Protobuf.BoolValue,
    json_name: "switchTransactionLogsToCloudStorageEnabled",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1.GeminiInstanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :entitled, 1, proto3_optional: true, type: :bool, deprecated: false

  field :google_vacuum_mgmt_enabled, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "googleVacuumMgmtEnabled",
    deprecated: false

  field :oom_session_cancel_enabled, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "oomSessionCancelEnabled",
    deprecated: false

  field :active_query_enabled, 4,
    proto3_optional: true,
    type: :bool,
    json_name: "activeQueryEnabled",
    deprecated: false

  field :index_advisor_enabled, 5,
    proto3_optional: true,
    type: :bool,
    json_name: "indexAdvisorEnabled",
    deprecated: false

  field :flag_recommender_enabled, 6,
    proto3_optional: true,
    type: :bool,
    json_name: "flagRecommenderEnabled",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1.ReplicationCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :psa_write_endpoint, 1, type: :string, json_name: "psaWriteEndpoint", deprecated: false

  field :failover_dr_replica_name, 2,
    type: :string,
    json_name: "failoverDrReplicaName",
    deprecated: false

  field :dr_replica, 4, type: :bool, json_name: "drReplica", deprecated: false
end

defmodule Google.Cloud.Sql.V1.AvailableDatabaseVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :major_version, 3, proto3_optional: true, type: :string, json_name: "majorVersion"
  field :name, 8, proto3_optional: true, type: :string
  field :display_name, 9, proto3_optional: true, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Sql.V1.SqlInstancesRescheduleMaintenanceRequestBody.Reschedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reschedule_type, 1,
    type: Google.Cloud.Sql.V1.SqlInstancesRescheduleMaintenanceRequestBody.RescheduleType,
    json_name: "rescheduleType",
    enum: true

  field :schedule_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "scheduleTime",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1.SqlInstancesRescheduleMaintenanceRequestBody do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reschedule, 3,
    type: Google.Cloud.Sql.V1.SqlInstancesRescheduleMaintenanceRequestBody.Reschedule
end

defmodule Google.Cloud.Sql.V1.DemoteMasterContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kind, 1, type: :string

  field :verify_gtid_consistency, 2,
    type: Google.Protobuf.BoolValue,
    json_name: "verifyGtidConsistency"

  field :master_instance_name, 3, type: :string, json_name: "masterInstanceName"

  field :replica_configuration, 4,
    type: Google.Cloud.Sql.V1.DemoteMasterConfiguration,
    json_name: "replicaConfiguration"

  field :skip_replication_setup, 5, type: :bool, json_name: "skipReplicationSetup"
end

defmodule Google.Cloud.Sql.V1.DemoteContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kind, 1, type: :string

  field :source_representative_instance_name, 2,
    type: :string,
    json_name: "sourceRepresentativeInstanceName",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1.FailoverContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :settings_version, 1, type: :int64, json_name: "settingsVersion"
  field :kind, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.RestoreBackupContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kind, 1, type: :string
  field :backup_run_id, 2, type: :int64, json_name: "backupRunId"
  field :instance_id, 3, type: :string, json_name: "instanceId"
  field :project, 4, type: :string
end

defmodule Google.Cloud.Sql.V1.RotateServerCaContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kind, 1, type: :string
  field :next_version, 2, type: :string, json_name: "nextVersion"
end

defmodule Google.Cloud.Sql.V1.TruncateLogContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kind, 1, type: :string
  field :log_type, 2, type: :string, json_name: "logType"
end

defmodule Google.Cloud.Sql.V1.SqlExternalSyncSettingError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kind, 1, type: :string

  field :type, 2,
    type: Google.Cloud.Sql.V1.SqlExternalSyncSettingError.SqlExternalSyncSettingErrorType,
    enum: true

  field :detail, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.OnPremisesConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :host_port, 1, type: :string, json_name: "hostPort"
  field :kind, 2, type: :string
  field :username, 3, type: :string
  field :password, 4, type: :string
  field :ca_certificate, 5, type: :string, json_name: "caCertificate"
  field :client_certificate, 6, type: :string, json_name: "clientCertificate"
  field :client_key, 7, type: :string, json_name: "clientKey"
  field :dump_file_path, 8, type: :string, json_name: "dumpFilePath"

  field :source_instance, 15,
    type: Google.Cloud.Sql.V1.InstanceReference,
    json_name: "sourceInstance"
end

defmodule Google.Cloud.Sql.V1.ReplicaConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kind, 1, type: :string

  field :mysql_replica_configuration, 2,
    type: Google.Cloud.Sql.V1.MySqlReplicaConfiguration,
    json_name: "mysqlReplicaConfiguration"

  field :failover_target, 3, type: Google.Protobuf.BoolValue, json_name: "failoverTarget"

  field :cascadable_replica, 5,
    type: Google.Protobuf.BoolValue,
    json_name: "cascadableReplica",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1.SqlInstancesAcquireSsrsLeaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string, deprecated: false
  field :project, 2, type: :string, deprecated: false
  field :body, 100, type: Google.Cloud.Sql.V1.InstancesAcquireSsrsLeaseRequest, deprecated: false
end

defmodule Google.Cloud.Sql.V1.SqlInstancesAcquireSsrsLeaseResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :operation_id, 1, type: :string, json_name: "operationId"
end

defmodule Google.Cloud.Sql.V1.SqlInstancesReleaseSsrsLeaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string, deprecated: false
  field :project, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Sql.V1.SqlInstancesReleaseSsrsLeaseResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :operation_id, 1, type: :string, json_name: "operationId"
end

defmodule Google.Cloud.Sql.V1.SqlInstancesService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1.SqlInstancesService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :AddServerCa,
      Google.Cloud.Sql.V1.SqlInstancesAddServerCaRequest,
      Google.Cloud.Sql.V1.Operation

  rpc :Clone, Google.Cloud.Sql.V1.SqlInstancesCloneRequest, Google.Cloud.Sql.V1.Operation

  rpc :Delete, Google.Cloud.Sql.V1.SqlInstancesDeleteRequest, Google.Cloud.Sql.V1.Operation

  rpc :DemoteMaster,
      Google.Cloud.Sql.V1.SqlInstancesDemoteMasterRequest,
      Google.Cloud.Sql.V1.Operation

  rpc :Demote, Google.Cloud.Sql.V1.SqlInstancesDemoteRequest, Google.Cloud.Sql.V1.Operation

  rpc :Export, Google.Cloud.Sql.V1.SqlInstancesExportRequest, Google.Cloud.Sql.V1.Operation

  rpc :Failover, Google.Cloud.Sql.V1.SqlInstancesFailoverRequest, Google.Cloud.Sql.V1.Operation

  rpc :Reencrypt, Google.Cloud.Sql.V1.SqlInstancesReencryptRequest, Google.Cloud.Sql.V1.Operation

  rpc :Get, Google.Cloud.Sql.V1.SqlInstancesGetRequest, Google.Cloud.Sql.V1.DatabaseInstance

  rpc :Import, Google.Cloud.Sql.V1.SqlInstancesImportRequest, Google.Cloud.Sql.V1.Operation

  rpc :Insert, Google.Cloud.Sql.V1.SqlInstancesInsertRequest, Google.Cloud.Sql.V1.Operation

  rpc :List,
      Google.Cloud.Sql.V1.SqlInstancesListRequest,
      Google.Cloud.Sql.V1.InstancesListResponse

  rpc :ListServerCas,
      Google.Cloud.Sql.V1.SqlInstancesListServerCasRequest,
      Google.Cloud.Sql.V1.InstancesListServerCasResponse

  rpc :Patch, Google.Cloud.Sql.V1.SqlInstancesPatchRequest, Google.Cloud.Sql.V1.Operation

  rpc :PromoteReplica,
      Google.Cloud.Sql.V1.SqlInstancesPromoteReplicaRequest,
      Google.Cloud.Sql.V1.Operation

  rpc :Switchover,
      Google.Cloud.Sql.V1.SqlInstancesSwitchoverRequest,
      Google.Cloud.Sql.V1.Operation

  rpc :ResetSslConfig,
      Google.Cloud.Sql.V1.SqlInstancesResetSslConfigRequest,
      Google.Cloud.Sql.V1.Operation

  rpc :Restart, Google.Cloud.Sql.V1.SqlInstancesRestartRequest, Google.Cloud.Sql.V1.Operation

  rpc :RestoreBackup,
      Google.Cloud.Sql.V1.SqlInstancesRestoreBackupRequest,
      Google.Cloud.Sql.V1.Operation

  rpc :RotateServerCa,
      Google.Cloud.Sql.V1.SqlInstancesRotateServerCaRequest,
      Google.Cloud.Sql.V1.Operation

  rpc :StartReplica,
      Google.Cloud.Sql.V1.SqlInstancesStartReplicaRequest,
      Google.Cloud.Sql.V1.Operation

  rpc :StopReplica,
      Google.Cloud.Sql.V1.SqlInstancesStopReplicaRequest,
      Google.Cloud.Sql.V1.Operation

  rpc :TruncateLog,
      Google.Cloud.Sql.V1.SqlInstancesTruncateLogRequest,
      Google.Cloud.Sql.V1.Operation

  rpc :Update, Google.Cloud.Sql.V1.SqlInstancesUpdateRequest, Google.Cloud.Sql.V1.Operation

  rpc :CreateEphemeral,
      Google.Cloud.Sql.V1.SqlInstancesCreateEphemeralCertRequest,
      Google.Cloud.Sql.V1.SslCert

  rpc :RescheduleMaintenance,
      Google.Cloud.Sql.V1.SqlInstancesRescheduleMaintenanceRequest,
      Google.Cloud.Sql.V1.Operation

  rpc :VerifyExternalSyncSettings,
      Google.Cloud.Sql.V1.SqlInstancesVerifyExternalSyncSettingsRequest,
      Google.Cloud.Sql.V1.SqlInstancesVerifyExternalSyncSettingsResponse

  rpc :StartExternalSync,
      Google.Cloud.Sql.V1.SqlInstancesStartExternalSyncRequest,
      Google.Cloud.Sql.V1.Operation

  rpc :PerformDiskShrink,
      Google.Cloud.Sql.V1.SqlInstancesPerformDiskShrinkRequest,
      Google.Cloud.Sql.V1.Operation

  rpc :GetDiskShrinkConfig,
      Google.Cloud.Sql.V1.SqlInstancesGetDiskShrinkConfigRequest,
      Google.Cloud.Sql.V1.SqlInstancesGetDiskShrinkConfigResponse

  rpc :ResetReplicaSize,
      Google.Cloud.Sql.V1.SqlInstancesResetReplicaSizeRequest,
      Google.Cloud.Sql.V1.Operation

  rpc :GetLatestRecoveryTime,
      Google.Cloud.Sql.V1.SqlInstancesGetLatestRecoveryTimeRequest,
      Google.Cloud.Sql.V1.SqlInstancesGetLatestRecoveryTimeResponse

  rpc :AcquireSsrsLease,
      Google.Cloud.Sql.V1.SqlInstancesAcquireSsrsLeaseRequest,
      Google.Cloud.Sql.V1.SqlInstancesAcquireSsrsLeaseResponse

  rpc :ReleaseSsrsLease,
      Google.Cloud.Sql.V1.SqlInstancesReleaseSsrsLeaseRequest,
      Google.Cloud.Sql.V1.SqlInstancesReleaseSsrsLeaseResponse
end

defmodule Google.Cloud.Sql.V1.SqlInstancesService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1.SqlInstancesService.Service
end
