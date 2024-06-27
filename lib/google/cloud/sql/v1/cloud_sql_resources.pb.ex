defmodule Google.Cloud.Sql.V1.SqlFileType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SQL_FILE_TYPE_UNSPECIFIED, 0
  field :SQL, 1
  field :CSV, 2
  field :BAK, 4
end

defmodule Google.Cloud.Sql.V1.BakType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :BAK_TYPE_UNSPECIFIED, 0
  field :FULL, 1
  field :DIFF, 2
  field :TLOG, 3
end

defmodule Google.Cloud.Sql.V1.SqlBackendType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SQL_BACKEND_TYPE_UNSPECIFIED, 0
  field :FIRST_GEN, 1
  field :SECOND_GEN, 2
  field :EXTERNAL, 3
end

defmodule Google.Cloud.Sql.V1.SqlIpAddressType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SQL_IP_ADDRESS_TYPE_UNSPECIFIED, 0
  field :PRIMARY, 1
  field :OUTGOING, 2
  field :PRIVATE, 3
  field :MIGRATED_1ST_GEN, 4
end

defmodule Google.Cloud.Sql.V1.SqlDatabaseVersion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Cloud.Sql.V1.SqlPricingPlan do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SQL_PRICING_PLAN_UNSPECIFIED, 0
  field :PACKAGE, 1
  field :PER_USE, 2
end

defmodule Google.Cloud.Sql.V1.SqlReplicationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SQL_REPLICATION_TYPE_UNSPECIFIED, 0
  field :SYNCHRONOUS, 1
  field :ASYNCHRONOUS, 2
end

defmodule Google.Cloud.Sql.V1.SqlDataDiskType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SQL_DATA_DISK_TYPE_UNSPECIFIED, 0
  field :PD_SSD, 1
  field :PD_HDD, 2
  field :OBSOLETE_LOCAL_SSD, 3
end

defmodule Google.Cloud.Sql.V1.SqlAvailabilityType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SQL_AVAILABILITY_TYPE_UNSPECIFIED, 0
  field :ZONAL, 1
  field :REGIONAL, 2
end

defmodule Google.Cloud.Sql.V1.SqlUpdateTrack do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SQL_UPDATE_TRACK_UNSPECIFIED, 0
  field :canary, 1
  field :stable, 2
  field :week5, 3
end

defmodule Google.Cloud.Sql.V1.ApiWarning.SqlApiWarningCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SQL_API_WARNING_CODE_UNSPECIFIED, 0
  field :REGION_UNREACHABLE, 1
  field :MAX_RESULTS_EXCEEDS_LIMIT, 2
  field :COMPROMISED_CREDENTIALS, 3
  field :INTERNAL_STATE_FAILURE, 4
end

defmodule Google.Cloud.Sql.V1.BackupRetentionSettings.RetentionUnit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RETENTION_UNIT_UNSPECIFIED, 0
  field :COUNT, 1
end

defmodule Google.Cloud.Sql.V1.BackupConfiguration.TransactionalLogStorageState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TRANSACTIONAL_LOG_STORAGE_STATE_UNSPECIFIED, 0
  field :DISK, 1
  field :SWITCHING_TO_CLOUD_STORAGE, 2
  field :SWITCHED_TO_CLOUD_STORAGE, 3
  field :CLOUD_STORAGE, 4
end

defmodule Google.Cloud.Sql.V1.IpConfiguration.SslMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SSL_MODE_UNSPECIFIED, 0
  field :ALLOW_UNENCRYPTED_AND_ENCRYPTED, 1
  field :ENCRYPTED_ONLY, 2
  field :TRUSTED_CLIENT_CERTIFICATE_REQUIRED, 3
end

defmodule Google.Cloud.Sql.V1.Operation.SqlOperationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Cloud.Sql.V1.Operation.SqlOperationStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SQL_OPERATION_STATUS_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :DONE, 3
end

defmodule Google.Cloud.Sql.V1.PasswordValidationPolicy.Complexity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :COMPLEXITY_UNSPECIFIED, 0
  field :COMPLEXITY_DEFAULT, 1
