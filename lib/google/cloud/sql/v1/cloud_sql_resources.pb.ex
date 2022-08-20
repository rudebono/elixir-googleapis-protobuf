defmodule Google.Cloud.Sql.V1.SqlFileType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SQL_FILE_TYPE_UNSPECIFIED, 0
  field :SQL, 1
  field :CSV, 2
  field :BAK, 4
end

defmodule Google.Cloud.Sql.V1.SqlBackendType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SQL_BACKEND_TYPE_UNSPECIFIED, 0
  field :FIRST_GEN, 1
  field :SECOND_GEN, 2
  field :EXTERNAL, 3
end

defmodule Google.Cloud.Sql.V1.SqlIpAddressType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SQL_IP_ADDRESS_TYPE_UNSPECIFIED, 0
  field :PRIMARY, 1
  field :OUTGOING, 2
  field :PRIVATE, 3
  field :MIGRATED_1ST_GEN, 4
end

defmodule Google.Cloud.Sql.V1.SqlDatabaseVersion do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SQL_DATABASE_VERSION_UNSPECIFIED, 0
  field :MYSQL_5_1, 2
  field :MYSQL_5_5, 3
  field :MYSQL_5_6, 5
  field :MYSQL_5_7, 6
  field :POSTGRES_9_6, 9
  field :POSTGRES_11, 10
  field :SQLSERVER_2017_STANDARD, 11
  field :SQLSERVER_2017_ENTERPRISE, 14
  field :SQLSERVER_2017_EXPRESS, 15
  field :SQLSERVER_2017_WEB, 16
  field :POSTGRES_10, 18
  field :POSTGRES_12, 19
  field :POSTGRES_13, 23
  field :SQLSERVER_2019_STANDARD, 26
  field :SQLSERVER_2019_ENTERPRISE, 27
  field :SQLSERVER_2019_EXPRESS, 28
  field :SQLSERVER_2019_WEB, 29
end

defmodule Google.Cloud.Sql.V1.SqlPricingPlan do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SQL_PRICING_PLAN_UNSPECIFIED, 0
  field :PACKAGE, 1
  field :PER_USE, 2
end

defmodule Google.Cloud.Sql.V1.SqlReplicationType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SQL_REPLICATION_TYPE_UNSPECIFIED, 0
  field :SYNCHRONOUS, 1
  field :ASYNCHRONOUS, 2
end

defmodule Google.Cloud.Sql.V1.SqlDataDiskType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SQL_DATA_DISK_TYPE_UNSPECIFIED, 0
  field :PD_SSD, 1
  field :PD_HDD, 2
  field :OBSOLETE_LOCAL_SSD, 3
end

defmodule Google.Cloud.Sql.V1.SqlAvailabilityType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SQL_AVAILABILITY_TYPE_UNSPECIFIED, 0
  field :ZONAL, 1
  field :REGIONAL, 2
end

defmodule Google.Cloud.Sql.V1.SqlUpdateTrack do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SQL_UPDATE_TRACK_UNSPECIFIED, 0
  field :canary, 1
  field :stable, 2
end

defmodule Google.Cloud.Sql.V1.ApiWarning.SqlApiWarningCode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SQL_API_WARNING_CODE_UNSPECIFIED, 0
  field :REGION_UNREACHABLE, 1
end

defmodule Google.Cloud.Sql.V1.BackupRetentionSettings.RetentionUnit do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :RETENTION_UNIT_UNSPECIFIED, 0
  field :COUNT, 1
end

defmodule Google.Cloud.Sql.V1.Operation.SqlOperationType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
end

defmodule Google.Cloud.Sql.V1.Operation.SqlOperationStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SQL_OPERATION_STATUS_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :DONE, 3
end

defmodule Google.Cloud.Sql.V1.Settings.SqlActivationPolicy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SQL_ACTIVATION_POLICY_UNSPECIFIED, 0
  field :ALWAYS, 1
  field :NEVER, 2
  field :ON_DEMAND, 3
end

defmodule Google.Cloud.Sql.V1.AclEntry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 1, type: :string
  field :expiration_time, 2, type: Google.Protobuf.Timestamp, json_name: "expirationTime"
  field :name, 3, type: :string, deprecated: false
  field :kind, 4, type: :string
end

defmodule Google.Cloud.Sql.V1.ApiWarning do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :code, 1, type: Google.Cloud.Sql.V1.ApiWarning.SqlApiWarningCode, enum: true
  field :message, 2, type: :string
  field :region, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.BackupRetentionSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :retention_unit, 1,
    type: Google.Cloud.Sql.V1.BackupRetentionSettings.RetentionUnit,
    json_name: "retentionUnit",
    enum: true

  field :retained_backups, 2, type: Google.Protobuf.Int32Value, json_name: "retainedBackups"
end

defmodule Google.Cloud.Sql.V1.BackupConfiguration do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
end

defmodule Google.Cloud.Sql.V1.BackupContext do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backup_id, 1, type: :int64, json_name: "backupId"
  field :kind, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.Database do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :compatibility_level, 1, type: :int32, json_name: "compatibilityLevel"
  field :recovery_model, 2, type: :string, json_name: "recoveryModel"
end

defmodule Google.Cloud.Sql.V1.DatabaseFlags do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.MySqlSyncConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :initial_sync_flags, 1,
    repeated: true,
    type: Google.Cloud.Sql.V1.SyncFlags,
    json_name: "initialSyncFlags"
end

defmodule Google.Cloud.Sql.V1.SyncFlags do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.InstanceReference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :region, 2, type: :string
  field :project, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.DemoteMasterConfiguration do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :kind, 1, type: :string

  field :mysql_replica_configuration, 2,
    type: Google.Cloud.Sql.V1.DemoteMasterMySqlReplicaConfiguration,
    json_name: "mysqlReplicaConfiguration"
