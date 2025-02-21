defmodule Google.Cloud.Sql.V1beta4.SqlFileType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_FILE_TYPE_UNSPECIFIED, 0
  field :SQL, 1
  field :CSV, 2
  field :BAK, 4
end

defmodule Google.Cloud.Sql.V1beta4.BakType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :BAK_TYPE_UNSPECIFIED, 0
  field :FULL, 1
  field :DIFF, 2
  field :TLOG, 3
end

defmodule Google.Cloud.Sql.V1beta4.SqlBackupRunStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_BACKUP_RUN_STATUS_UNSPECIFIED, 0
  field :ENQUEUED, 1
  field :OVERDUE, 2
  field :RUNNING, 3
  field :FAILED, 4
  field :SUCCESSFUL, 5
  field :SKIPPED, 6
  field :DELETION_PENDING, 7
  field :DELETION_FAILED, 8
  field :DELETED, 9
end

defmodule Google.Cloud.Sql.V1beta4.SqlBackupRunType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_BACKUP_RUN_TYPE_UNSPECIFIED, 0
  field :AUTOMATED, 1
  field :ON_DEMAND, 2
end

defmodule Google.Cloud.Sql.V1beta4.SqlBackupKind do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_BACKUP_KIND_UNSPECIFIED, 0
  field :SNAPSHOT, 1
  field :PHYSICAL, 2
end

defmodule Google.Cloud.Sql.V1beta4.SqlBackendType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_BACKEND_TYPE_UNSPECIFIED, 0
  field :FIRST_GEN, 1
  field :SECOND_GEN, 2
  field :EXTERNAL, 3
end

defmodule Google.Cloud.Sql.V1beta4.SqlIpAddressType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_IP_ADDRESS_TYPE_UNSPECIFIED, 0
  field :PRIMARY, 1
  field :OUTGOING, 2
  field :PRIVATE, 3
  field :MIGRATED_1ST_GEN, 4
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstanceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_INSTANCE_TYPE_UNSPECIFIED, 0
  field :CLOUD_SQL_INSTANCE, 1
  field :ON_PREMISES_INSTANCE, 2
  field :READ_REPLICA_INSTANCE, 3
end

defmodule Google.Cloud.Sql.V1beta4.SqlDatabaseVersion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_DATABASE_VERSION_UNSPECIFIED, 0
  field :MYSQL_5_1, 2
  field :MYSQL_5_5, 3
  field :MYSQL_5_6, 5
  field :MYSQL_5_7, 6
  field :SQLSERVER_2017_STANDARD, 11
  field :SQLSERVER_2017_ENTERPRISE, 14
  field :SQLSERVER_2017_EXPRESS, 15
  field :SQLSERVER_2017_WEB, 16
  field :POSTGRES_9_6, 9
  field :POSTGRES_10, 18
  field :POSTGRES_11, 10
  field :POSTGRES_12, 19
  field :POSTGRES_13, 23
  field :POSTGRES_14, 110
  field :POSTGRES_15, 172
  field :POSTGRES_16, 272
  field :MYSQL_8_0, 20
  field :MYSQL_8_0_18, 41
  field :MYSQL_8_0_26, 85
  field :MYSQL_8_0_27, 111
  field :MYSQL_8_0_28, 132
  field :MYSQL_8_0_29, 148
  field :MYSQL_8_0_30, 174
  field :MYSQL_8_0_31, 197
  field :MYSQL_8_0_32, 213
  field :MYSQL_8_0_33, 238
  field :MYSQL_8_0_34, 239
  field :MYSQL_8_0_35, 240
  field :MYSQL_8_0_36, 241
  field :MYSQL_8_0_37, 355
  field :MYSQL_8_0_38, 356
  field :MYSQL_8_0_39, 357
  field :MYSQL_8_0_40, 358
  field :MYSQL_8_4, 398
  field :MYSQL_8_4_0, 399
  field :SQLSERVER_2019_STANDARD, 26
  field :SQLSERVER_2019_ENTERPRISE, 27
  field :SQLSERVER_2019_EXPRESS, 28
  field :SQLSERVER_2019_WEB, 29
  field :SQLSERVER_2022_STANDARD, 199
  field :SQLSERVER_2022_ENTERPRISE, 200
  field :SQLSERVER_2022_EXPRESS, 201
  field :SQLSERVER_2022_WEB, 202
end

defmodule Google.Cloud.Sql.V1beta4.SqlSuspensionReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_SUSPENSION_REASON_UNSPECIFIED, 0
  field :BILLING_ISSUE, 2
  field :LEGAL_ISSUE, 3
  field :OPERATIONAL_ISSUE, 4
  field :KMS_KEY_ISSUE, 5
end

defmodule Google.Cloud.Sql.V1beta4.SqlPricingPlan do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_PRICING_PLAN_UNSPECIFIED, 0
  field :PACKAGE, 1
  field :PER_USE, 2
end

defmodule Google.Cloud.Sql.V1beta4.SqlReplicationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_REPLICATION_TYPE_UNSPECIFIED, 0
  field :SYNCHRONOUS, 1
  field :ASYNCHRONOUS, 2
end

defmodule Google.Cloud.Sql.V1beta4.SqlDataDiskType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_DATA_DISK_TYPE_UNSPECIFIED, 0
  field :PD_SSD, 1
  field :PD_HDD, 2
  field :OBSOLETE_LOCAL_SSD, 3
end

defmodule Google.Cloud.Sql.V1beta4.SqlAvailabilityType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_AVAILABILITY_TYPE_UNSPECIFIED, 0
  field :ZONAL, 1
  field :REGIONAL, 2
end

defmodule Google.Cloud.Sql.V1beta4.SqlUpdateTrack do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_UPDATE_TRACK_UNSPECIFIED, 0
  field :canary, 1
  field :stable, 2
  field :week5, 3
end

defmodule Google.Cloud.Sql.V1beta4.SqlFlagType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_FLAG_TYPE_UNSPECIFIED, 0
  field :BOOLEAN, 1
  field :STRING, 2
  field :INTEGER, 3
  field :NONE, 4
  field :MYSQL_TIMEZONE_OFFSET, 5
  field :FLOAT, 6
  field :REPEATED_STRING, 7
end

defmodule Google.Cloud.Sql.V1beta4.ApiWarning.SqlApiWarningCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_API_WARNING_CODE_UNSPECIFIED, 0
  field :REGION_UNREACHABLE, 1
  field :MAX_RESULTS_EXCEEDS_LIMIT, 2
  field :COMPROMISED_CREDENTIALS, 3
  field :INTERNAL_STATE_FAILURE, 4
