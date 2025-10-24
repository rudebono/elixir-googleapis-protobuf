defmodule Google.Cloud.Oracledatabase.V1.GenerateType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :GENERATE_TYPE_UNSPECIFIED, 0
  field :ALL, 1
  field :SINGLE, 2
end

defmodule Google.Cloud.Oracledatabase.V1.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :AVAILABLE, 2
  field :STOPPING, 3
  field :STOPPED, 4
  field :STARTING, 5
  field :TERMINATING, 6
  field :TERMINATED, 7
  field :UNAVAILABLE, 8
  field :RESTORE_IN_PROGRESS, 9
  field :RESTORE_FAILED, 10
  field :BACKUP_IN_PROGRESS, 11
  field :SCALE_IN_PROGRESS, 12
  field :AVAILABLE_NEEDS_ATTENTION, 13
  field :UPDATING, 14
  field :MAINTENANCE_IN_PROGRESS, 15
  field :RESTARTING, 16
  field :RECREATING, 17
  field :ROLE_CHANGE_IN_PROGRESS, 18
  field :UPGRADING, 19
  field :INACCESSIBLE, 20
  field :STANDBY, 21
end

defmodule Google.Cloud.Oracledatabase.V1.OperationsInsightsState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OPERATIONS_INSIGHTS_STATE_UNSPECIFIED, 0
  field :ENABLING, 1
  field :ENABLED, 2
  field :DISABLING, 3
  field :NOT_ENABLED, 4
  field :FAILED_ENABLING, 5
  field :FAILED_DISABLING, 6
end

defmodule Google.Cloud.Oracledatabase.V1.DBWorkload do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DB_WORKLOAD_UNSPECIFIED, 0
  field :OLTP, 1
  field :DW, 2
  field :AJD, 3
  field :APEX, 4
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.DatabaseEdition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DATABASE_EDITION_UNSPECIFIED, 0
  field :STANDARD_EDITION, 1
  field :ENTERPRISE_EDITION, 2
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.LicenseType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LICENSE_TYPE_UNSPECIFIED, 0
  field :LICENSE_INCLUDED, 1
  field :BRING_YOUR_OWN_LICENSE, 2
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.MaintenanceScheduleType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MAINTENANCE_SCHEDULE_TYPE_UNSPECIFIED, 0
  field :EARLY, 1
  field :REGULAR, 2
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.LocalDisasterRecoveryType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LOCAL_DISASTER_RECOVERY_TYPE_UNSPECIFIED, 0
  field :ADG, 1
  field :BACKUP_BASED, 2
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.DataSafeState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DATA_SAFE_STATE_UNSPECIFIED, 0
  field :REGISTERING, 1
  field :REGISTERED, 2
  field :DEREGISTERING, 3
  field :NOT_REGISTERED, 4
  field :FAILED, 5
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.DatabaseManagementState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DATABASE_MANAGEMENT_STATE_UNSPECIFIED, 0
  field :ENABLING, 1
  field :ENABLED, 2
  field :DISABLING, 3
  field :NOT_ENABLED, 4
  field :FAILED_ENABLING, 5
  field :FAILED_DISABLING, 6
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.OpenMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OPEN_MODE_UNSPECIFIED, 0
  field :READ_ONLY, 1
  field :READ_WRITE, 2
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.PermissionLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PERMISSION_LEVEL_UNSPECIFIED, 0
  field :RESTRICTED, 1
  field :UNRESTRICTED, 2
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.RefreshableMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :REFRESHABLE_MODE_UNSPECIFIED, 0
  field :AUTOMATIC, 1
  field :MANUAL, 2
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.RefreshableState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :REFRESHABLE_STATE_UNSPECIFIED, 0
  field :REFRESHING, 1
  field :NOT_REFRESHING, 2
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.Role do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ROLE_UNSPECIFIED, 0
  field :PRIMARY, 1
  field :STANDBY, 2
  field :DISABLED_STANDBY, 3
  field :BACKUP_COPY, 4
  field :SNAPSHOT_STANDBY, 5
