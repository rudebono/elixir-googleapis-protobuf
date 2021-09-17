defmodule Google.Cloud.Sql.V1.SqlFileType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SQL_FILE_TYPE_UNSPECIFIED | :SQL | :CSV | :BAK

  field :SQL_FILE_TYPE_UNSPECIFIED, 0

  field :SQL, 1

  field :CSV, 2

  field :BAK, 4
end

defmodule Google.Cloud.Sql.V1.SqlBackendType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SQL_BACKEND_TYPE_UNSPECIFIED | :FIRST_GEN | :SECOND_GEN | :EXTERNAL

  field :SQL_BACKEND_TYPE_UNSPECIFIED, 0

  field :FIRST_GEN, 1

  field :SECOND_GEN, 2

  field :EXTERNAL, 3
end

defmodule Google.Cloud.Sql.V1.SqlIpAddressType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SQL_IP_ADDRESS_TYPE_UNSPECIFIED
          | :PRIMARY
          | :OUTGOING
          | :PRIVATE
          | :MIGRATED_1ST_GEN

  field :SQL_IP_ADDRESS_TYPE_UNSPECIFIED, 0

  field :PRIMARY, 1

  field :OUTGOING, 2

  field :PRIVATE, 3

  field :MIGRATED_1ST_GEN, 4
end

defmodule Google.Cloud.Sql.V1.SqlDatabaseVersion do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SQL_DATABASE_VERSION_UNSPECIFIED
          | :MYSQL_5_1
          | :MYSQL_5_5
          | :MYSQL_5_6
          | :MYSQL_5_7
          | :POSTGRES_9_6
          | :POSTGRES_11
          | :SQLSERVER_2017_STANDARD
          | :SQLSERVER_2017_ENTERPRISE
          | :SQLSERVER_2017_EXPRESS
          | :SQLSERVER_2017_WEB
          | :POSTGRES_10
          | :POSTGRES_12
          | :POSTGRES_13
          | :SQLSERVER_2019_STANDARD
          | :SQLSERVER_2019_ENTERPRISE
          | :SQLSERVER_2019_EXPRESS
          | :SQLSERVER_2019_WEB

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
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SQL_PRICING_PLAN_UNSPECIFIED | :PACKAGE | :PER_USE

  field :SQL_PRICING_PLAN_UNSPECIFIED, 0

  field :PACKAGE, 1

  field :PER_USE, 2
end

defmodule Google.Cloud.Sql.V1.SqlReplicationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SQL_REPLICATION_TYPE_UNSPECIFIED | :SYNCHRONOUS | :ASYNCHRONOUS

  field :SQL_REPLICATION_TYPE_UNSPECIFIED, 0

  field :SYNCHRONOUS, 1

  field :ASYNCHRONOUS, 2
end

defmodule Google.Cloud.Sql.V1.SqlDataDiskType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SQL_DATA_DISK_TYPE_UNSPECIFIED | :PD_SSD | :PD_HDD | :OBSOLETE_LOCAL_SSD

  field :SQL_DATA_DISK_TYPE_UNSPECIFIED, 0

  field :PD_SSD, 1

  field :PD_HDD, 2

  field :OBSOLETE_LOCAL_SSD, 3
end

defmodule Google.Cloud.Sql.V1.SqlAvailabilityType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SQL_AVAILABILITY_TYPE_UNSPECIFIED | :ZONAL | :REGIONAL

  field :SQL_AVAILABILITY_TYPE_UNSPECIFIED, 0

  field :ZONAL, 1

  field :REGIONAL, 2
end

defmodule Google.Cloud.Sql.V1.SqlUpdateTrack do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SQL_UPDATE_TRACK_UNSPECIFIED | :canary | :stable

  field :SQL_UPDATE_TRACK_UNSPECIFIED, 0

  field :canary, 1

  field :stable, 2
end