end

defmodule Google.Cloud.Sql.V1beta4.BackupRetentionSettings.RetentionUnit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RETENTION_UNIT_UNSPECIFIED, 0
  field :COUNT, 1
end

defmodule Google.Cloud.Sql.V1beta4.BackupConfiguration.TransactionalLogStorageState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TRANSACTIONAL_LOG_STORAGE_STATE_UNSPECIFIED, 0
  field :DISK, 1
  field :SWITCHING_TO_CLOUD_STORAGE, 2
  field :SWITCHED_TO_CLOUD_STORAGE, 3
  field :CLOUD_STORAGE, 4
end

defmodule Google.Cloud.Sql.V1beta4.DatabaseInstance.SqlInstanceState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_INSTANCE_STATE_UNSPECIFIED, 0
  field :RUNNABLE, 1
  field :SUSPENDED, 2
  field :PENDING_DELETE, 3
  field :PENDING_CREATE, 4
  field :MAINTENANCE, 5
  field :FAILED, 6
  field :ONLINE_MAINTENANCE, 7
end

defmodule Google.Cloud.Sql.V1beta4.DatabaseInstance.SqlNetworkArchitecture do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_NETWORK_ARCHITECTURE_UNSPECIFIED, 0
  field :NEW_NETWORK_ARCHITECTURE, 1
  field :OLD_NETWORK_ARCHITECTURE, 2
end

defmodule Google.Cloud.Sql.V1beta4.DatabaseInstance.SqlOutOfDiskReport.SqlOutOfDiskState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_OUT_OF_DISK_STATE_UNSPECIFIED, 0
  field :NORMAL, 1
  field :SOFT_SHUTDOWN, 2
end

defmodule Google.Cloud.Sql.V1beta4.SqlExternalSyncSettingError.SqlExternalSyncSettingErrorType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
end

defmodule Google.Cloud.Sql.V1beta4.IpConfiguration.SslMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SSL_MODE_UNSPECIFIED, 0
  field :ALLOW_UNENCRYPTED_AND_ENCRYPTED, 1
  field :ENCRYPTED_ONLY, 2
  field :TRUSTED_CLIENT_CERTIFICATE_REQUIRED, 3
end

defmodule Google.Cloud.Sql.V1beta4.Operation.SqlOperationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_OPERATION_TYPE_UNSPECIFIED, 0
  field :IMPORT, 1
  field :EXPORT, 2
  field :CREATE, 3
  field :UPDATE, 4
  field :DELETE, 5
  field :RESTART, 6
  field :BACKUP, 7
  field :SNAPSHOT, 8
  field :BACKUP_VOLUME, 9
  field :DELETE_VOLUME, 10
  field :RESTORE_VOLUME, 11
  field :INJECT_USER, 12
  field :CLONE, 14
  field :STOP_REPLICA, 15
  field :START_REPLICA, 16
  field :PROMOTE_REPLICA, 17
  field :CREATE_REPLICA, 18
  field :CREATE_USER, 19
  field :DELETE_USER, 20
  field :UPDATE_USER, 21
  field :CREATE_DATABASE, 22
  field :DELETE_DATABASE, 23
  field :UPDATE_DATABASE, 24
  field :FAILOVER, 25
  field :DELETE_BACKUP, 26
  field :RECREATE_REPLICA, 27
  field :TRUNCATE_LOG, 28
  field :DEMOTE_MASTER, 29
  field :MAINTENANCE, 30
  field :ENABLE_PRIVATE_IP, 31
  field :DEFER_MAINTENANCE, 32
  field :CREATE_CLONE, 33
  field :RESCHEDULE_MAINTENANCE, 34
  field :START_EXTERNAL_SYNC, 35
  field :LOG_CLEANUP, 36
  field :AUTO_RESTART, 37
  field :REENCRYPT, 38
  field :SWITCHOVER, 39
  field :ACQUIRE_SSRS_LEASE, 42
  field :RELEASE_SSRS_LEASE, 43
  field :RECONFIGURE_OLD_PRIMARY, 44
  field :CLUSTER_MAINTENANCE, 45
  field :SELF_SERVICE_MAINTENANCE, 46
  field :SWITCHOVER_TO_REPLICA, 47
end

defmodule Google.Cloud.Sql.V1beta4.Operation.SqlOperationStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_OPERATION_STATUS_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :DONE, 3
end

defmodule Google.Cloud.Sql.V1beta4.PasswordValidationPolicy.Complexity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :COMPLEXITY_UNSPECIFIED, 0
  field :COMPLEXITY_DEFAULT, 1
end

defmodule Google.Cloud.Sql.V1beta4.Settings.SqlActivationPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_ACTIVATION_POLICY_UNSPECIFIED, 0
  field :ALWAYS, 1
  field :NEVER, 2
  field :ON_DEMAND, 3
end

defmodule Google.Cloud.Sql.V1beta4.Settings.Edition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :EDITION_UNSPECIFIED, 0
  field :ENTERPRISE, 2
  field :ENTERPRISE_PLUS, 3
end

defmodule Google.Cloud.Sql.V1beta4.Settings.ConnectorEnforcement do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONNECTOR_ENFORCEMENT_UNSPECIFIED, 0
  field :NOT_REQUIRED, 1
  field :REQUIRED, 2
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesRescheduleMaintenanceRequestBody.RescheduleType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RESCHEDULE_TYPE_UNSPECIFIED, 0
  field :IMMEDIATE, 1
  field :NEXT_AVAILABLE_WINDOW, 2
  field :SPECIFIC_TIME, 3
end

defmodule Google.Cloud.Sql.V1beta4.AclEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :value, 1, type: :string
  field :expiration_time, 2, type: Google.Protobuf.Timestamp, json_name: "expirationTime"
  field :name, 3, type: :string, deprecated: false
  field :kind, 4, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.ApiWarning do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :code, 1, type: Google.Cloud.Sql.V1beta4.ApiWarning.SqlApiWarningCode, enum: true
  field :message, 2, type: :string
  field :region, 3, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.BackupRetentionSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :retention_unit, 1,
    type: Google.Cloud.Sql.V1beta4.BackupRetentionSettings.RetentionUnit,
    json_name: "retentionUnit",
    enum: true

  field :retained_backups, 2, type: Google.Protobuf.Int32Value, json_name: "retainedBackups"
end

