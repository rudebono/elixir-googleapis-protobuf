defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseBackupProperties.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :DELETED, 4
  field :FAILED, 6
  field :UPDATING, 7
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseBackupProperties.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :INCREMENTAL, 1
  field :FULL, 2
  field :LONG_TERM, 3
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseBackup.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseBackup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :autonomous_database, 2, type: :string, json_name: "autonomousDatabase", deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false

  field :properties, 4,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseBackupProperties,
    deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseBackup.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.AutonomousDatabaseBackupProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ocid, 1, type: :string, deprecated: false

  field :retention_period_days, 2,
    type: :int32,
    json_name: "retentionPeriodDays",
    deprecated: false

  field :compartment_id, 3, type: :string, json_name: "compartmentId", deprecated: false
  field :database_size_tb, 4, type: :float, json_name: "databaseSizeTb", deprecated: false
  field :db_version, 5, type: :string, json_name: "dbVersion", deprecated: false
  field :is_long_term_backup, 6, type: :bool, json_name: "isLongTermBackup", deprecated: false
  field :is_automatic_backup, 7, type: :bool, json_name: "isAutomaticBackup", deprecated: false
  field :is_restorable, 8, type: :bool, json_name: "isRestorable", deprecated: false
  field :key_store_id, 9, type: :string, json_name: "keyStoreId", deprecated: false
  field :key_store_wallet, 10, type: :string, json_name: "keyStoreWallet", deprecated: false
  field :kms_key_id, 11, type: :string, json_name: "kmsKeyId", deprecated: false
  field :kms_key_version_id, 12, type: :string, json_name: "kmsKeyVersionId", deprecated: false
  field :lifecycle_details, 13, type: :string, json_name: "lifecycleDetails", deprecated: false

  field :lifecycle_state, 14,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseBackupProperties.State,
    json_name: "lifecycleState",
    enum: true,
    deprecated: false

  field :size_tb, 15, type: :float, json_name: "sizeTb", deprecated: false

  field :available_till_time, 16,
    type: Google.Protobuf.Timestamp,
    json_name: "availableTillTime",
    deprecated: false

  field :end_time, 17, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :start_time, 18,
    type: Google.Protobuf.Timestamp,
    json_name: "startTime",
    deprecated: false

  field :type, 19,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseBackupProperties.Type,
    enum: true,
    deprecated: false

  field :vault_id, 20, type: :string, json_name: "vaultId", deprecated: false
end