defmodule Google.Cloud.Sql.V1.ApiWarning.SqlApiWarningCode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SQL_API_WARNING_CODE_UNSPECIFIED | :REGION_UNREACHABLE

  field :SQL_API_WARNING_CODE_UNSPECIFIED, 0

  field :REGION_UNREACHABLE, 1
end

defmodule Google.Cloud.Sql.V1.BackupRetentionSettings.RetentionUnit do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :RETENTION_UNIT_UNSPECIFIED | :COUNT

  field :RETENTION_UNIT_UNSPECIFIED, 0

  field :COUNT, 1
end

defmodule Google.Cloud.Sql.V1.Operation.SqlOperationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SQL_OPERATION_TYPE_UNSPECIFIED
          | :IMPORT
          | :EXPORT
          | :CREATE
          | :UPDATE
          | :DELETE
          | :RESTART
          | :BACKUP
          | :SNAPSHOT
          | :BACKUP_VOLUME
          | :DELETE_VOLUME
          | :RESTORE_VOLUME
          | :INJECT_USER
          | :CLONE
          | :STOP_REPLICA
          | :START_REPLICA
          | :PROMOTE_REPLICA
          | :CREATE_REPLICA
          | :CREATE_USER
          | :DELETE_USER
          | :UPDATE_USER
          | :CREATE_DATABASE
          | :DELETE_DATABASE
          | :UPDATE_DATABASE
          | :FAILOVER
          | :DELETE_BACKUP
          | :RECREATE_REPLICA
          | :TRUNCATE_LOG
          | :DEMOTE_MASTER
          | :MAINTENANCE
          | :ENABLE_PRIVATE_IP
          | :DEFER_MAINTENANCE
          | :CREATE_CLONE
          | :RESCHEDULE_MAINTENANCE
          | :START_EXTERNAL_SYNC

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
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SQL_OPERATION_STATUS_UNSPECIFIED | :PENDING | :RUNNING | :DONE

  field :SQL_OPERATION_STATUS_UNSPECIFIED, 0

  field :PENDING, 1

  field :RUNNING, 2

  field :DONE, 3
end

defmodule Google.Cloud.Sql.V1.Settings.SqlActivationPolicy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SQL_ACTIVATION_POLICY_UNSPECIFIED | :ALWAYS | :NEVER | :ON_DEMAND

  field :SQL_ACTIVATION_POLICY_UNSPECIFIED, 0

  field :ALWAYS, 1

  field :NEVER, 2

  field :ON_DEMAND, 3
end

defmodule Google.Cloud.Sql.V1.AclEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t(),
          expiration_time: Google.Protobuf.Timestamp.t() | nil,
          name: String.t(),
          kind: String.t()
        }

  defstruct [:value, :expiration_time, :name, :kind]

  field :value, 1, type: :string
  field :expiration_time, 2, type: Google.Protobuf.Timestamp
  field :name, 3, type: :string
  field :kind, 4, type: :string
end

defmodule Google.Cloud.Sql.V1.ApiWarning do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Cloud.Sql.V1.ApiWarning.SqlApiWarningCode.t(),
          message: String.t(),
          region: String.t()
        }

  defstruct [:code, :message, :region]

  field :code, 1, type: Google.Cloud.Sql.V1.ApiWarning.SqlApiWarningCode, enum: true
  field :message, 2, type: :string
  field :region, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.BackupRetentionSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          retention_unit: Google.Cloud.Sql.V1.BackupRetentionSettings.RetentionUnit.t(),
          retained_backups: Google.Protobuf.Int32Value.t() | nil
        }

  defstruct [:retention_unit, :retained_backups]

  field :retention_unit, 1,
    type: Google.Cloud.Sql.V1.BackupRetentionSettings.RetentionUnit,
    enum: true

  field :retained_backups, 2, type: Google.Protobuf.Int32Value
end