end

defmodule Google.Cloud.Sql.V1.Settings.SqlActivationPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SQL_ACTIVATION_POLICY_UNSPECIFIED, 0
  field :ALWAYS, 1
  field :NEVER, 2
  field :ON_DEMAND, 3
end

defmodule Google.Cloud.Sql.V1.Settings.Edition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :EDITION_UNSPECIFIED, 0
  field :ENTERPRISE, 2
  field :ENTERPRISE_PLUS, 3
end

defmodule Google.Cloud.Sql.V1.Settings.ConnectorEnforcement do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CONNECTOR_ENFORCEMENT_UNSPECIFIED, 0
  field :NOT_REQUIRED, 1
  field :REQUIRED, 2
end

defmodule Google.Cloud.Sql.V1.AclEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :value, 1, type: :string
  field :expiration_time, 2, type: Google.Protobuf.Timestamp, json_name: "expirationTime"
  field :name, 3, type: :string, deprecated: false
  field :kind, 4, type: :string
end

defmodule Google.Cloud.Sql.V1.ApiWarning do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :code, 1, type: Google.Cloud.Sql.V1.ApiWarning.SqlApiWarningCode, enum: true
  field :message, 2, type: :string
  field :region, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.BackupRetentionSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :retention_unit, 1,
    type: Google.Cloud.Sql.V1.BackupRetentionSettings.RetentionUnit,
    json_name: "retentionUnit",
    enum: true

  field :retained_backups, 2, type: Google.Protobuf.Int32Value, json_name: "retainedBackups"
end

defmodule Google.Cloud.Sql.V1.BackupConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  field :backup_retention_settings, 8,
    type: Google.Cloud.Sql.V1.BackupRetentionSettings,
    json_name: "backupRetentionSettings"

  field :transaction_log_retention_days, 9,
    type: Google.Protobuf.Int32Value,
    json_name: "transactionLogRetentionDays"

  field :transactional_log_storage_state, 10,
    proto3_optional: true,
    type: Google.Cloud.Sql.V1.BackupConfiguration.TransactionalLogStorageState,
    json_name: "transactionalLogStorageState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Sql.V1.PerformDiskShrinkContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target_size_gb, 1, type: :int64, json_name: "targetSizeGb"
end

defmodule Google.Cloud.Sql.V1.BackupContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backup_id, 1, type: :int64, json_name: "backupId"
  field :kind, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.Database do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
    type: Google.Cloud.Sql.V1.SqlServerDatabaseDetails,
    json_name: "sqlserverDatabaseDetails",
    oneof: 0
end

defmodule Google.Cloud.Sql.V1.SqlServerDatabaseDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :compatibility_level, 1, type: :int32, json_name: "compatibilityLevel"
  field :recovery_model, 2, type: :string, json_name: "recoveryModel"
end

defmodule Google.Cloud.Sql.V1.DatabaseFlags do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.MySqlSyncConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :initial_sync_flags, 1,
    repeated: true,
    type: Google.Cloud.Sql.V1.SyncFlags,
    json_name: "initialSyncFlags"
end

defmodule Google.Cloud.Sql.V1.SyncFlags do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.InstanceReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :region, 2, type: :string
  field :project, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.DemoteMasterConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :kind, 1, type: :string

  field :mysql_replica_configuration, 2,
    type: Google.Cloud.Sql.V1.DemoteMasterMySqlReplicaConfiguration,
    json_name: "mysqlReplicaConfiguration"
end

defmodule Google.Cloud.Sql.V1.DemoteMasterMySqlReplicaConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :kind, 1, type: :string
  field :username, 2, type: :string
  field :password, 3, type: :string
  field :client_key, 4, type: :string, json_name: "clientKey"
  field :client_certificate, 5, type: :string, json_name: "clientCertificate"
  field :ca_certificate, 6, type: :string, json_name: "caCertificate"
end