defmodule Google.Cloud.Sql.V1beta4.BackupConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_time, 1, type: :string, json_name: "startTime"
  field :enabled, 2, type: Google.Protobuf.BoolValue
  field :kind, 3, type: :string
  field :binary_log_enabled, 4, type: Google.Protobuf.BoolValue, json_name: "binaryLogEnabled"

  field :replication_log_archiving_enabled, 5,
    type: Google.Protobuf.BoolValue,
    json_name: "replicationLogArchivingEnabled"

  field :location, 6, type: :string

  field :point_in_time_recovery_enabled, 7,
    type: Google.Protobuf.BoolValue,
    json_name: "pointInTimeRecoveryEnabled"

  field :transaction_log_retention_days, 9,
    type: Google.Protobuf.Int32Value,
    json_name: "transactionLogRetentionDays"

  field :backup_retention_settings, 10,
    type: Google.Cloud.Sql.V1beta4.BackupRetentionSettings,
    json_name: "backupRetentionSettings"

  field :transactional_log_storage_state, 11,
    proto3_optional: true,
    type: Google.Cloud.Sql.V1beta4.BackupConfiguration.TransactionalLogStorageState,
    json_name: "transactionalLogStorageState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Sql.V1beta4.BackupRun do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :status, 2, type: Google.Cloud.Sql.V1beta4.SqlBackupRunStatus, enum: true
  field :enqueued_time, 3, type: Google.Protobuf.Timestamp, json_name: "enqueuedTime"
  field :id, 4, type: :int64
  field :start_time, 5, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 6, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :error, 7, type: Google.Cloud.Sql.V1beta4.OperationError
  field :type, 8, type: Google.Cloud.Sql.V1beta4.SqlBackupRunType, enum: true
  field :description, 9, type: :string
  field :window_start_time, 10, type: Google.Protobuf.Timestamp, json_name: "windowStartTime"
  field :instance, 11, type: :string
  field :self_link, 12, type: :string, json_name: "selfLink"
  field :location, 13, type: :string

  field :disk_encryption_configuration, 16,
    type: Google.Cloud.Sql.V1beta4.DiskEncryptionConfiguration,
    json_name: "diskEncryptionConfiguration"

  field :disk_encryption_status, 17,
    type: Google.Cloud.Sql.V1beta4.DiskEncryptionStatus,
    json_name: "diskEncryptionStatus"

  field :backup_kind, 19,
    type: Google.Cloud.Sql.V1beta4.SqlBackupKind,
    json_name: "backupKind",
    enum: true

  field :time_zone, 23, type: :string, json_name: "timeZone"
end

defmodule Google.Cloud.Sql.V1beta4.BackupRunsListResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :items, 2, repeated: true, type: Google.Cloud.Sql.V1beta4.BackupRun
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Sql.V1beta4.BinLogCoordinates do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :bin_log_file_name, 1, type: :string, json_name: "binLogFileName"
  field :bin_log_position, 2, type: :int64, json_name: "binLogPosition"
  field :kind, 3, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.BackupContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :backup_id, 1, type: :int64, json_name: "backupId"
  field :kind, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.CloneContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :pitr_timestamp_ms, 2, type: :int64, json_name: "pitrTimestampMs"
  field :destination_instance_name, 3, type: :string, json_name: "destinationInstanceName"

  field :bin_log_coordinates, 4,
    type: Google.Cloud.Sql.V1beta4.BinLogCoordinates,
    json_name: "binLogCoordinates"

  field :point_in_time, 5, type: Google.Protobuf.Timestamp, json_name: "pointInTime"
  field :allocated_ip_range, 6, type: :string, json_name: "allocatedIpRange"
  field :database_names, 9, repeated: true, type: :string, json_name: "databaseNames"

  field :preferred_zone, 10,
    proto3_optional: true,
    type: :string,
    json_name: "preferredZone",
    deprecated: false

  field :preferred_secondary_zone, 11,
    proto3_optional: true,
    type: :string,
    json_name: "preferredSecondaryZone",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1beta4.Database do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :database_details, 0

  field :kind, 1, type: :string
  field :charset, 2, type: :string
  field :collation, 3, type: :string
  field :etag, 4, type: :string
  field :name, 5, type: :string
  field :instance, 6, type: :string
  field :self_link, 7, type: :string, json_name: "selfLink"
  field :project, 8, type: :string

  field :sqlserver_database_details, 9,
    type: Google.Cloud.Sql.V1beta4.SqlServerDatabaseDetails,
    json_name: "sqlserverDatabaseDetails",
    oneof: 0
end

defmodule Google.Cloud.Sql.V1beta4.SqlServerDatabaseDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :compatibility_level, 1, type: :int32, json_name: "compatibilityLevel"
  field :recovery_model, 2, type: :string, json_name: "recoveryModel"
end

defmodule Google.Cloud.Sql.V1beta4.DatabaseFlags do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SyncFlags do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.InstanceReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :region, 2, type: :string
  field :project, 3, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.DatabaseInstance.SqlFailoverReplica do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :available, 2, type: Google.Protobuf.BoolValue
end

defmodule Google.Cloud.Sql.V1beta4.DatabaseInstance.SqlScheduledMaintenance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :can_defer, 2, type: :bool, json_name: "canDefer", deprecated: true
  field :can_reschedule, 3, type: :bool, json_name: "canReschedule"

  field :schedule_deadline_time, 4,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "scheduleDeadlineTime"
end

defmodule Google.Cloud.Sql.V1beta4.DatabaseInstance.SqlOutOfDiskReport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sql_out_of_disk_state, 1,
    proto3_optional: true,
    type: Google.Cloud.Sql.V1beta4.DatabaseInstance.SqlOutOfDiskReport.SqlOutOfDiskState,
    json_name: "sqlOutOfDiskState",
    enum: true

  field :sql_min_recommended_increase_size_gb, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "sqlMinRecommendedIncreaseSizeGb"
end