defmodule Google.Cloud.Sql.V1.BackupConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: String.t(),
          enabled: Google.Protobuf.BoolValue.t() | nil,
          kind: String.t(),
          binary_log_enabled: Google.Protobuf.BoolValue.t() | nil,
          replication_log_archiving_enabled: Google.Protobuf.BoolValue.t() | nil,
          location: String.t(),
          point_in_time_recovery_enabled: Google.Protobuf.BoolValue.t() | nil,
          backup_retention_settings: Google.Cloud.Sql.V1.BackupRetentionSettings.t() | nil,
          transaction_log_retention_days: Google.Protobuf.Int32Value.t() | nil
        }

  defstruct [
    :start_time,
    :enabled,
    :kind,
    :binary_log_enabled,
    :replication_log_archiving_enabled,
    :location,
    :point_in_time_recovery_enabled,
    :backup_retention_settings,
    :transaction_log_retention_days
  ]

  field :start_time, 1, type: :string
  field :enabled, 2, type: Google.Protobuf.BoolValue
  field :kind, 3, type: :string
  field :binary_log_enabled, 4, type: Google.Protobuf.BoolValue
  field :replication_log_archiving_enabled, 5, type: Google.Protobuf.BoolValue
  field :location, 6, type: :string
  field :point_in_time_recovery_enabled, 7, type: Google.Protobuf.BoolValue
  field :backup_retention_settings, 8, type: Google.Cloud.Sql.V1.BackupRetentionSettings
  field :transaction_log_retention_days, 9, type: Google.Protobuf.Int32Value
end

defmodule Google.Cloud.Sql.V1.BackupContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backup_id: integer,
          kind: String.t()
        }

  defstruct [:backup_id, :kind]

  field :backup_id, 1, type: :int64
  field :kind, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.Database do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database_details: {atom, any},
          kind: String.t(),
          charset: String.t(),
          collation: String.t(),
          etag: String.t(),
          name: String.t(),
          instance: String.t(),
          self_link: String.t(),
          project: String.t()
        }

  defstruct [
    :database_details,
    :kind,
    :charset,
    :collation,
    :etag,
    :name,
    :instance,
    :self_link,
    :project
  ]

  oneof :database_details, 0
  field :kind, 1, type: :string
  field :charset, 2, type: :string
  field :collation, 3, type: :string
  field :etag, 4, type: :string
  field :name, 5, type: :string
  field :instance, 6, type: :string
  field :self_link, 7, type: :string
  field :project, 8, type: :string

  field :sqlserver_database_details, 9,
    type: Google.Cloud.Sql.V1.SqlServerDatabaseDetails,
    oneof: 0
end

defmodule Google.Cloud.Sql.V1.SqlServerDatabaseDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          compatibility_level: integer,
          recovery_model: String.t()
        }

  defstruct [:compatibility_level, :recovery_model]

  field :compatibility_level, 1, type: :int32
  field :recovery_model, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.DatabaseFlags do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: String.t()
        }

  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.MySqlSyncConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          initial_sync_flags: [Google.Cloud.Sql.V1.SyncFlags.t()]
        }

  defstruct [:initial_sync_flags]

  field :initial_sync_flags, 1, repeated: true, type: Google.Cloud.Sql.V1.SyncFlags
end

defmodule Google.Cloud.Sql.V1.SyncFlags do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: String.t()
        }

  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.InstanceReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          region: String.t(),
          project: String.t()
        }

  defstruct [:name, :region, :project]

  field :name, 1, type: :string
  field :region, 2, type: :string
  field :project, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.DemoteMasterConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          mysql_replica_configuration:
            Google.Cloud.Sql.V1.DemoteMasterMySqlReplicaConfiguration.t() | nil
        }

  defstruct [:kind, :mysql_replica_configuration]

  field :kind, 1, type: :string

  field :mysql_replica_configuration, 2,
    type: Google.Cloud.Sql.V1.DemoteMasterMySqlReplicaConfiguration
end

defmodule Google.Cloud.Sql.V1.DemoteMasterMySqlReplicaConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          username: String.t(),
          password: String.t(),
          client_key: String.t(),
          client_certificate: String.t(),
          ca_certificate: String.t()
        }

  defstruct [:kind, :username, :password, :client_key, :client_certificate, :ca_certificate]

  field :kind, 1, type: :string
  field :username, 2, type: :string
  field :password, 3, type: :string
  field :client_key, 4, type: :string
  field :client_certificate, 5, type: :string
  field :ca_certificate, 6, type: :string
