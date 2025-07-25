defmodule Google.Cloud.Netapp.V1.BackupVault.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :DELETING, 3
  field :ERROR, 4
  field :UPDATING, 5
end

defmodule Google.Cloud.Netapp.V1.BackupVault.BackupVaultType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BACKUP_VAULT_TYPE_UNSPECIFIED, 0
  field :IN_REGION, 1
  field :CROSS_REGION, 2
end

defmodule Google.Cloud.Netapp.V1.BackupVault.BackupRetentionPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :backup_minimum_enforced_retention_days, 1,
    type: :int32,
    json_name: "backupMinimumEnforcedRetentionDays",
    deprecated: false

  field :daily_backup_immutable, 2,
    type: :bool,
    json_name: "dailyBackupImmutable",
    deprecated: false

  field :weekly_backup_immutable, 3,
    type: :bool,
    json_name: "weeklyBackupImmutable",
    deprecated: false

  field :monthly_backup_immutable, 4,
    type: :bool,
    json_name: "monthlyBackupImmutable",
    deprecated: false

  field :manual_backup_immutable, 5,
    type: :bool,
    json_name: "manualBackupImmutable",
    deprecated: false
end

defmodule Google.Cloud.Netapp.V1.BackupVault.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Netapp.V1.BackupVault do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :state, 2, type: Google.Cloud.Netapp.V1.BackupVault.State, enum: true, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :description, 4, type: :string

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Netapp.V1.BackupVault.LabelsEntry,
    map: true

  field :backup_vault_type, 6,
    type: Google.Cloud.Netapp.V1.BackupVault.BackupVaultType,
    json_name: "backupVaultType",
    enum: true,
    deprecated: false

  field :source_region, 7, type: :string, json_name: "sourceRegion", deprecated: false
  field :backup_region, 8, type: :string, json_name: "backupRegion", deprecated: false
  field :source_backup_vault, 9, type: :string, json_name: "sourceBackupVault", deprecated: false

  field :destination_backup_vault, 10,
    type: :string,
    json_name: "destinationBackupVault",
    deprecated: false

  field :backup_retention_policy, 11,
    type: Google.Cloud.Netapp.V1.BackupVault.BackupRetentionPolicy,
    json_name: "backupRetentionPolicy",
    deprecated: false
end

defmodule Google.Cloud.Netapp.V1.GetBackupVaultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.ListBackupVaultsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Netapp.V1.ListBackupVaultsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :backup_vaults, 1,
    repeated: true,
    type: Google.Cloud.Netapp.V1.BackupVault,
    json_name: "backupVaults"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Netapp.V1.CreateBackupVaultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :backup_vault_id, 2, type: :string, json_name: "backupVaultId", deprecated: false

  field :backup_vault, 3,
    type: Google.Cloud.Netapp.V1.BackupVault,
    json_name: "backupVault",
    deprecated: false
end

defmodule Google.Cloud.Netapp.V1.DeleteBackupVaultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.UpdateBackupVaultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :backup_vault, 2,
    type: Google.Cloud.Netapp.V1.BackupVault,
    json_name: "backupVault",
    deprecated: false
end