defmodule Google.Cloud.Sql.V1beta4.DatabaseInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :state, 2, type: Google.Cloud.Sql.V1beta4.DatabaseInstance.SqlInstanceState, enum: true

  field :database_version, 3,
    type: Google.Cloud.Sql.V1beta4.SqlDatabaseVersion,
    json_name: "databaseVersion",
    enum: true

  field :settings, 4, type: Google.Cloud.Sql.V1beta4.Settings
  field :etag, 5, type: :string

  field :failover_replica, 6,
    type: Google.Cloud.Sql.V1beta4.DatabaseInstance.SqlFailoverReplica,
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
    type: Google.Cloud.Sql.V1beta4.IpMapping,
    json_name: "ipAddresses"

  field :server_ca_cert, 12, type: Google.Cloud.Sql.V1beta4.SslCert, json_name: "serverCaCert"

  field :instance_type, 13,
    type: Google.Cloud.Sql.V1beta4.SqlInstanceType,
    json_name: "instanceType",
    enum: true

  field :project, 14, type: :string
  field :ipv6_address, 15, type: :string, json_name: "ipv6Address", deprecated: true
  field :service_account_email_address, 16, type: :string, json_name: "serviceAccountEmailAddress"

  field :on_premises_configuration, 17,
    type: Google.Cloud.Sql.V1beta4.OnPremisesConfiguration,
    json_name: "onPremisesConfiguration"

  field :replica_configuration, 18,
    type: Google.Cloud.Sql.V1beta4.ReplicaConfiguration,
    json_name: "replicaConfiguration"

  field :backend_type, 19,
    type: Google.Cloud.Sql.V1beta4.SqlBackendType,
    json_name: "backendType",
    enum: true

  field :self_link, 20, type: :string, json_name: "selfLink"

  field :suspension_reason, 21,
    repeated: true,
    type: Google.Cloud.Sql.V1beta4.SqlSuspensionReason,
    json_name: "suspensionReason",
    enum: true

  field :connection_name, 22, type: :string, json_name: "connectionName"
  field :name, 23, type: :string
  field :region, 24, type: :string
  field :gce_zone, 25, type: :string, json_name: "gceZone"
  field :secondary_gce_zone, 34, type: :string, json_name: "secondaryGceZone"

  field :disk_encryption_configuration, 26,
    type: Google.Cloud.Sql.V1beta4.DiskEncryptionConfiguration,
    json_name: "diskEncryptionConfiguration"

  field :disk_encryption_status, 27,
    type: Google.Cloud.Sql.V1beta4.DiskEncryptionStatus,
    json_name: "diskEncryptionStatus"

  field :root_password, 29, type: :string, json_name: "rootPassword"

  field :scheduled_maintenance, 30,
    type: Google.Cloud.Sql.V1beta4.DatabaseInstance.SqlScheduledMaintenance,
    json_name: "scheduledMaintenance"

  field :satisfies_pzs, 35, type: Google.Protobuf.BoolValue, json_name: "satisfiesPzs"

  field :database_installed_version, 40,
    type: :string,
    json_name: "databaseInstalledVersion",
    deprecated: false

  field :out_of_disk_report, 38,
    proto3_optional: true,
    type: Google.Cloud.Sql.V1beta4.DatabaseInstance.SqlOutOfDiskReport,
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
    type: Google.Cloud.Sql.V1beta4.AvailableDatabaseVersion,
    json_name: "upgradableDatabaseVersions",
    deprecated: false

  field :sql_network_architecture, 47,
    proto3_optional: true,
    type: Google.Cloud.Sql.V1beta4.DatabaseInstance.SqlNetworkArchitecture,
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
    proto3_optional: true,
    type: Google.Cloud.Sql.V1beta4.ReplicationCluster,
    json_name: "replicationCluster"

  field :gemini_config, 55,
    proto3_optional: true,
    type: Google.Cloud.Sql.V1beta4.GeminiInstanceConfig,
    json_name: "geminiConfig"
end

defmodule Google.Cloud.Sql.V1beta4.GeminiInstanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Cloud.Sql.V1beta4.ReplicationCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :psa_write_endpoint, 1,
    proto3_optional: true,
    type: :string,
    json_name: "psaWriteEndpoint",
    deprecated: false

  field :failover_dr_replica_name, 2,
    proto3_optional: true,
    type: :string,
    json_name: "failoverDrReplicaName",
    deprecated: false

  field :dr_replica, 4,
    proto3_optional: true,
    type: :bool,
    json_name: "drReplica",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1beta4.AvailableDatabaseVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :major_version, 3, proto3_optional: true, type: :string, json_name: "majorVersion"
  field :name, 8, proto3_optional: true, type: :string
  field :display_name, 9, proto3_optional: true, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Sql.V1beta4.DatabasesListResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :items, 2, repeated: true, type: Google.Cloud.Sql.V1beta4.Database
end

defmodule Google.Cloud.Sql.V1beta4.DemoteMasterConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string

  field :mysql_replica_configuration, 2,
    type: Google.Cloud.Sql.V1beta4.DemoteMasterMySqlReplicaConfiguration,
    json_name: "mysqlReplicaConfiguration"
end

defmodule Google.Cloud.Sql.V1beta4.DemoteMasterContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string

  field :verify_gtid_consistency, 2,
    type: Google.Protobuf.BoolValue,
    json_name: "verifyGtidConsistency"

  field :master_instance_name, 3, type: :string, json_name: "masterInstanceName"

  field :replica_configuration, 4,
    type: Google.Cloud.Sql.V1beta4.DemoteMasterConfiguration,
    json_name: "replicaConfiguration"

  field :skip_replication_setup, 5, type: :bool, json_name: "skipReplicationSetup"
end

defmodule Google.Cloud.Sql.V1beta4.DemoteMasterMySqlReplicaConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :username, 2, type: :string
  field :password, 3, type: :string
  field :client_key, 4, type: :string, json_name: "clientKey"
  field :client_certificate, 5, type: :string, json_name: "clientCertificate"
  field :ca_certificate, 6, type: :string, json_name: "caCertificate"
end

defmodule Google.Cloud.Sql.V1beta4.DemoteContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string

  field :source_representative_instance_name, 2,
    type: :string,
    json_name: "sourceRepresentativeInstanceName",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1beta4.ExportContext.SqlCsvExportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :select_query, 1, type: :string, json_name: "selectQuery"
  field :escape_character, 2, type: :string, json_name: "escapeCharacter"
  field :quote_character, 3, type: :string, json_name: "quoteCharacter"
  field :fields_terminated_by, 4, type: :string, json_name: "fieldsTerminatedBy"
  field :lines_terminated_by, 6, type: :string, json_name: "linesTerminatedBy"
end

defmodule Google.Cloud.Sql.V1beta4.ExportContext.SqlExportOptions.MysqlExportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :master_data, 1, type: Google.Protobuf.Int32Value, json_name: "masterData"
end

defmodule Google.Cloud.Sql.V1beta4.ExportContext.SqlExportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tables, 1, repeated: true, type: :string
  field :schema_only, 2, type: Google.Protobuf.BoolValue, json_name: "schemaOnly"

  field :mysql_export_options, 3,
    type: Google.Cloud.Sql.V1beta4.ExportContext.SqlExportOptions.MysqlExportOptions,
    json_name: "mysqlExportOptions"

  field :threads, 4, type: Google.Protobuf.Int32Value, deprecated: false
  field :parallel, 5, type: Google.Protobuf.BoolValue, deprecated: false
end