end

defmodule Google.Cloud.Sql.V1.ExportContext.SqlCsvExportOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          select_query: String.t(),
          escape_character: String.t(),
          quote_character: String.t(),
          fields_terminated_by: String.t(),
          lines_terminated_by: String.t()
        }

  defstruct [
    :select_query,
    :escape_character,
    :quote_character,
    :fields_terminated_by,
    :lines_terminated_by
  ]

  field :select_query, 1, type: :string
  field :escape_character, 2, type: :string
  field :quote_character, 3, type: :string
  field :fields_terminated_by, 4, type: :string
  field :lines_terminated_by, 6, type: :string
end

defmodule Google.Cloud.Sql.V1.ExportContext.SqlExportOptions.MysqlExportOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          master_data: Google.Protobuf.Int32Value.t() | nil
        }

  defstruct [:master_data]

  field :master_data, 1, type: Google.Protobuf.Int32Value
end

defmodule Google.Cloud.Sql.V1.ExportContext.SqlExportOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tables: [String.t()],
          schema_only: Google.Protobuf.BoolValue.t() | nil,
          mysql_export_options:
            Google.Cloud.Sql.V1.ExportContext.SqlExportOptions.MysqlExportOptions.t() | nil
        }

  defstruct [:tables, :schema_only, :mysql_export_options]

  field :tables, 1, repeated: true, type: :string
  field :schema_only, 2, type: Google.Protobuf.BoolValue

  field :mysql_export_options, 3,
    type: Google.Cloud.Sql.V1.ExportContext.SqlExportOptions.MysqlExportOptions
end

defmodule Google.Cloud.Sql.V1.ExportContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t(),
          databases: [String.t()],
          kind: String.t(),
          sql_export_options: Google.Cloud.Sql.V1.ExportContext.SqlExportOptions.t() | nil,
          csv_export_options: Google.Cloud.Sql.V1.ExportContext.SqlCsvExportOptions.t() | nil,
          file_type: Google.Cloud.Sql.V1.SqlFileType.t(),
          offload: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [
    :uri,
    :databases,
    :kind,
    :sql_export_options,
    :csv_export_options,
    :file_type,
    :offload
  ]

  field :uri, 1, type: :string
  field :databases, 2, repeated: true, type: :string
  field :kind, 3, type: :string
  field :sql_export_options, 4, type: Google.Cloud.Sql.V1.ExportContext.SqlExportOptions
  field :csv_export_options, 5, type: Google.Cloud.Sql.V1.ExportContext.SqlCsvExportOptions
  field :file_type, 6, type: Google.Cloud.Sql.V1.SqlFileType, enum: true
  field :offload, 8, type: Google.Protobuf.BoolValue
end

defmodule Google.Cloud.Sql.V1.ImportContext.SqlCsvImportOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table: String.t(),
          columns: [String.t()],
          escape_character: String.t(),
          quote_character: String.t(),
          fields_terminated_by: String.t(),
          lines_terminated_by: String.t()
        }

  defstruct [
    :table,
    :columns,
    :escape_character,
    :quote_character,
    :fields_terminated_by,
    :lines_terminated_by
  ]

  field :table, 1, type: :string
  field :columns, 2, repeated: true, type: :string
  field :escape_character, 4, type: :string
  field :quote_character, 5, type: :string
  field :fields_terminated_by, 6, type: :string
  field :lines_terminated_by, 8, type: :string
end

