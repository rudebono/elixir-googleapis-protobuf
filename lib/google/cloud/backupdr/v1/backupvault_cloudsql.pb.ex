defmodule Google.Cloud.Backupdr.V1.CloudSqlInstanceInitializationConfig.Edition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EDITION_UNSPECIFIED, 0
  field :ENTERPRISE, 1
  field :ENTERPRISE_PLUS, 2
end

defmodule Google.Cloud.Backupdr.V1.CloudSqlInstanceDataSourceProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :database_installed_version, 2,
    type: :string,
    json_name: "databaseInstalledVersion",
    deprecated: false

  field :instance_create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "instanceCreateTime",
    deprecated: false

  field :instance_tier, 5, type: :string, json_name: "instanceTier", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.CloudSqlInstanceBackupProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :database_installed_version, 2,
    type: :string,
    json_name: "databaseInstalledVersion",
    deprecated: false

  field :final_backup, 3, type: :bool, json_name: "finalBackup", deprecated: false
  field :source_instance, 4, type: :string, json_name: "sourceInstance", deprecated: false
  field :instance_tier, 6, type: :string, json_name: "instanceTier", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.CloudSqlInstanceDataSourceReferenceProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :database_installed_version, 2,
    type: :string,
    json_name: "databaseInstalledVersion",
    deprecated: false

  field :instance_create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "instanceCreateTime",
    deprecated: false

  field :instance_tier, 5, type: :string, json_name: "instanceTier", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.CloudSqlInstanceInitializationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :edition, 1,
    type: Google.Cloud.Backupdr.V1.CloudSqlInstanceInitializationConfig.Edition,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.CloudSqlInstanceBackupPlanAssociationProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance_create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "instanceCreateTime",
    deprecated: false
end