end

defmodule Google.Cloud.Sql.V1.DemoteMasterMySqlReplicaConfiguration do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :kind, 1, type: :string
  field :username, 2, type: :string
  field :password, 3, type: :string
  field :client_key, 4, type: :string, json_name: "clientKey"
  field :client_certificate, 5, type: :string, json_name: "clientCertificate"
  field :ca_certificate, 6, type: :string, json_name: "caCertificate"
end

defmodule Google.Cloud.Sql.V1.ExportContext.SqlCsvExportOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :select_query, 1, type: :string, json_name: "selectQuery"
  field :escape_character, 2, type: :string, json_name: "escapeCharacter"
  field :quote_character, 3, type: :string, json_name: "quoteCharacter"
  field :fields_terminated_by, 4, type: :string, json_name: "fieldsTerminatedBy"
  field :lines_terminated_by, 6, type: :string, json_name: "linesTerminatedBy"
end

defmodule Google.Cloud.Sql.V1.ExportContext.SqlExportOptions.MysqlExportOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :master_data, 1, type: Google.Protobuf.Int32Value, json_name: "masterData"
end

defmodule Google.Cloud.Sql.V1.ExportContext.SqlExportOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :tables, 1, repeated: true, type: :string
  field :schema_only, 2, type: Google.Protobuf.BoolValue, json_name: "schemaOnly"

  field :mysql_export_options, 3,
    type: Google.Cloud.Sql.V1.ExportContext.SqlExportOptions.MysqlExportOptions,
    json_name: "mysqlExportOptions"
end

defmodule Google.Cloud.Sql.V1.ExportContext do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
end

defmodule Google.Cloud.Sql.V1.ImportContext.SqlCsvImportOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :table, 1, type: :string
  field :columns, 2, repeated: true, type: :string
  field :escape_character, 4, type: :string, json_name: "escapeCharacter"
  field :quote_character, 5, type: :string, json_name: "quoteCharacter"
  field :fields_terminated_by, 6, type: :string, json_name: "fieldsTerminatedBy"
  field :lines_terminated_by, 8, type: :string, json_name: "linesTerminatedBy"
end

defmodule Google.Cloud.Sql.V1.ImportContext.SqlBakImportOptions.EncryptionOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cert_path, 1, type: :string, json_name: "certPath"
  field :pvk_path, 2, type: :string, json_name: "pvkPath"
  field :pvk_password, 3, type: :string, json_name: "pvkPassword"
end

defmodule Google.Cloud.Sql.V1.ImportContext.SqlBakImportOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :encryption_options, 1,
    type: Google.Cloud.Sql.V1.ImportContext.SqlBakImportOptions.EncryptionOptions,
    json_name: "encryptionOptions"
end

defmodule Google.Cloud.Sql.V1.ImportContext do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
end

defmodule Google.Cloud.Sql.V1.IpConfiguration do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ipv4_enabled, 1, type: Google.Protobuf.BoolValue, json_name: "ipv4Enabled"
  field :private_network, 2, type: :string, json_name: "privateNetwork"
  field :require_ssl, 3, type: Google.Protobuf.BoolValue, json_name: "requireSsl"

  field :authorized_networks, 4,
    repeated: true,
    type: Google.Cloud.Sql.V1.AclEntry,
    json_name: "authorizedNetworks"

  field :allocated_ip_range, 6, type: :string, json_name: "allocatedIpRange"
end

defmodule Google.Cloud.Sql.V1.LocationPreference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :start_date, 1, type: :string, json_name: "startDate"
  field :end_date, 2, type: :string, json_name: "endDate"
  field :time, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.InsightsConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :kms_key_name, 1, type: :string, json_name: "kmsKeyName"
  field :kind, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.DiskEncryptionStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :kms_key_version_name, 1, type: :string, json_name: "kmsKeyVersionName"
  field :kind, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.IpMapping do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Sql.V1.SqlIpAddressType, enum: true
  field :ip_address, 2, type: :string, json_name: "ipAddress"
  field :time_to_retire, 3, type: Google.Protobuf.Timestamp, json_name: "timeToRetire"
end

defmodule Google.Cloud.Sql.V1.Operation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :kind, 1, type: :string
  field :target_link, 2, type: :string, json_name: "targetLink"
  field :status, 3, type: Google.Cloud.Sql.V1.Operation.SqlOperationStatus, enum: true
  field :user, 4, type: :string
  field :insert_time, 5, type: Google.Protobuf.Timestamp, json_name: "insertTime"
  field :start_time, 6, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 7, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :error, 8, type: Google.Cloud.Sql.V1.OperationErrors

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
end

defmodule Google.Cloud.Sql.V1.OperationError do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :kind, 1, type: :string
  field :code, 2, type: :string
  field :message, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.OperationErrors do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :kind, 1, type: :string
  field :errors, 2, repeated: true, type: Google.Cloud.Sql.V1.OperationError
end

defmodule Google.Cloud.Sql.V1.Settings.UserLabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.Settings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

  field :sql_server_audit_config, 29,
    type: Google.Cloud.Sql.V1.SqlServerAuditConfig,
    json_name: "sqlServerAuditConfig"
end

defmodule Google.Cloud.Sql.V1.SslCert do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cert_info, 1, type: Google.Cloud.Sql.V1.SslCert, json_name: "certInfo"
  field :cert_private_key, 2, type: :string, json_name: "certPrivateKey"
end

defmodule Google.Cloud.Sql.V1.SqlActiveDirectoryConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :kind, 1, type: :string
  field :domain, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlServerAuditConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :kind, 1, type: :string
  field :bucket, 2, type: :string
end