defmodule Google.Cloud.Sql.V1beta4.ExportContext.SqlBakExportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :striped, 1, type: Google.Protobuf.BoolValue
  field :stripe_count, 2, type: Google.Protobuf.Int32Value, json_name: "stripeCount"
  field :bak_type, 4, type: Google.Cloud.Sql.V1beta4.BakType, json_name: "bakType", enum: true
  field :copy_only, 5, type: Google.Protobuf.BoolValue, json_name: "copyOnly", deprecated: true
  field :differential_base, 6, type: Google.Protobuf.BoolValue, json_name: "differentialBase"
end

defmodule Google.Cloud.Sql.V1beta4.ExportContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uri, 1, type: :string
  field :databases, 2, repeated: true, type: :string
  field :kind, 3, type: :string

  field :sql_export_options, 4,
    type: Google.Cloud.Sql.V1beta4.ExportContext.SqlExportOptions,
    json_name: "sqlExportOptions"

  field :csv_export_options, 5,
    type: Google.Cloud.Sql.V1beta4.ExportContext.SqlCsvExportOptions,
    json_name: "csvExportOptions"

  field :file_type, 6,
    type: Google.Cloud.Sql.V1beta4.SqlFileType,
    json_name: "fileType",
    enum: true

  field :offload, 8, type: Google.Protobuf.BoolValue

  field :bak_export_options, 9,
    type: Google.Cloud.Sql.V1beta4.ExportContext.SqlBakExportOptions,
    json_name: "bakExportOptions"
end

defmodule Google.Cloud.Sql.V1beta4.FailoverContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :settings_version, 1, type: :int64, json_name: "settingsVersion"
  field :kind, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.Flag do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: Google.Cloud.Sql.V1beta4.SqlFlagType, enum: true

  field :applies_to, 3,
    repeated: true,
    type: Google.Cloud.Sql.V1beta4.SqlDatabaseVersion,
    json_name: "appliesTo",
    enum: true

  field :allowed_string_values, 4, repeated: true, type: :string, json_name: "allowedStringValues"
  field :min_value, 5, type: Google.Protobuf.Int64Value, json_name: "minValue"
  field :max_value, 6, type: Google.Protobuf.Int64Value, json_name: "maxValue"
  field :requires_restart, 7, type: Google.Protobuf.BoolValue, json_name: "requiresRestart"
  field :kind, 8, type: :string
  field :in_beta, 9, type: Google.Protobuf.BoolValue, json_name: "inBeta"
  field :allowed_int_values, 10, repeated: true, type: :int64, json_name: "allowedIntValues"
end

defmodule Google.Cloud.Sql.V1beta4.FlagsListResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :items, 2, repeated: true, type: Google.Cloud.Sql.V1beta4.Flag
end

defmodule Google.Cloud.Sql.V1beta4.ImportContext.SqlImportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :threads, 1, type: Google.Protobuf.Int32Value, deprecated: false
  field :parallel, 2, type: Google.Protobuf.BoolValue, deprecated: false
end

defmodule Google.Cloud.Sql.V1beta4.ImportContext.SqlCsvImportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :table, 1, type: :string
  field :columns, 2, repeated: true, type: :string
  field :escape_character, 4, type: :string, json_name: "escapeCharacter"
  field :quote_character, 5, type: :string, json_name: "quoteCharacter"
  field :fields_terminated_by, 6, type: :string, json_name: "fieldsTerminatedBy"
  field :lines_terminated_by, 8, type: :string, json_name: "linesTerminatedBy"
end

defmodule Google.Cloud.Sql.V1beta4.ImportContext.SqlBakImportOptions.EncryptionOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cert_path, 1, type: :string, json_name: "certPath"
  field :pvk_path, 2, type: :string, json_name: "pvkPath"
  field :pvk_password, 3, type: :string, json_name: "pvkPassword"
end

defmodule Google.Cloud.Sql.V1beta4.ImportContext.SqlBakImportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :encryption_options, 1,
    type: Google.Cloud.Sql.V1beta4.ImportContext.SqlBakImportOptions.EncryptionOptions,
    json_name: "encryptionOptions"

  field :striped, 2, type: Google.Protobuf.BoolValue
  field :no_recovery, 4, type: Google.Protobuf.BoolValue, json_name: "noRecovery"
  field :recovery_only, 5, type: Google.Protobuf.BoolValue, json_name: "recoveryOnly"
  field :bak_type, 6, type: Google.Cloud.Sql.V1beta4.BakType, json_name: "bakType", enum: true
  field :stop_at, 7, type: Google.Protobuf.Timestamp, json_name: "stopAt", deprecated: false
  field :stop_at_mark, 8, type: :string, json_name: "stopAtMark", deprecated: false
end

defmodule Google.Cloud.Sql.V1beta4.ImportContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uri, 1, type: :string
  field :database, 2, type: :string
  field :kind, 3, type: :string

  field :file_type, 4,
    type: Google.Cloud.Sql.V1beta4.SqlFileType,
    json_name: "fileType",
    enum: true

  field :csv_import_options, 5,
    type: Google.Cloud.Sql.V1beta4.ImportContext.SqlCsvImportOptions,
    json_name: "csvImportOptions"

  field :import_user, 6, type: :string, json_name: "importUser"

  field :bak_import_options, 7,
    type: Google.Cloud.Sql.V1beta4.ImportContext.SqlBakImportOptions,
    json_name: "bakImportOptions"

  field :sql_import_options, 8,
    type: Google.Cloud.Sql.V1beta4.ImportContext.SqlImportOptions,
    json_name: "sqlImportOptions",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1beta4.InstancesCloneRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :clone_context, 1, type: Google.Cloud.Sql.V1beta4.CloneContext, json_name: "cloneContext"
end

defmodule Google.Cloud.Sql.V1beta4.InstancesDemoteMasterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :demote_master_context, 1,
    type: Google.Cloud.Sql.V1beta4.DemoteMasterContext,
    json_name: "demoteMasterContext"
end

defmodule Google.Cloud.Sql.V1beta4.InstancesDemoteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :demote_context, 1,
    type: Google.Cloud.Sql.V1beta4.DemoteContext,
    json_name: "demoteContext",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1beta4.InstancesExportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :export_context, 1,
    type: Google.Cloud.Sql.V1beta4.ExportContext,
    json_name: "exportContext"
end

defmodule Google.Cloud.Sql.V1beta4.InstancesFailoverRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :failover_context, 1,
    type: Google.Cloud.Sql.V1beta4.FailoverContext,
    json_name: "failoverContext"
end