defmodule Google.Cloud.Sql.V1.ImportContext.SqlBakImportOptions.EncryptionOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cert_path: String.t(),
          pvk_path: String.t(),
          pvk_password: String.t()
        }

  defstruct [:cert_path, :pvk_path, :pvk_password]

  field :cert_path, 1, type: :string
  field :pvk_path, 2, type: :string
  field :pvk_password, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.ImportContext.SqlBakImportOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          encryption_options:
            Google.Cloud.Sql.V1.ImportContext.SqlBakImportOptions.EncryptionOptions.t() | nil
        }

  defstruct [:encryption_options]

  field :encryption_options, 1,
    type: Google.Cloud.Sql.V1.ImportContext.SqlBakImportOptions.EncryptionOptions
end

defmodule Google.Cloud.Sql.V1.ImportContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t(),
          database: String.t(),
          kind: String.t(),
          file_type: Google.Cloud.Sql.V1.SqlFileType.t(),
          csv_import_options: Google.Cloud.Sql.V1.ImportContext.SqlCsvImportOptions.t() | nil,
          import_user: String.t(),
          bak_import_options: Google.Cloud.Sql.V1.ImportContext.SqlBakImportOptions.t() | nil
        }

  defstruct [
    :uri,
    :database,
    :kind,
    :file_type,
    :csv_import_options,
    :import_user,
    :bak_import_options
  ]

  field :uri, 1, type: :string
  field :database, 2, type: :string
  field :kind, 3, type: :string
  field :file_type, 4, type: Google.Cloud.Sql.V1.SqlFileType, enum: true
  field :csv_import_options, 5, type: Google.Cloud.Sql.V1.ImportContext.SqlCsvImportOptions
  field :import_user, 6, type: :string
  field :bak_import_options, 7, type: Google.Cloud.Sql.V1.ImportContext.SqlBakImportOptions
end

defmodule Google.Cloud.Sql.V1.IpConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ipv4_enabled: Google.Protobuf.BoolValue.t() | nil,
          private_network: String.t(),
          require_ssl: Google.Protobuf.BoolValue.t() | nil,
          authorized_networks: [Google.Cloud.Sql.V1.AclEntry.t()],
          allocated_ip_range: String.t()
        }

  defstruct [
    :ipv4_enabled,
    :private_network,
    :require_ssl,
    :authorized_networks,
    :allocated_ip_range
  ]

  field :ipv4_enabled, 1, type: Google.Protobuf.BoolValue
  field :private_network, 2, type: :string
  field :require_ssl, 3, type: Google.Protobuf.BoolValue
  field :authorized_networks, 4, repeated: true, type: Google.Cloud.Sql.V1.AclEntry
  field :allocated_ip_range, 6, type: :string
end

defmodule Google.Cloud.Sql.V1.LocationPreference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          follow_gae_application: String.t(),
          zone: String.t(),
          secondary_zone: String.t(),
          kind: String.t()
        }

  defstruct [:follow_gae_application, :zone, :secondary_zone, :kind]

  field :follow_gae_application, 1, type: :string, deprecated: true
  field :zone, 2, type: :string
  field :secondary_zone, 4, type: :string
  field :kind, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.MaintenanceWindow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hour: Google.Protobuf.Int32Value.t() | nil,
          day: Google.Protobuf.Int32Value.t() | nil,
          update_track: Google.Cloud.Sql.V1.SqlUpdateTrack.t(),
          kind: String.t()
        }

  defstruct [:hour, :day, :update_track, :kind]

  field :hour, 1, type: Google.Protobuf.Int32Value
  field :day, 2, type: Google.Protobuf.Int32Value
  field :update_track, 3, type: Google.Cloud.Sql.V1.SqlUpdateTrack, enum: true
  field :kind, 4, type: :string
end

defmodule Google.Cloud.Sql.V1.DenyMaintenancePeriod do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_date: String.t(),
          end_date: String.t(),
          time: String.t()
        }

  defstruct [:start_date, :end_date, :time]

  field :start_date, 1, type: :string
  field :end_date, 2, type: :string
  field :time, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.InsightsConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query_insights_enabled: boolean,
          record_client_address: boolean,
          record_application_tags: boolean,
          query_string_length: Google.Protobuf.Int32Value.t() | nil,
          query_plans_per_minute: Google.Protobuf.Int32Value.t() | nil
        }

  defstruct [
    :query_insights_enabled,
    :record_client_address,
    :record_application_tags,
    :query_string_length,
    :query_plans_per_minute
  ]

  field :query_insights_enabled, 1, type: :bool
  field :record_client_address, 2, type: :bool
  field :record_application_tags, 3, type: :bool
  field :query_string_length, 4, type: Google.Protobuf.Int32Value
  field :query_plans_per_minute, 5, type: Google.Protobuf.Int32Value