defmodule Google.Cloud.Sql.V1.ExportContext.SqlCsvExportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :select_query, 1, type: :string, json_name: "selectQuery"
  field :escape_character, 2, type: :string, json_name: "escapeCharacter"
  field :quote_character, 3, type: :string, json_name: "quoteCharacter"
  field :fields_terminated_by, 4, type: :string, json_name: "fieldsTerminatedBy"
  field :lines_terminated_by, 6, type: :string, json_name: "linesTerminatedBy"
end

defmodule Google.Cloud.Sql.V1.ExportContext.SqlExportOptions.MysqlExportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :master_data, 1, type: Google.Protobuf.Int32Value, json_name: "masterData"
end

defmodule Google.Cloud.Sql.V1.ExportContext.SqlExportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tables, 1, repeated: true, type: :string
  field :schema_only, 2, type: Google.Protobuf.BoolValue, json_name: "schemaOnly"

  field :mysql_export_options, 3,
    type: Google.Cloud.Sql.V1.ExportContext.SqlExportOptions.MysqlExportOptions,
    json_name: "mysqlExportOptions"

  field :threads, 4, type: Google.Protobuf.Int32Value, deprecated: false
  field :parallel, 5, type: Google.Protobuf.BoolValue, deprecated: false
end

defmodule Google.Cloud.Sql.V1.ExportContext.SqlBakExportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :striped, 1, type: Google.Protobuf.BoolValue
  field :stripe_count, 2, type: Google.Protobuf.Int32Value, json_name: "stripeCount"
  field :bak_type, 4, type: Google.Cloud.Sql.V1.BakType, json_name: "bakType", enum: true
  field :copy_only, 5, type: Google.Protobuf.BoolValue, json_name: "copyOnly", deprecated: true
  field :differential_base, 6, type: Google.Protobuf.BoolValue, json_name: "differentialBase"
end

defmodule Google.Cloud.Sql.V1.ExportContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, type: :string
  field :databases, 2, repeated: true, type: :string
  field :kind, 3, type: :string

  field :sql_export_options, 4,
    type: Google.Cloud.Sql.V1.ExportContext.SqlExportOptions,
    json_name: "sqlExportOptions"

  field :csv_export_options, 5,
    type: Google.Cloud.Sql.V1.ExportContext.SqlCsvExportOptions,
    json_name: "csvExportOptions"

  field :file_type, 6, type: Google.Cloud.Sql.V1.SqlFileType, json_name: "fileType", enum: true
  field :offload, 8, type: Google.Protobuf.BoolValue

  field :bak_export_options, 9,
    type: Google.Cloud.Sql.V1.ExportContext.SqlBakExportOptions,
    json_name: "bakExportOptions"
end

defmodule Google.Cloud.Sql.V1.ImportContext.SqlImportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :threads, 1, type: Google.Protobuf.Int32Value, deprecated: false
  field :parallel, 2, type: Google.Protobuf.BoolValue, deprecated: false
end

defmodule Google.Cloud.Sql.V1.ImportContext.SqlCsvImportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :table, 1, type: :string
  field :columns, 2, repeated: true, type: :string
  field :escape_character, 4, type: :string, json_name: "escapeCharacter"
  field :quote_character, 5, type: :string, json_name: "quoteCharacter"
  field :fields_terminated_by, 6, type: :string, json_name: "fieldsTerminatedBy"
  field :lines_terminated_by, 8, type: :string, json_name: "linesTerminatedBy"
end

defmodule Google.Cloud.Sql.V1.ImportContext.SqlBakImportOptions.EncryptionOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cert_path, 1, type: :string, json_name: "certPath"
  field :pvk_path, 2, type: :string, json_name: "pvkPath"
  field :pvk_password, 3, type: :string, json_name: "pvkPassword"
end