defmodule Google.Cloud.Sql.V1beta4.InstancesImportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :import_context, 1,
    type: Google.Cloud.Sql.V1beta4.ImportContext,
    json_name: "importContext"
end

defmodule Google.Cloud.Sql.V1beta4.MySqlSyncConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :initial_sync_flags, 1,
    repeated: true,
    type: Google.Cloud.Sql.V1beta4.SyncFlags,
    json_name: "initialSyncFlags"
end

defmodule Google.Cloud.Sql.V1beta4.InstancesListResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :warnings, 2, repeated: true, type: Google.Cloud.Sql.V1beta4.ApiWarning
  field :items, 3, repeated: true, type: Google.Cloud.Sql.V1beta4.DatabaseInstance
  field :next_page_token, 4, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Sql.V1beta4.InstancesListServerCasResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :certs, 1, repeated: true, type: Google.Cloud.Sql.V1beta4.SslCert
  field :active_version, 2, type: :string, json_name: "activeVersion"
  field :kind, 3, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.InstancesRestoreBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :restore_backup_context, 1,
    type: Google.Cloud.Sql.V1beta4.RestoreBackupContext,
    json_name: "restoreBackupContext"
end

defmodule Google.Cloud.Sql.V1beta4.InstancesRotateServerCaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rotate_server_ca_context, 1,
    type: Google.Cloud.Sql.V1beta4.RotateServerCaContext,
    json_name: "rotateServerCaContext"
end

defmodule Google.Cloud.Sql.V1beta4.InstancesTruncateLogRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :truncate_log_context, 1,
    type: Google.Cloud.Sql.V1beta4.TruncateLogContext,
    json_name: "truncateLogContext"
end

defmodule Google.Cloud.Sql.V1beta4.InstancesAcquireSsrsLeaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :acquire_ssrs_lease_context, 1,
    type: Google.Cloud.Sql.V1beta4.AcquireSsrsLeaseContext,
    json_name: "acquireSsrsLeaseContext"
end

defmodule Google.Cloud.Sql.V1beta4.PerformDiskShrinkContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :target_size_gb, 1, type: :int64, json_name: "targetSizeGb"
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesGetDiskShrinkConfigResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :minimal_target_size_gb, 2, type: :int64, json_name: "minimalTargetSizeGb"
  field :message, 3, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesVerifyExternalSyncSettingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :errors, 2, repeated: true, type: Google.Cloud.Sql.V1beta4.SqlExternalSyncSettingError
  field :warnings, 3, repeated: true, type: Google.Cloud.Sql.V1beta4.SqlExternalSyncSettingError
end

defmodule Google.Cloud.Sql.V1beta4.SqlExternalSyncSettingError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string

  field :type, 2,
    type: Google.Cloud.Sql.V1beta4.SqlExternalSyncSettingError.SqlExternalSyncSettingErrorType,
    enum: true

  field :detail, 3, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.IpConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ipv4_enabled, 1, type: Google.Protobuf.BoolValue, json_name: "ipv4Enabled"
  field :private_network, 2, type: :string, json_name: "privateNetwork"
  field :require_ssl, 3, type: Google.Protobuf.BoolValue, json_name: "requireSsl"

  field :authorized_networks, 4,
    repeated: true,
    type: Google.Cloud.Sql.V1beta4.AclEntry,
    json_name: "authorizedNetworks"

  field :allocated_ip_range, 6, type: :string, json_name: "allocatedIpRange"

  field :enable_private_path_for_google_cloud_services, 7,
    type: Google.Protobuf.BoolValue,
    json_name: "enablePrivatePathForGoogleCloudServices"

  field :ssl_mode, 8,
    type: Google.Cloud.Sql.V1beta4.IpConfiguration.SslMode,
    json_name: "sslMode",
    enum: true

  field :psc_config, 9,
    proto3_optional: true,
    type: Google.Cloud.Sql.V1beta4.PscConfig,
    json_name: "pscConfig"
end

defmodule Google.Cloud.Sql.V1beta4.PscConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :psc_enabled, 1, proto3_optional: true, type: :bool, json_name: "pscEnabled"

  field :allowed_consumer_projects, 2,
    repeated: true,
    type: :string,
    json_name: "allowedConsumerProjects",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1beta4.IpMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1, type: Google.Cloud.Sql.V1beta4.SqlIpAddressType, enum: true
  field :ip_address, 2, type: :string, json_name: "ipAddress"
  field :time_to_retire, 3, type: Google.Protobuf.Timestamp, json_name: "timeToRetire"
end

defmodule Google.Cloud.Sql.V1beta4.LocationPreference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :follow_gae_application, 1,
    type: :string,
    json_name: "followGaeApplication",
    deprecated: true

  field :zone, 2, type: :string
  field :secondary_zone, 4, type: :string, json_name: "secondaryZone"
  field :kind, 3, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.MaintenanceWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :hour, 1, type: Google.Protobuf.Int32Value
  field :day, 2, type: Google.Protobuf.Int32Value

  field :update_track, 3,
    type: Google.Cloud.Sql.V1beta4.SqlUpdateTrack,
    json_name: "updateTrack",
    enum: true

  field :kind, 4, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.DenyMaintenancePeriod do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_date, 1, type: :string, json_name: "startDate"
  field :end_date, 2, type: :string, json_name: "endDate"
  field :time, 3, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.InsightsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :query_insights_enabled, 1, type: :bool, json_name: "queryInsightsEnabled"
  field :record_client_address, 2, type: :bool, json_name: "recordClientAddress"
  field :record_application_tags, 3, type: :bool, json_name: "recordApplicationTags"
  field :query_string_length, 4, type: Google.Protobuf.Int32Value, json_name: "queryStringLength"

  field :query_plans_per_minute, 5,
    type: Google.Protobuf.Int32Value,
    json_name: "queryPlansPerMinute"
end

defmodule Google.Cloud.Sql.V1beta4.MySqlReplicaConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dump_file_path, 1, type: :string, json_name: "dumpFilePath"
  field :username, 2, type: :string
  field :password, 3, type: :string

  field :connect_retry_interval, 4,
    type: Google.Protobuf.Int32Value,
    json_name: "connectRetryInterval"

  field :master_heartbeat_period, 5,
    type: Google.Protobuf.Int64Value,
    json_name: "masterHeartbeatPeriod"

  field :ca_certificate, 6, type: :string, json_name: "caCertificate"
  field :client_certificate, 7, type: :string, json_name: "clientCertificate"
  field :client_key, 8, type: :string, json_name: "clientKey"
  field :ssl_cipher, 9, type: :string, json_name: "sslCipher"

  field :verify_server_certificate, 10,
    type: Google.Protobuf.BoolValue,
    json_name: "verifyServerCertificate"

  field :kind, 11, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.OnPremisesConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :host_port, 1, type: :string, json_name: "hostPort"
  field :kind, 2, type: :string
  field :username, 3, type: :string
  field :password, 4, type: :string
  field :ca_certificate, 5, type: :string, json_name: "caCertificate"
  field :client_certificate, 6, type: :string, json_name: "clientCertificate"
  field :client_key, 7, type: :string, json_name: "clientKey"
  field :dump_file_path, 8, type: :string, json_name: "dumpFilePath"

  field :source_instance, 15,
    type: Google.Cloud.Sql.V1beta4.InstanceReference,
    json_name: "sourceInstance"