end

defmodule Google.Cloud.Oracledatabase.V1.EncryptionKey.Provider do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROVIDER_UNSPECIFIED, 0
  field :GOOGLE_MANAGED, 1
  field :ORACLE_MANAGED, 2
end

defmodule Google.Cloud.Oracledatabase.V1.DatabaseConnectionStringProfile.ConsumerGroup do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONSUMER_GROUP_UNSPECIFIED, 0
  field :HIGH, 1
  field :MEDIUM, 2
  field :LOW, 3
  field :TP, 4
  field :TPURGENT, 5
end

defmodule Google.Cloud.Oracledatabase.V1.DatabaseConnectionStringProfile.HostFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HOST_FORMAT_UNSPECIFIED, 0
  field :FQDN, 1
  field :IP, 2
end

defmodule Google.Cloud.Oracledatabase.V1.DatabaseConnectionStringProfile.Protocol do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROTOCOL_UNSPECIFIED, 0
  field :TCP, 1
  field :TCPS, 2
end

defmodule Google.Cloud.Oracledatabase.V1.DatabaseConnectionStringProfile.SessionMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SESSION_MODE_UNSPECIFIED, 0
  field :DIRECT, 1
  field :INDIRECT, 2
end

defmodule Google.Cloud.Oracledatabase.V1.DatabaseConnectionStringProfile.SyntaxFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SYNTAX_FORMAT_UNSPECIFIED, 0
  field :LONG, 1
  field :EZCONNECT, 2
  field :EZCONNECTPLUS, 3
end