defmodule Google.Cloud.Sql.V1.ImportContext.SqlBakImportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :encryption_options, 1,
    type: Google.Cloud.Sql.V1.ImportContext.SqlBakImportOptions.EncryptionOptions,
    json_name: "encryptionOptions"

  field :striped, 2, type: Google.Protobuf.BoolValue
  field :no_recovery, 4, type: Google.Protobuf.BoolValue, json_name: "noRecovery"
  field :recovery_only, 5, type: Google.Protobuf.BoolValue, json_name: "recoveryOnly"
  field :bak_type, 6, type: Google.Cloud.Sql.V1.BakType, json_name: "bakType", enum: true
  field :stop_at, 7, type: Google.Protobuf.Timestamp, json_name: "stopAt", deprecated: false
  field :stop_at_mark, 8, type: :string, json_name: "stopAtMark", deprecated: false
end

defmodule Google.Cloud.Sql.V1.ImportContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, type: :string
  field :database, 2, type: :string
  field :kind, 3, type: :string
  field :file_type, 4, type: Google.Cloud.Sql.V1.SqlFileType, json_name: "fileType", enum: true

  field :csv_import_options, 5,
    type: Google.Cloud.Sql.V1.ImportContext.SqlCsvImportOptions,
    json_name: "csvImportOptions"

  field :import_user, 6, type: :string, json_name: "importUser"

  field :bak_import_options, 7,
    type: Google.Cloud.Sql.V1.ImportContext.SqlBakImportOptions,
    json_name: "bakImportOptions"

  field :sql_import_options, 8,
    type: Google.Cloud.Sql.V1.ImportContext.SqlImportOptions,
    json_name: "sqlImportOptions",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1.IpConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ipv4_enabled, 1, type: Google.Protobuf.BoolValue, json_name: "ipv4Enabled"
  field :private_network, 2, type: :string, json_name: "privateNetwork"
  field :require_ssl, 3, type: Google.Protobuf.BoolValue, json_name: "requireSsl"

  field :authorized_networks, 4,
    repeated: true,
    type: Google.Cloud.Sql.V1.AclEntry,
    json_name: "authorizedNetworks"

  field :allocated_ip_range, 6, type: :string, json_name: "allocatedIpRange"

  field :enable_private_path_for_google_cloud_services, 7,
    type: Google.Protobuf.BoolValue,
    json_name: "enablePrivatePathForGoogleCloudServices"

  field :ssl_mode, 8,
    type: Google.Cloud.Sql.V1.IpConfiguration.SslMode,
    json_name: "sslMode",
    enum: true

  field :psc_config, 9,
    proto3_optional: true,
    type: Google.Cloud.Sql.V1.PscConfig,
    json_name: "pscConfig"
end

defmodule Google.Cloud.Sql.V1.PscConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :psc_enabled, 1, proto3_optional: true, type: :bool, json_name: "pscEnabled"

  field :allowed_consumer_projects, 2,
    repeated: true,
    type: :string,
    json_name: "allowedConsumerProjects",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1.LocationPreference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :follow_gae_application, 1,
    type: :string,
    json_name: "followGaeApplication",
    deprecated: true

  field :zone, 2, type: :string
  field :secondary_zone, 4, type: :string, json_name: "secondaryZone"
  field :kind, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.MaintenanceWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :hour, 1, type: Google.Protobuf.Int32Value
  field :day, 2, type: Google.Protobuf.Int32Value

  field :update_track, 3,
    type: Google.Cloud.Sql.V1.SqlUpdateTrack,
    json_name: "updateTrack",
    enum: true

  field :kind, 4, type: :string
end

defmodule Google.Cloud.Sql.V1.DenyMaintenancePeriod do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_date, 1, type: :string, json_name: "startDate"
  field :end_date, 2, type: :string, json_name: "endDate"
  field :time, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.InsightsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :query_insights_enabled, 1, type: :bool, json_name: "queryInsightsEnabled"
  field :record_client_address, 2, type: :bool, json_name: "recordClientAddress"
  field :record_application_tags, 3, type: :bool, json_name: "recordApplicationTags"
  field :query_string_length, 4, type: Google.Protobuf.Int32Value, json_name: "queryStringLength"

  field :query_plans_per_minute, 5,
    type: Google.Protobuf.Int32Value,
    json_name: "queryPlansPerMinute"
