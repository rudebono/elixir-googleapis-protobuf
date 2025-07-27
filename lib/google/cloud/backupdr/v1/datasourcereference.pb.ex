defmodule Google.Cloud.Backupdr.V1.DataSourceReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :data_source, 2, type: :string, json_name: "dataSource", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :data_source_backup_config_state, 4,
    type: Google.Cloud.Backupdr.V1.BackupConfigState,
    json_name: "dataSourceBackupConfigState",
    enum: true,
    deprecated: false

  field :data_source_backup_count, 5,
    type: :int64,
    json_name: "dataSourceBackupCount",
    deprecated: false

  field :data_source_backup_config_info, 6,
    type: Google.Cloud.Backupdr.V1.DataSourceBackupConfigInfo,
    json_name: "dataSourceBackupConfigInfo",
    deprecated: false

  field :data_source_gcp_resource_info, 7,
    type: Google.Cloud.Backupdr.V1.DataSourceGcpResourceInfo,
    json_name: "dataSourceGcpResourceInfo",
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.DataSourceBackupConfigInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :last_backup_state, 1,
    type: Google.Cloud.Backupdr.V1.BackupConfigInfo.LastBackupState,
    json_name: "lastBackupState",
    enum: true,
    deprecated: false

  field :last_successful_backup_consistency_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "lastSuccessfulBackupConsistencyTime",
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.DataSourceGcpResourceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :resource_properties, 0

  field :gcp_resourcename, 1, type: :string, json_name: "gcpResourcename", deprecated: false
  field :type, 2, type: :string, deprecated: false
  field :location, 3, type: :string, deprecated: false

  field :cloud_sql_instance_properties, 4,
    type: Google.Cloud.Backupdr.V1.CloudSqlInstanceDataSourceReferenceProperties,
    json_name: "cloudSqlInstanceProperties",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.GetDataSourceReferenceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.FetchDataSourceReferencesForResourceTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :resource_type, 2, type: :string, json_name: "resourceType", deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 5, type: :string, deprecated: false
  field :order_by, 6, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.FetchDataSourceReferencesForResourceTypeResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_source_references, 1,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.DataSourceReference,
    json_name: "dataSourceReferences"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