end

defmodule Google.Cloud.Sql.V1beta4.DiskEncryptionConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kms_key_name, 1, type: :string, json_name: "kmsKeyName"
  field :kind, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.DiskEncryptionStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kms_key_version_name, 1, type: :string, json_name: "kmsKeyVersionName"
  field :kind, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.Operation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :target_link, 2, type: :string, json_name: "targetLink"
  field :status, 3, type: Google.Cloud.Sql.V1beta4.Operation.SqlOperationStatus, enum: true
  field :user, 4, type: :string
  field :insert_time, 5, type: Google.Protobuf.Timestamp, json_name: "insertTime"
  field :start_time, 6, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 7, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :error, 8, type: Google.Cloud.Sql.V1beta4.OperationErrors
  field :api_warning, 19, type: Google.Cloud.Sql.V1beta4.ApiWarning, json_name: "apiWarning"

  field :operation_type, 9,
    type: Google.Cloud.Sql.V1beta4.Operation.SqlOperationType,
    json_name: "operationType",
    enum: true

  field :import_context, 10,
    type: Google.Cloud.Sql.V1beta4.ImportContext,
    json_name: "importContext"

  field :export_context, 11,
    type: Google.Cloud.Sql.V1beta4.ExportContext,
    json_name: "exportContext"

  field :backup_context, 17,
    type: Google.Cloud.Sql.V1beta4.BackupContext,
    json_name: "backupContext"

  field :name, 12, type: :string
  field :target_id, 13, type: :string, json_name: "targetId"
  field :self_link, 14, type: :string, json_name: "selfLink"
  field :target_project, 15, type: :string, json_name: "targetProject"

  field :acquire_ssrs_lease_context, 20,
    type: Google.Cloud.Sql.V1beta4.AcquireSsrsLeaseContext,
    json_name: "acquireSsrsLeaseContext"
end

defmodule Google.Cloud.Sql.V1beta4.OperationError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :code, 2, type: :string
  field :message, 3, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.OperationErrors do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :errors, 2, repeated: true, type: Google.Cloud.Sql.V1beta4.OperationError
end

defmodule Google.Cloud.Sql.V1beta4.PasswordValidationPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :min_length, 1, type: Google.Protobuf.Int32Value, json_name: "minLength"

  field :complexity, 2,
    type: Google.Cloud.Sql.V1beta4.PasswordValidationPolicy.Complexity,
    enum: true

  field :reuse_interval, 3, type: Google.Protobuf.Int32Value, json_name: "reuseInterval"

  field :disallow_username_substring, 4,
    type: Google.Protobuf.BoolValue,
    json_name: "disallowUsernameSubstring"

  field :password_change_interval, 5,
    type: Google.Protobuf.Duration,
    json_name: "passwordChangeInterval"

  field :enable_password_policy, 6,
    type: Google.Protobuf.BoolValue,
    json_name: "enablePasswordPolicy"

  field :disallow_compromised_credentials, 7,
    type: Google.Protobuf.BoolValue,
    json_name: "disallowCompromisedCredentials",
    deprecated: true
end

defmodule Google.Cloud.Sql.V1beta4.OperationsListResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :items, 2, repeated: true, type: Google.Cloud.Sql.V1beta4.Operation
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Sql.V1beta4.ReplicaConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string

  field :mysql_replica_configuration, 2,
    type: Google.Cloud.Sql.V1beta4.MySqlReplicaConfiguration,
    json_name: "mysqlReplicaConfiguration"

  field :failover_target, 3, type: Google.Protobuf.BoolValue, json_name: "failoverTarget"

  field :cascadable_replica, 5,
    type: Google.Protobuf.BoolValue,
    json_name: "cascadableReplica",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1beta4.RestoreBackupContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :backup_run_id, 2, type: :int64, json_name: "backupRunId"
  field :instance_id, 3, type: :string, json_name: "instanceId"
  field :project, 4, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.RotateServerCaContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :next_version, 2, type: :string, json_name: "nextVersion"
end

defmodule Google.Cloud.Sql.V1beta4.DataCacheConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :data_cache_enabled, 1, type: :bool, json_name: "dataCacheEnabled"
end

