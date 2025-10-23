defmodule Google.Cloud.Oracledatabase.V1.Database.OperationsInsightsStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OPERATIONS_INSIGHTS_STATUS_UNSPECIFIED, 0
  field :ENABLING, 1
  field :ENABLED, 2
  field :DISABLING, 3
  field :NOT_ENABLED, 4
  field :FAILED_ENABLING, 5
  field :FAILED_DISABLING, 6
end

defmodule Google.Cloud.Oracledatabase.V1.DatabaseProperties.DatabaseLifecycleState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DATABASE_LIFECYCLE_STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :AVAILABLE, 2
  field :UPDATING, 3
  field :BACKUP_IN_PROGRESS, 4
  field :UPGRADING, 5
  field :CONVERTING, 6
  field :TERMINATING, 7
  field :TERMINATED, 8
  field :RESTORE_FAILED, 9
  field :FAILED, 10
end

defmodule Google.Cloud.Oracledatabase.V1.DbBackupConfig.BackupDestinationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BACKUP_DESTINATION_TYPE_UNSPECIFIED, 0
  field :NFS, 1
  field :RECOVERY_APPLIANCE, 2
  field :OBJECT_STORE, 3
  field :LOCAL, 4
  field :DBRS, 5
end

defmodule Google.Cloud.Oracledatabase.V1.DbBackupConfig.BackupWindow do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BACKUP_WINDOW_UNSPECIFIED, 0
  field :SLOT_ONE, 1
  field :SLOT_TWO, 2
  field :SLOT_THREE, 3
  field :SLOT_FOUR, 4
  field :SLOT_FIVE, 5
  field :SLOT_SIX, 6
  field :SLOT_SEVEN, 7
  field :SLOT_EIGHT, 8
  field :SLOT_NINE, 9
  field :SLOT_TEN, 10
  field :SLOT_ELEVEN, 11
  field :SLOT_TWELVE, 12
end

defmodule Google.Cloud.Oracledatabase.V1.DbBackupConfig.BackupDeletionPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BACKUP_DELETION_POLICY_UNSPECIFIED, 0
  field :DELETE_IMMEDIATELY, 1
  field :DELETE_AFTER_RETENTION_PERIOD, 2
end

defmodule Google.Cloud.Oracledatabase.V1.Database do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :db_name, 2, type: :string, json_name: "dbName", deprecated: false
  field :db_unique_name, 3, type: :string, json_name: "dbUniqueName", deprecated: false
  field :admin_password, 4, type: :string, json_name: "adminPassword", deprecated: false
  field :tde_wallet_password, 5, type: :string, json_name: "tdeWalletPassword", deprecated: false
  field :character_set, 6, type: :string, json_name: "characterSet", deprecated: false
  field :ncharacter_set, 7, type: :string, json_name: "ncharacterSet", deprecated: false
  field :oci_url, 8, type: :string, json_name: "ociUrl", deprecated: false

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :properties, 10,
    type: Google.Cloud.Oracledatabase.V1.DatabaseProperties,
    deprecated: false

  field :database_id, 11, type: :string, json_name: "databaseId", deprecated: false
  field :db_home_name, 12, type: :string, json_name: "dbHomeName", deprecated: false
  field :gcp_oracle_zone, 13, type: :string, json_name: "gcpOracleZone", deprecated: false

  field :ops_insights_status, 14,
    type: Google.Cloud.Oracledatabase.V1.Database.OperationsInsightsStatus,
    json_name: "opsInsightsStatus",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DatabaseProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Oracledatabase.V1.DatabaseProperties.DatabaseLifecycleState,
    enum: true,
    deprecated: false

  field :db_version, 2, type: :string, json_name: "dbVersion", deprecated: false

  field :db_backup_config, 3,
    type: Google.Cloud.Oracledatabase.V1.DbBackupConfig,
    json_name: "dbBackupConfig",
    deprecated: false

  field :database_management_config, 4,
    type: Google.Cloud.Oracledatabase.V1.DatabaseManagementConfig,
    json_name: "databaseManagementConfig",
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DbBackupConfig.BackupDestinationDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Oracledatabase.V1.DbBackupConfig.BackupDestinationType,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DbBackupConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :auto_backup_enabled, 1, type: :bool, json_name: "autoBackupEnabled", deprecated: false

  field :backup_destination_details, 2,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.DbBackupConfig.BackupDestinationDetails,
    json_name: "backupDestinationDetails",
    deprecated: false

  field :retention_period_days, 3,
    type: :int32,
    json_name: "retentionPeriodDays",
    deprecated: false

  field :backup_deletion_policy, 4,
    type: Google.Cloud.Oracledatabase.V1.DbBackupConfig.BackupDeletionPolicy,
    json_name: "backupDeletionPolicy",
    enum: true,
    deprecated: false

  field :auto_full_backup_day, 5,
    type: Google.Type.DayOfWeek,
    json_name: "autoFullBackupDay",
    enum: true,
    deprecated: false

  field :auto_full_backup_window, 6,
    type: Google.Cloud.Oracledatabase.V1.DbBackupConfig.BackupWindow,
    json_name: "autoFullBackupWindow",
    enum: true,
    deprecated: false

  field :auto_incremental_backup_window, 7,
    type: Google.Cloud.Oracledatabase.V1.DbBackupConfig.BackupWindow,
    json_name: "autoIncrementalBackupWindow",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.GetDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListDatabasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListDatabasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :databases, 1, repeated: true, type: Google.Cloud.Oracledatabase.V1.Database
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
