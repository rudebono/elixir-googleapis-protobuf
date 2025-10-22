defmodule Google.Cloud.Oracledatabase.V1.PluggableDatabaseProperties.PluggableDatabaseLifecycleState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PLUGGABLE_DATABASE_LIFECYCLE_STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :AVAILABLE, 2
  field :TERMINATING, 3
  field :TERMINATED, 4
  field :UPDATING, 5
  field :FAILED, 6
  field :RELOCATING, 7
  field :RELOCATED, 8
  field :REFRESHING, 9
  field :RESTORE_IN_PROGRESS, 10
  field :RESTORE_FAILED, 11
  field :BACKUP_IN_PROGRESS, 12
  field :DISABLED, 13
end

defmodule Google.Cloud.Oracledatabase.V1.PluggableDatabaseProperties.OperationsInsightsState do
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

defmodule Google.Cloud.Oracledatabase.V1.PluggableDatabaseNodeLevelDetails.PluggableDatabaseOpenMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PLUGGABLE_DATABASE_OPEN_MODE_UNSPECIFIED, 0
  field :READ_ONLY, 1
  field :READ_WRITE, 2
  field :MOUNTED, 3
  field :MIGRATE, 4
end

defmodule Google.Cloud.Oracledatabase.V1.DatabaseManagementConfig.ManagementState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MANAGEMENT_STATE_UNSPECIFIED, 0
  field :ENABLING, 1
  field :ENABLED, 2
  field :DISABLING, 3
  field :DISABLED, 4
  field :UPDATING, 5
  field :FAILED_ENABLING, 6
  field :FAILED_DISABLING, 7
  field :FAILED_UPDATING, 8
end

defmodule Google.Cloud.Oracledatabase.V1.DatabaseManagementConfig.ManagementType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MANAGEMENT_TYPE_UNSPECIFIED, 0
  field :BASIC, 1
  field :ADVANCED, 2
end

defmodule Google.Cloud.Oracledatabase.V1.PluggableDatabase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :properties, 2,
    type: Google.Cloud.Oracledatabase.V1.PluggableDatabaseProperties,
    deprecated: false

  field :oci_url, 3, type: :string, json_name: "ociUrl", deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.PluggableDatabaseProperties.DefinedTagValue.TagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Oracledatabase.V1.PluggableDatabaseProperties.DefinedTagValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tags, 1,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.PluggableDatabaseProperties.DefinedTagValue.TagsEntry,
    map: true
end

defmodule Google.Cloud.Oracledatabase.V1.PluggableDatabaseProperties.DefinedTagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string

  field :value, 2,
    type: Google.Cloud.Oracledatabase.V1.PluggableDatabaseProperties.DefinedTagValue
end

defmodule Google.Cloud.Oracledatabase.V1.PluggableDatabaseProperties.FreeformTagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Oracledatabase.V1.PluggableDatabaseProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :compartment_id, 1, type: :string, json_name: "compartmentId", deprecated: false

  field :connection_strings, 2,
    type: Google.Cloud.Oracledatabase.V1.PluggableDatabaseConnectionStrings,
    json_name: "connectionStrings",
    deprecated: false

  field :container_database_ocid, 3,
    type: :string,
    json_name: "containerDatabaseOcid",
    deprecated: false

  field :defined_tags, 4,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.PluggableDatabaseProperties.DefinedTagsEntry,
    json_name: "definedTags",
    map: true,
    deprecated: false

  field :freeform_tags, 5,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.PluggableDatabaseProperties.FreeformTagsEntry,
    json_name: "freeformTags",
    map: true,
    deprecated: false

  field :ocid, 6, type: :string, deprecated: false
  field :is_restricted, 7, type: :bool, json_name: "isRestricted", deprecated: false
  field :lifecycle_details, 8, type: :string, json_name: "lifecycleDetails", deprecated: false

  field :lifecycle_state, 9,
    type:
      Google.Cloud.Oracledatabase.V1.PluggableDatabaseProperties.PluggableDatabaseLifecycleState,
    json_name: "lifecycleState",
    enum: true,
    deprecated: false

  field :pdb_name, 10, type: :string, json_name: "pdbName", deprecated: false

  field :pdb_node_level_details, 11,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.PluggableDatabaseNodeLevelDetails,
    json_name: "pdbNodeLevelDetails",
    deprecated: false

  field :database_management_config, 13,
    type: Google.Cloud.Oracledatabase.V1.DatabaseManagementConfig,
    json_name: "databaseManagementConfig",
    deprecated: false

  field :operations_insights_state, 14,
    type: Google.Cloud.Oracledatabase.V1.PluggableDatabaseProperties.OperationsInsightsState,
    json_name: "operationsInsightsState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.PluggableDatabaseConnectionStrings.AllConnectionStringsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Oracledatabase.V1.PluggableDatabaseConnectionStrings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :all_connection_strings, 1,
    repeated: true,
    type:
      Google.Cloud.Oracledatabase.V1.PluggableDatabaseConnectionStrings.AllConnectionStringsEntry,
    json_name: "allConnectionStrings",
    map: true,
    deprecated: false

  field :pdb_default, 2, type: :string, json_name: "pdbDefault", deprecated: false
  field :pdb_ip_default, 3, type: :string, json_name: "pdbIpDefault", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.PluggableDatabaseNodeLevelDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :node_name, 1, type: :string, json_name: "nodeName", deprecated: false

  field :open_mode, 2,
    type:
      Google.Cloud.Oracledatabase.V1.PluggableDatabaseNodeLevelDetails.PluggableDatabaseOpenMode,
    json_name: "openMode",
    enum: true,
    deprecated: false

  field :pluggable_database_id, 3,
    type: :string,
    json_name: "pluggableDatabaseId",
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DatabaseManagementConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :management_state, 1,
    type: Google.Cloud.Oracledatabase.V1.DatabaseManagementConfig.ManagementState,
    json_name: "managementState",
    enum: true,
    deprecated: false

  field :management_type, 2,
    type: Google.Cloud.Oracledatabase.V1.DatabaseManagementConfig.ManagementType,
    json_name: "managementType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.GetPluggableDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListPluggableDatabasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListPluggableDatabasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pluggable_databases, 1,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.PluggableDatabase,
    json_name: "pluggableDatabases"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