defmodule Google.Cloud.Oracledatabase.V1.DatabaseConnectionStringProfile.TLSAuthentication do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TLS_AUTHENTICATION_UNSPECIFIED, 0
  field :SERVER, 1
  field :MUTUAL, 2
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabase.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :database, 2, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :entitlement_id, 5, type: :string, json_name: "entitlementId", deprecated: false
  field :admin_password, 6, type: :string, json_name: "adminPassword", deprecated: false

  field :properties, 7,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties,
    deprecated: false

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabase.LabelsEntry,
    map: true,
    deprecated: false

  field :network, 9, type: :string, deprecated: false
  field :cidr, 10, type: :string, deprecated: false
  field :odb_network, 16, type: :string, json_name: "odbNetwork", deprecated: false
  field :odb_subnet, 17, type: :string, json_name: "odbSubnet", deprecated: false

  field :source_config, 11,
    type: Google.Cloud.Oracledatabase.V1.SourceConfig,
    json_name: "sourceConfig",
    deprecated: false

  field :peer_autonomous_databases, 12,
    repeated: true,
    type: :string,
    json_name: "peerAutonomousDatabases",
    deprecated: false

  field :create_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :disaster_recovery_supported_locations, 15,
    repeated: true,
    type: :string,
    json_name: "disasterRecoverySupportedLocations",
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.SourceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :autonomous_database, 1, type: :string, json_name: "autonomousDatabase", deprecated: false

  field :automatic_backups_replication_enabled, 2,
    type: :bool,
    json_name: "automaticBackupsReplicationEnabled",
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ocid, 1, type: :string, deprecated: false
  field :compute_count, 2, type: :float, json_name: "computeCount", deprecated: false
  field :cpu_core_count, 3, type: :int32, json_name: "cpuCoreCount", deprecated: false
  field :data_storage_size_tb, 4, type: :int32, json_name: "dataStorageSizeTb", deprecated: false
  field :data_storage_size_gb, 63, type: :int32, json_name: "dataStorageSizeGb", deprecated: false

  field :db_workload, 5,
    type: Google.Cloud.Oracledatabase.V1.DBWorkload,
    json_name: "dbWorkload",
    enum: true,
    deprecated: false

  field :db_edition, 6,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.DatabaseEdition,
    json_name: "dbEdition",
    enum: true,
    deprecated: false

  field :character_set, 8, type: :string, json_name: "characterSet", deprecated: false
  field :n_character_set, 9, type: :string, json_name: "nCharacterSet", deprecated: false
  field :private_endpoint_ip, 10, type: :string, json_name: "privateEndpointIp", deprecated: false

  field :private_endpoint_label, 11,
    type: :string,
    json_name: "privateEndpointLabel",
    deprecated: false

  field :db_version, 12, type: :string, json_name: "dbVersion", deprecated: false

  field :is_auto_scaling_enabled, 14,
    type: :bool,
    json_name: "isAutoScalingEnabled",
    deprecated: false

  field :is_storage_auto_scaling_enabled, 15,
    type: :bool,
    json_name: "isStorageAutoScalingEnabled",
    deprecated: false

  field :license_type, 16,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.LicenseType,
    json_name: "licenseType",
    enum: true,
    deprecated: false

  field :customer_contacts, 17,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.CustomerContact,
    json_name: "customerContacts",
    deprecated: false

  field :secret_id, 18, type: :string, json_name: "secretId", deprecated: false
  field :vault_id, 19, type: :string, json_name: "vaultId", deprecated: false

  field :maintenance_schedule_type, 20,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.MaintenanceScheduleType,
    json_name: "maintenanceScheduleType",
    enum: true,
    deprecated: false

  field :mtls_connection_required, 34,
    type: :bool,
    json_name: "mtlsConnectionRequired",
    deprecated: false

  field :backup_retention_period_days, 57,
    type: :int32,
    json_name: "backupRetentionPeriodDays",
    deprecated: false

  field :actual_used_data_storage_size_tb, 21,
    type: :double,
    json_name: "actualUsedDataStorageSizeTb",
    deprecated: false

  field :allocated_storage_size_tb, 22,
    type: :double,
    json_name: "allocatedStorageSizeTb",
    deprecated: false

  field :apex_details, 23,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseApex,
    json_name: "apexDetails",
    deprecated: false

  field :are_primary_allowlisted_ips_used, 24,
    proto3_optional: true,
    type: :bool,
    json_name: "arePrimaryAllowlistedIpsUsed",
    deprecated: false

  field :lifecycle_details, 25, type: :string, json_name: "lifecycleDetails", deprecated: false
  field :state, 26, type: Google.Cloud.Oracledatabase.V1.State, enum: true, deprecated: false

  field :autonomous_container_database_id, 27,
    type: :string,
    json_name: "autonomousContainerDatabaseId",
    deprecated: false

  field :available_upgrade_versions, 28,
    repeated: true,
    type: :string,
    json_name: "availableUpgradeVersions",
    deprecated: false

  field :connection_strings, 29,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseConnectionStrings,
    json_name: "connectionStrings",
    deprecated: false

  field :connection_urls, 30,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseConnectionUrls,
    json_name: "connectionUrls",
    deprecated: false

  field :failed_data_recovery_duration, 31,
    type: Google.Protobuf.Duration,
    json_name: "failedDataRecoveryDuration",
    deprecated: false

  field :memory_table_gbs, 32, type: :int32, json_name: "memoryTableGbs", deprecated: false

  field :is_local_data_guard_enabled, 33,
    type: :bool,
    json_name: "isLocalDataGuardEnabled",
    deprecated: false

  field :local_adg_auto_failover_max_data_loss_limit, 35,
    type: :int32,
    json_name: "localAdgAutoFailoverMaxDataLossLimit",
    deprecated: false

  field :local_standby_db, 36,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseStandbySummary,
    json_name: "localStandbyDb",
    deprecated: false

  field :memory_per_oracle_compute_unit_gbs, 37,
    type: :int32,
    json_name: "memoryPerOracleComputeUnitGbs",
    deprecated: false

  field :local_disaster_recovery_type, 38,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.LocalDisasterRecoveryType,
    json_name: "localDisasterRecoveryType",
    enum: true,
    deprecated: false

  field :data_safe_state, 39,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.DataSafeState,
    json_name: "dataSafeState",
    enum: true,
    deprecated: false

  field :database_management_state, 40,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.DatabaseManagementState,
    json_name: "databaseManagementState",
    enum: true,
    deprecated: false

  field :open_mode, 41,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.OpenMode,
    json_name: "openMode",
    enum: true,
    deprecated: false

  field :operations_insights_state, 42,
    type: Google.Cloud.Oracledatabase.V1.OperationsInsightsState,
    json_name: "operationsInsightsState",
    enum: true,
    deprecated: false

  field :peer_db_ids, 43, repeated: true, type: :string, json_name: "peerDbIds", deprecated: false

  field :permission_level, 44,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.PermissionLevel,
    json_name: "permissionLevel",
    enum: true,
    deprecated: false

  field :private_endpoint, 45, type: :string, json_name: "privateEndpoint", deprecated: false

  field :refreshable_mode, 46,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.RefreshableMode,
    json_name: "refreshableMode",
    enum: true,
    deprecated: false

  field :refreshable_state, 47,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.RefreshableState,
    json_name: "refreshableState",
    enum: true,
    deprecated: false

  field :role, 48,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseProperties.Role,
    enum: true,
    deprecated: false

  field :scheduled_operation_details, 64,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.ScheduledOperationDetails,
    json_name: "scheduledOperationDetails",
    deprecated: false

  field :sql_web_developer_url, 50,
    type: :string,
    json_name: "sqlWebDeveloperUrl",
    deprecated: false

  field :supported_clone_regions, 51,
    repeated: true,
    type: :string,
    json_name: "supportedCloneRegions",
    deprecated: false

  field :used_data_storage_size_tbs, 53,
    type: :int32,
    json_name: "usedDataStorageSizeTbs",
    deprecated: false

  field :oci_url, 54, type: :string, json_name: "ociUrl", deprecated: false

  field :total_auto_backup_storage_size_gbs, 59,
    type: :float,
    json_name: "totalAutoBackupStorageSizeGbs",
    deprecated: false

  field :next_long_term_backup_time, 60,
    type: Google.Protobuf.Timestamp,
    json_name: "nextLongTermBackupTime",
    deprecated: false

  field :data_guard_role_changed_time, 61,
    type: Google.Protobuf.Timestamp,
    json_name: "dataGuardRoleChangedTime",
    deprecated: false

  field :disaster_recovery_role_changed_time, 62,
    type: Google.Protobuf.Timestamp,
    json_name: "disasterRecoveryRoleChangedTime",
    deprecated: false

  field :maintenance_begin_time, 65,
    type: Google.Protobuf.Timestamp,
    json_name: "maintenanceBeginTime",
    deprecated: false

  field :maintenance_end_time, 66,
    type: Google.Protobuf.Timestamp,
    json_name: "maintenanceEndTime",
    deprecated: false

  field :allowlisted_ips, 67,
    repeated: true,
    type: :string,
    json_name: "allowlistedIps",
    deprecated: false

  field :encryption_key, 68,
    type: Google.Cloud.Oracledatabase.V1.EncryptionKey,
    json_name: "encryptionKey",
    deprecated: false

  field :encryption_key_history_entries, 69,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.EncryptionKeyHistoryEntry,
    json_name: "encryptionKeyHistoryEntries",
    deprecated: false

  field :service_agent_email, 70, type: :string, json_name: "serviceAgentEmail", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.EncryptionKeyHistoryEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :encryption_key, 1,
    type: Google.Cloud.Oracledatabase.V1.EncryptionKey,
    json_name: "encryptionKey",
    deprecated: false

  field :activation_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "activationTime",
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.EncryptionKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :provider, 1,
    type: Google.Cloud.Oracledatabase.V1.EncryptionKey.Provider,
    enum: true,
    deprecated: false

  field :kms_key, 2, type: :string, json_name: "kmsKey", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseApex do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :apex_version, 1, type: :string, json_name: "apexVersion", deprecated: false
  field :ords_version, 2, type: :string, json_name: "ordsVersion", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseConnectionStrings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :all_connection_strings, 1,
    type: Google.Cloud.Oracledatabase.V1.AllConnectionStrings,
    json_name: "allConnectionStrings",
    deprecated: false

  field :dedicated, 2, type: :string, deprecated: false
  field :high, 3, type: :string, deprecated: false
  field :low, 4, type: :string, deprecated: false
  field :medium, 5, type: :string, deprecated: false

  field :profiles, 6,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.DatabaseConnectionStringProfile,
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DatabaseConnectionStringProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :consumer_group, 1,
    type: Google.Cloud.Oracledatabase.V1.DatabaseConnectionStringProfile.ConsumerGroup,
    json_name: "consumerGroup",
    enum: true,
    deprecated: false

  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :host_format, 3,
    type: Google.Cloud.Oracledatabase.V1.DatabaseConnectionStringProfile.HostFormat,
    json_name: "hostFormat",
    enum: true,
    deprecated: false

  field :is_regional, 4, type: :bool, json_name: "isRegional", deprecated: false

  field :protocol, 5,
    type: Google.Cloud.Oracledatabase.V1.DatabaseConnectionStringProfile.Protocol,
    enum: true,
    deprecated: false

  field :session_mode, 6,
    type: Google.Cloud.Oracledatabase.V1.DatabaseConnectionStringProfile.SessionMode,
    json_name: "sessionMode",
    enum: true,
    deprecated: false

  field :syntax_format, 7,
    type: Google.Cloud.Oracledatabase.V1.DatabaseConnectionStringProfile.SyntaxFormat,
    json_name: "syntaxFormat",
    enum: true,
    deprecated: false

  field :tls_authentication, 8,
    type: Google.Cloud.Oracledatabase.V1.DatabaseConnectionStringProfile.TLSAuthentication,
    json_name: "tlsAuthentication",
    enum: true,
    deprecated: false

  field :value, 9, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.AllConnectionStrings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :high, 1, type: :string, deprecated: false
  field :low, 2, type: :string, deprecated: false
  field :medium, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseConnectionUrls do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :apex_uri, 1, type: :string, json_name: "apexUri", deprecated: false

  field :database_transforms_uri, 2,
    type: :string,
    json_name: "databaseTransformsUri",
    deprecated: false

  field :graph_studio_uri, 3, type: :string, json_name: "graphStudioUri", deprecated: false

  field :machine_learning_notebook_uri, 4,
    type: :string,
    json_name: "machineLearningNotebookUri",
    deprecated: false

  field :machine_learning_user_management_uri, 5,
    type: :string,
    json_name: "machineLearningUserManagementUri",
    deprecated: false

  field :mongo_db_uri, 6, type: :string, json_name: "mongoDbUri", deprecated: false
  field :ords_uri, 7, type: :string, json_name: "ordsUri", deprecated: false
  field :sql_dev_web_uri, 8, type: :string, json_name: "sqlDevWebUri", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseStandbySummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :lag_time_duration, 1,
    type: Google.Protobuf.Duration,
    json_name: "lagTimeDuration",
    deprecated: false

  field :lifecycle_details, 2, type: :string, json_name: "lifecycleDetails", deprecated: false
  field :state, 3, type: Google.Cloud.Oracledatabase.V1.State, enum: true, deprecated: false

  field :data_guard_role_changed_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "dataGuardRoleChangedTime",
    deprecated: false

  field :disaster_recovery_role_changed_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "disasterRecoveryRoleChangedTime",
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ScheduledOperationDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :day_of_week, 1,
    type: Google.Type.DayOfWeek,
    json_name: "dayOfWeek",
    enum: true,
    deprecated: false

  field :start_time, 4, type: Google.Type.TimeOfDay, json_name: "startTime", deprecated: false
  field :stop_time, 5, type: Google.Type.TimeOfDay, json_name: "stopTime", deprecated: false
end