defmodule Google.Cloud.Sql.V1beta4.Settings.UserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.Settings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :settings_version, 1, type: Google.Protobuf.Int64Value, json_name: "settingsVersion"

  field :authorized_gae_applications, 2,
    repeated: true,
    type: :string,
    json_name: "authorizedGaeApplications",
    deprecated: true

  field :tier, 3, type: :string
  field :kind, 4, type: :string

  field :user_labels, 5,
    repeated: true,
    type: Google.Cloud.Sql.V1beta4.Settings.UserLabelsEntry,
    json_name: "userLabels",
    map: true

  field :availability_type, 6,
    type: Google.Cloud.Sql.V1beta4.SqlAvailabilityType,
    json_name: "availabilityType",
    enum: true

  field :pricing_plan, 7,
    type: Google.Cloud.Sql.V1beta4.SqlPricingPlan,
    json_name: "pricingPlan",
    enum: true

  field :replication_type, 8,
    type: Google.Cloud.Sql.V1beta4.SqlReplicationType,
    json_name: "replicationType",
    enum: true,
    deprecated: true

  field :storage_auto_resize_limit, 9,
    type: Google.Protobuf.Int64Value,
    json_name: "storageAutoResizeLimit"

  field :activation_policy, 10,
    type: Google.Cloud.Sql.V1beta4.Settings.SqlActivationPolicy,
    json_name: "activationPolicy",
    enum: true

  field :ip_configuration, 11,
    type: Google.Cloud.Sql.V1beta4.IpConfiguration,
    json_name: "ipConfiguration"

  field :storage_auto_resize, 12, type: Google.Protobuf.BoolValue, json_name: "storageAutoResize"

  field :location_preference, 13,
    type: Google.Cloud.Sql.V1beta4.LocationPreference,
    json_name: "locationPreference"

  field :database_flags, 14,
    repeated: true,
    type: Google.Cloud.Sql.V1beta4.DatabaseFlags,
    json_name: "databaseFlags"

  field :data_disk_type, 15,
    type: Google.Cloud.Sql.V1beta4.SqlDataDiskType,
    json_name: "dataDiskType",
    enum: true

  field :maintenance_window, 16,
    type: Google.Cloud.Sql.V1beta4.MaintenanceWindow,
    json_name: "maintenanceWindow"

  field :backup_configuration, 17,
    type: Google.Cloud.Sql.V1beta4.BackupConfiguration,
    json_name: "backupConfiguration"

  field :database_replication_enabled, 18,
    type: Google.Protobuf.BoolValue,
    json_name: "databaseReplicationEnabled"

  field :crash_safe_replication_enabled, 19,
    type: Google.Protobuf.BoolValue,
    json_name: "crashSafeReplicationEnabled",
    deprecated: true

  field :data_disk_size_gb, 20, type: Google.Protobuf.Int64Value, json_name: "dataDiskSizeGb"

  field :active_directory_config, 22,
    type: Google.Cloud.Sql.V1beta4.SqlActiveDirectoryConfig,
    json_name: "activeDirectoryConfig"

  field :collation, 23, type: :string

  field :deny_maintenance_periods, 24,
    repeated: true,
    type: Google.Cloud.Sql.V1beta4.DenyMaintenancePeriod,
    json_name: "denyMaintenancePeriods"

  field :insights_config, 25,
    type: Google.Cloud.Sql.V1beta4.InsightsConfig,
    json_name: "insightsConfig"

  field :password_validation_policy, 27,
    type: Google.Cloud.Sql.V1beta4.PasswordValidationPolicy,
    json_name: "passwordValidationPolicy"

  field :sql_server_audit_config, 29,
    type: Google.Cloud.Sql.V1beta4.SqlServerAuditConfig,
    json_name: "sqlServerAuditConfig"

  field :edition, 38,
    type: Google.Cloud.Sql.V1beta4.Settings.Edition,
    enum: true,
    deprecated: false

  field :connector_enforcement, 32,
    type: Google.Cloud.Sql.V1beta4.Settings.ConnectorEnforcement,
    json_name: "connectorEnforcement",
    enum: true

  field :deletion_protection_enabled, 33,
    type: Google.Protobuf.BoolValue,
    json_name: "deletionProtectionEnabled"

  field :time_zone, 34, type: :string, json_name: "timeZone"

  field :advanced_machine_features, 35,
    type: Google.Cloud.Sql.V1beta4.AdvancedMachineFeatures,
    json_name: "advancedMachineFeatures"

  field :data_cache_config, 37,
    type: Google.Cloud.Sql.V1beta4.DataCacheConfig,
    json_name: "dataCacheConfig"

  field :enable_google_ml_integration, 40,
    type: Google.Protobuf.BoolValue,
    json_name: "enableGoogleMlIntegration",
    deprecated: false

  field :enable_dataplex_integration, 41,
    type: Google.Protobuf.BoolValue,
    json_name: "enableDataplexIntegration",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1beta4.AdvancedMachineFeatures do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :threads_per_core, 1, type: :int32, json_name: "threadsPerCore"
end

defmodule Google.Cloud.Sql.V1beta4.SslCert do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :cert_serial_number, 2, type: :string, json_name: "certSerialNumber"
  field :cert, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :common_name, 5, type: :string, json_name: "commonName"
  field :expiration_time, 6, type: Google.Protobuf.Timestamp, json_name: "expirationTime"
  field :sha1_fingerprint, 7, type: :string, json_name: "sha1Fingerprint"
  field :instance, 8, type: :string
  field :self_link, 9, type: :string, json_name: "selfLink"
end

defmodule Google.Cloud.Sql.V1beta4.SslCertDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cert_info, 1, type: Google.Cloud.Sql.V1beta4.SslCert, json_name: "certInfo"
  field :cert_private_key, 2, type: :string, json_name: "certPrivateKey"
end

defmodule Google.Cloud.Sql.V1beta4.SslCertsCreateEphemeralRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :public_key, 1, type: :string, json_name: "publicKey"
  field :access_token, 2, type: :string, json_name: "accessToken"
end

defmodule Google.Cloud.Sql.V1beta4.SslCertsInsertRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :common_name, 1, type: :string, json_name: "commonName"
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesRescheduleMaintenanceRequestBody.Reschedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :reschedule_type, 1,
    type: Google.Cloud.Sql.V1beta4.SqlInstancesRescheduleMaintenanceRequestBody.RescheduleType,
    json_name: "rescheduleType",
    enum: true

  field :schedule_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "scheduleTime",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesRescheduleMaintenanceRequestBody do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :reschedule, 3,
    type: Google.Cloud.Sql.V1beta4.SqlInstancesRescheduleMaintenanceRequestBody.Reschedule
end

defmodule Google.Cloud.Sql.V1beta4.SslCertsInsertResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :operation, 2, type: Google.Cloud.Sql.V1beta4.Operation
  field :server_ca_cert, 3, type: Google.Cloud.Sql.V1beta4.SslCert, json_name: "serverCaCert"
  field :client_cert, 4, type: Google.Cloud.Sql.V1beta4.SslCertDetail, json_name: "clientCert"
end

defmodule Google.Cloud.Sql.V1beta4.SslCertsListResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :items, 2, repeated: true, type: Google.Cloud.Sql.V1beta4.SslCert
end

defmodule Google.Cloud.Sql.V1beta4.TruncateLogContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :log_type, 2, type: :string, json_name: "logType"
end

defmodule Google.Cloud.Sql.V1beta4.SqlActiveDirectoryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :domain, 2, type: :string
end

defmodule Google.Cloud.Sql.V1beta4.SqlServerAuditConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :bucket, 2, type: :string
  field :retention_interval, 3, type: Google.Protobuf.Duration, json_name: "retentionInterval"
  field :upload_interval, 4, type: Google.Protobuf.Duration, json_name: "uploadInterval"
end

defmodule Google.Cloud.Sql.V1beta4.AcquireSsrsLeaseContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :setup_login, 1, proto3_optional: true, type: :string, json_name: "setupLogin"
  field :service_login, 2, proto3_optional: true, type: :string, json_name: "serviceLogin"
  field :report_database, 3, proto3_optional: true, type: :string, json_name: "reportDatabase"
  field :duration, 4, proto3_optional: true, type: Google.Protobuf.Duration
end