end

defmodule Google.Cloud.Sql.V1.MySqlReplicaConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dump_file_path: String.t(),
          username: String.t(),
          password: String.t(),
          connect_retry_interval: Google.Protobuf.Int32Value.t() | nil,
          master_heartbeat_period: Google.Protobuf.Int64Value.t() | nil,
          ca_certificate: String.t(),
          client_certificate: String.t(),
          client_key: String.t(),
          ssl_cipher: String.t(),
          verify_server_certificate: Google.Protobuf.BoolValue.t() | nil,
          kind: String.t()
        }

  defstruct [
    :dump_file_path,
    :username,
    :password,
    :connect_retry_interval,
    :master_heartbeat_period,
    :ca_certificate,
    :client_certificate,
    :client_key,
    :ssl_cipher,
    :verify_server_certificate,
    :kind
  ]

  field :dump_file_path, 1, type: :string
  field :username, 2, type: :string
  field :password, 3, type: :string
  field :connect_retry_interval, 4, type: Google.Protobuf.Int32Value
  field :master_heartbeat_period, 5, type: Google.Protobuf.Int64Value
  field :ca_certificate, 6, type: :string
  field :client_certificate, 7, type: :string
  field :client_key, 8, type: :string
  field :ssl_cipher, 9, type: :string
  field :verify_server_certificate, 10, type: Google.Protobuf.BoolValue
  field :kind, 11, type: :string
end

defmodule Google.Cloud.Sql.V1.DiskEncryptionConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kms_key_name: String.t(),
          kind: String.t()
        }

  defstruct [:kms_key_name, :kind]

  field :kms_key_name, 1, type: :string
  field :kind, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.DiskEncryptionStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kms_key_version_name: String.t(),
          kind: String.t()
        }

  defstruct [:kms_key_version_name, :kind]

  field :kms_key_version_name, 1, type: :string
  field :kind, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.IpMapping do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Sql.V1.SqlIpAddressType.t(),
          ip_address: String.t(),
          time_to_retire: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:type, :ip_address, :time_to_retire]

  field :type, 1, type: Google.Cloud.Sql.V1.SqlIpAddressType, enum: true
  field :ip_address, 2, type: :string
  field :time_to_retire, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Sql.V1.Operation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          target_link: String.t(),
          status: Google.Cloud.Sql.V1.Operation.SqlOperationStatus.t(),
          user: String.t(),
          insert_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          error: Google.Cloud.Sql.V1.OperationErrors.t() | nil,
          operation_type: Google.Cloud.Sql.V1.Operation.SqlOperationType.t(),
          import_context: Google.Cloud.Sql.V1.ImportContext.t() | nil,
          export_context: Google.Cloud.Sql.V1.ExportContext.t() | nil,
          backup_context: Google.Cloud.Sql.V1.BackupContext.t() | nil,
          name: String.t(),
          target_id: String.t(),
          self_link: String.t(),
          target_project: String.t()
        }

  defstruct [
    :kind,
    :target_link,
    :status,
    :user,
    :insert_time,
    :start_time,
    :end_time,
    :error,
    :operation_type,
    :import_context,
    :export_context,
    :backup_context,
    :name,
    :target_id,
    :self_link,
    :target_project
  ]

  field :kind, 1, type: :string
  field :target_link, 2, type: :string
  field :status, 3, type: Google.Cloud.Sql.V1.Operation.SqlOperationStatus, enum: true
  field :user, 4, type: :string
  field :insert_time, 5, type: Google.Protobuf.Timestamp
  field :start_time, 6, type: Google.Protobuf.Timestamp
  field :end_time, 7, type: Google.Protobuf.Timestamp
  field :error, 8, type: Google.Cloud.Sql.V1.OperationErrors
  field :operation_type, 9, type: Google.Cloud.Sql.V1.Operation.SqlOperationType, enum: true
  field :import_context, 10, type: Google.Cloud.Sql.V1.ImportContext
  field :export_context, 11, type: Google.Cloud.Sql.V1.ExportContext
  field :backup_context, 17, type: Google.Cloud.Sql.V1.BackupContext
  field :name, 12, type: :string
  field :target_id, 13, type: :string
  field :self_link, 14, type: :string
  field :target_project, 15, type: :string