end

defmodule Google.Cloud.Sql.V1.MySqlReplicaConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Cloud.Sql.V1.DiskEncryptionConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :kms_key_name, 1, type: :string, json_name: "kmsKeyName"
  field :kind, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.DiskEncryptionStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :kms_key_version_name, 1, type: :string, json_name: "kmsKeyVersionName"
  field :kind, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.IpMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Sql.V1.SqlIpAddressType, enum: true
  field :ip_address, 2, type: :string, json_name: "ipAddress"
  field :time_to_retire, 3, type: Google.Protobuf.Timestamp, json_name: "timeToRetire"
end

defmodule Google.Cloud.Sql.V1.Operation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :kind, 1, type: :string
  field :target_link, 2, type: :string, json_name: "targetLink"
  field :status, 3, type: Google.Cloud.Sql.V1.Operation.SqlOperationStatus, enum: true
  field :user, 4, type: :string
  field :insert_time, 5, type: Google.Protobuf.Timestamp, json_name: "insertTime"
  field :start_time, 6, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 7, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :error, 8, type: Google.Cloud.Sql.V1.OperationErrors
  field :api_warning, 19, type: Google.Cloud.Sql.V1.ApiWarning, json_name: "apiWarning"

  field :operation_type, 9,
    type: Google.Cloud.Sql.V1.Operation.SqlOperationType,
    json_name: "operationType",
    enum: true

  field :import_context, 10, type: Google.Cloud.Sql.V1.ImportContext, json_name: "importContext"
  field :export_context, 11, type: Google.Cloud.Sql.V1.ExportContext, json_name: "exportContext"
  field :backup_context, 17, type: Google.Cloud.Sql.V1.BackupContext, json_name: "backupContext"
  field :name, 12, type: :string
  field :target_id, 13, type: :string, json_name: "targetId"
  field :self_link, 14, type: :string, json_name: "selfLink"
  field :target_project, 15, type: :string, json_name: "targetProject"

  field :acquire_ssrs_lease_context, 20,
    type: Google.Cloud.Sql.V1.AcquireSsrsLeaseContext,
    json_name: "acquireSsrsLeaseContext"
end

defmodule Google.Cloud.Sql.V1.OperationError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :kind, 1, type: :string
  field :code, 2, type: :string
  field :message, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.OperationErrors do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :kind, 1, type: :string
  field :errors, 2, repeated: true, type: Google.Cloud.Sql.V1.OperationError
end

defmodule Google.Cloud.Sql.V1.PasswordValidationPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min_length, 1, type: Google.Protobuf.Int32Value, json_name: "minLength"
  field :complexity, 2, type: Google.Cloud.Sql.V1.PasswordValidationPolicy.Complexity, enum: true
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

defmodule Google.Cloud.Sql.V1.DataCacheConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :data_cache_enabled, 1, type: :bool, json_name: "dataCacheEnabled"
end