end

defmodule Google.Cloud.Sql.V1.OperationError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          code: String.t(),
          message: String.t()
        }

  defstruct [:kind, :code, :message]

  field :kind, 1, type: :string
  field :code, 2, type: :string
  field :message, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.OperationErrors do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          errors: [Google.Cloud.Sql.V1.OperationError.t()]
        }

  defstruct [:kind, :errors]

  field :kind, 1, type: :string
  field :errors, 2, repeated: true, type: Google.Cloud.Sql.V1.OperationError
end

defmodule Google.Cloud.Sql.V1.Settings.UserLabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.Settings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          settings_version: Google.Protobuf.Int64Value.t() | nil,
          authorized_gae_applications: [String.t()],
          tier: String.t(),
          kind: String.t(),
          user_labels: %{String.t() => String.t()},
          availability_type: Google.Cloud.Sql.V1.SqlAvailabilityType.t(),
          pricing_plan: Google.Cloud.Sql.V1.SqlPricingPlan.t(),
          replication_type: Google.Cloud.Sql.V1.SqlReplicationType.t(),
          storage_auto_resize_limit: Google.Protobuf.Int64Value.t() | nil,
          activation_policy: Google.Cloud.Sql.V1.Settings.SqlActivationPolicy.t(),
          ip_configuration: Google.Cloud.Sql.V1.IpConfiguration.t() | nil,
          storage_auto_resize: Google.Protobuf.BoolValue.t() | nil,
          location_preference: Google.Cloud.Sql.V1.LocationPreference.t() | nil,
          database_flags: [Google.Cloud.Sql.V1.DatabaseFlags.t()],
          data_disk_type: Google.Cloud.Sql.V1.SqlDataDiskType.t(),
          maintenance_window: Google.Cloud.Sql.V1.MaintenanceWindow.t() | nil,
          backup_configuration: Google.Cloud.Sql.V1.BackupConfiguration.t() | nil,
          database_replication_enabled: Google.Protobuf.BoolValue.t() | nil,
          crash_safe_replication_enabled: Google.Protobuf.BoolValue.t() | nil,
          data_disk_size_gb: Google.Protobuf.Int64Value.t() | nil,
          active_directory_config: Google.Cloud.Sql.V1.SqlActiveDirectoryConfig.t() | nil,
          collation: String.t(),
          deny_maintenance_periods: [Google.Cloud.Sql.V1.DenyMaintenancePeriod.t()],
          insights_config: Google.Cloud.Sql.V1.InsightsConfig.t() | nil,
          sql_server_audit_config: Google.Cloud.Sql.V1.SqlServerAuditConfig.t() | nil
        }

  defstruct [
    :settings_version,
    :authorized_gae_applications,
    :tier,
    :kind,
    :user_labels,
    :availability_type,
    :pricing_plan,
    :replication_type,
    :storage_auto_resize_limit,
    :activation_policy,
    :ip_configuration,
    :storage_auto_resize,
    :location_preference,
    :database_flags,
    :data_disk_type,
    :maintenance_window,
    :backup_configuration,
    :database_replication_enabled,
    :crash_safe_replication_enabled,
    :data_disk_size_gb,
    :active_directory_config,
    :collation,
    :deny_maintenance_periods,
    :insights_config,
    :sql_server_audit_config
  ]

  field :settings_version, 1, type: Google.Protobuf.Int64Value
  field :authorized_gae_applications, 2, repeated: true, type: :string, deprecated: true
  field :tier, 3, type: :string
  field :kind, 4, type: :string

  field :user_labels, 5,
    repeated: true,
    type: Google.Cloud.Sql.V1.Settings.UserLabelsEntry,
    map: true

  field :availability_type, 6, type: Google.Cloud.Sql.V1.SqlAvailabilityType, enum: true
  field :pricing_plan, 7, type: Google.Cloud.Sql.V1.SqlPricingPlan, enum: true

  field :replication_type, 8,
    type: Google.Cloud.Sql.V1.SqlReplicationType,
    deprecated: true,
    enum: true

  field :storage_auto_resize_limit, 9, type: Google.Protobuf.Int64Value
  field :activation_policy, 10, type: Google.Cloud.Sql.V1.Settings.SqlActivationPolicy, enum: true
  field :ip_configuration, 11, type: Google.Cloud.Sql.V1.IpConfiguration
  field :storage_auto_resize, 12, type: Google.Protobuf.BoolValue
  field :location_preference, 13, type: Google.Cloud.Sql.V1.LocationPreference
  field :database_flags, 14, repeated: true, type: Google.Cloud.Sql.V1.DatabaseFlags
  field :data_disk_type, 15, type: Google.Cloud.Sql.V1.SqlDataDiskType, enum: true
  field :maintenance_window, 16, type: Google.Cloud.Sql.V1.MaintenanceWindow
  field :backup_configuration, 17, type: Google.Cloud.Sql.V1.BackupConfiguration
  field :database_replication_enabled, 18, type: Google.Protobuf.BoolValue
  field :crash_safe_replication_enabled, 19, type: Google.Protobuf.BoolValue, deprecated: true
  field :data_disk_size_gb, 20, type: Google.Protobuf.Int64Value
  field :active_directory_config, 22, type: Google.Cloud.Sql.V1.SqlActiveDirectoryConfig
  field :collation, 23, type: :string

  field :deny_maintenance_periods, 24,
    repeated: true,
    type: Google.Cloud.Sql.V1.DenyMaintenancePeriod

  field :insights_config, 25, type: Google.Cloud.Sql.V1.InsightsConfig
  field :sql_server_audit_config, 29, type: Google.Cloud.Sql.V1.SqlServerAuditConfig