defmodule Google.Cloud.Sql.V1.Settings.UserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.Settings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
    type: Google.Cloud.Sql.V1.Settings.UserLabelsEntry,
    json_name: "userLabels",
    map: true

  field :availability_type, 6,
    type: Google.Cloud.Sql.V1.SqlAvailabilityType,
    json_name: "availabilityType",
    enum: true

  field :pricing_plan, 7,
    type: Google.Cloud.Sql.V1.SqlPricingPlan,
    json_name: "pricingPlan",
    enum: true

  field :replication_type, 8,
    type: Google.Cloud.Sql.V1.SqlReplicationType,
    json_name: "replicationType",
    enum: true,
    deprecated: true

  field :storage_auto_resize_limit, 9,
    type: Google.Protobuf.Int64Value,
    json_name: "storageAutoResizeLimit"

  field :activation_policy, 10,
    type: Google.Cloud.Sql.V1.Settings.SqlActivationPolicy,
    json_name: "activationPolicy",
    enum: true

  field :ip_configuration, 11,
    type: Google.Cloud.Sql.V1.IpConfiguration,
    json_name: "ipConfiguration"

  field :storage_auto_resize, 12, type: Google.Protobuf.BoolValue, json_name: "storageAutoResize"

  field :location_preference, 13,
    type: Google.Cloud.Sql.V1.LocationPreference,
    json_name: "locationPreference"

  field :database_flags, 14,
    repeated: true,
    type: Google.Cloud.Sql.V1.DatabaseFlags,
    json_name: "databaseFlags"

  field :data_disk_type, 15,
    type: Google.Cloud.Sql.V1.SqlDataDiskType,
    json_name: "dataDiskType",
    enum: true

  field :maintenance_window, 16,
    type: Google.Cloud.Sql.V1.MaintenanceWindow,
    json_name: "maintenanceWindow"

  field :backup_configuration, 17,
    type: Google.Cloud.Sql.V1.BackupConfiguration,
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
    type: Google.Cloud.Sql.V1.SqlActiveDirectoryConfig,
    json_name: "activeDirectoryConfig"

  field :collation, 23, type: :string

  field :deny_maintenance_periods, 24,
    repeated: true,
    type: Google.Cloud.Sql.V1.DenyMaintenancePeriod,
    json_name: "denyMaintenancePeriods"

  field :insights_config, 25,
    type: Google.Cloud.Sql.V1.InsightsConfig,
    json_name: "insightsConfig"

  field :password_validation_policy, 27,
    type: Google.Cloud.Sql.V1.PasswordValidationPolicy,
    json_name: "passwordValidationPolicy"

  field :sql_server_audit_config, 29,
    type: Google.Cloud.Sql.V1.SqlServerAuditConfig,
    json_name: "sqlServerAuditConfig"

  field :edition, 38, type: Google.Cloud.Sql.V1.Settings.Edition, enum: true, deprecated: false

  field :connector_enforcement, 32,
    type: Google.Cloud.Sql.V1.Settings.ConnectorEnforcement,
    json_name: "connectorEnforcement",
    enum: true

  field :deletion_protection_enabled, 33,
    type: Google.Protobuf.BoolValue,
    json_name: "deletionProtectionEnabled"

  field :time_zone, 34, type: :string, json_name: "timeZone"

  field :advanced_machine_features, 35,
    type: Google.Cloud.Sql.V1.AdvancedMachineFeatures,
    json_name: "advancedMachineFeatures"

  field :data_cache_config, 37,
    type: Google.Cloud.Sql.V1.DataCacheConfig,
    json_name: "dataCacheConfig"

  field :enable_google_ml_integration, 40,
    type: Google.Protobuf.BoolValue,
    json_name: "enableGoogleMlIntegration",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1.AdvancedMachineFeatures do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :threads_per_core, 1, type: :int32, json_name: "threadsPerCore"
end

defmodule Google.Cloud.Sql.V1.SslCert do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Cloud.Sql.V1.SslCertDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cert_info, 1, type: Google.Cloud.Sql.V1.SslCert, json_name: "certInfo"
  field :cert_private_key, 2, type: :string, json_name: "certPrivateKey"
end

defmodule Google.Cloud.Sql.V1.SqlActiveDirectoryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :kind, 1, type: :string
  field :domain, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlServerAuditConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :kind, 1, type: :string
  field :bucket, 2, type: :string
  field :retention_interval, 3, type: Google.Protobuf.Duration, json_name: "retentionInterval"
  field :upload_interval, 4, type: Google.Protobuf.Duration, json_name: "uploadInterval"
end

defmodule Google.Cloud.Sql.V1.AcquireSsrsLeaseContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :setup_login, 1, proto3_optional: true, type: :string, json_name: "setupLogin"
  field :service_login, 2, proto3_optional: true, type: :string, json_name: "serviceLogin"
  field :report_database, 3, proto3_optional: true, type: :string, json_name: "reportDatabase"
  field :duration, 4, proto3_optional: true, type: Google.Protobuf.Duration
end