end

defmodule Google.Cloud.Sql.V1.SslCert do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          cert_serial_number: String.t(),
          cert: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          common_name: String.t(),
          expiration_time: Google.Protobuf.Timestamp.t() | nil,
          sha1_fingerprint: String.t(),
          instance: String.t(),
          self_link: String.t()
        }

  defstruct [
    :kind,
    :cert_serial_number,
    :cert,
    :create_time,
    :common_name,
    :expiration_time,
    :sha1_fingerprint,
    :instance,
    :self_link
  ]

  field :kind, 1, type: :string
  field :cert_serial_number, 2, type: :string
  field :cert, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp
  field :common_name, 5, type: :string
  field :expiration_time, 6, type: Google.Protobuf.Timestamp
  field :sha1_fingerprint, 7, type: :string
  field :instance, 8, type: :string
  field :self_link, 9, type: :string
end

defmodule Google.Cloud.Sql.V1.SslCertDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cert_info: Google.Cloud.Sql.V1.SslCert.t() | nil,
          cert_private_key: String.t()
        }

  defstruct [:cert_info, :cert_private_key]

  field :cert_info, 1, type: Google.Cloud.Sql.V1.SslCert
  field :cert_private_key, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlActiveDirectoryConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          domain: String.t()
        }

  defstruct [:kind, :domain]

  field :kind, 1, type: :string
  field :domain, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlServerAuditConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          bucket: String.t()
        }

  defstruct [:kind, :bucket]

  field :kind, 1, type: :string
  field :bucket, 2, type: :string
end
