defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.TableView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TABLE_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.Database.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :HIVE, 1
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.Table.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :HIVE, 1
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.Lock.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :EXCLUSIVE, 1
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.Lock.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :WAITING, 1
  field :ACQUIRED, 2
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.Catalog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :expire_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.Database do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :options, 0

  field :hive_options, 7,
    type: Google.Cloud.Bigquery.Biglake.V1alpha1.HiveDatabaseOptions,
    json_name: "hiveOptions",
    oneof: 0

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :expire_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :type, 6, type: Google.Cloud.Bigquery.Biglake.V1alpha1.Database.Type, enum: true
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.Table do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :options, 0

  field :hive_options, 7,
    type: Google.Cloud.Bigquery.Biglake.V1alpha1.HiveTableOptions,
    json_name: "hiveOptions",
    oneof: 0

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :expire_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :type, 6, type: Google.Cloud.Bigquery.Biglake.V1alpha1.Table.Type, enum: true
  field :etag, 8, type: :string
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.Lock do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :resources, 0

  field :table_id, 5, type: :string, json_name: "tableId", oneof: 0
  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :type, 3, type: Google.Cloud.Bigquery.Biglake.V1alpha1.Lock.Type, enum: true

  field :state, 4,
    type: Google.Cloud.Bigquery.Biglake.V1alpha1.Lock.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.CreateCatalogRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :catalog, 2, type: Google.Cloud.Bigquery.Biglake.V1alpha1.Catalog, deprecated: false
  field :catalog_id, 3, type: :string, json_name: "catalogId", deprecated: false
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.DeleteCatalogRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.GetCatalogRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.ListCatalogsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.ListCatalogsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :catalogs, 1, repeated: true, type: Google.Cloud.Bigquery.Biglake.V1alpha1.Catalog
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.CreateDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :database, 2, type: Google.Cloud.Bigquery.Biglake.V1alpha1.Database, deprecated: false
  field :database_id, 3, type: :string, json_name: "databaseId", deprecated: false
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.DeleteDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.UpdateDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :database, 1, type: Google.Cloud.Bigquery.Biglake.V1alpha1.Database, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.GetDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.ListDatabasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.ListDatabasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :databases, 1, repeated: true, type: Google.Cloud.Bigquery.Biglake.V1alpha1.Database
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.CreateTableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :table, 2, type: Google.Cloud.Bigquery.Biglake.V1alpha1.Table, deprecated: false
  field :table_id, 3, type: :string, json_name: "tableId", deprecated: false
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.DeleteTableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.UpdateTableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :table, 1, type: Google.Cloud.Bigquery.Biglake.V1alpha1.Table, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.RenameTableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :new_name, 2, type: :string, json_name: "newName", deprecated: false
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.GetTableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.ListTablesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :view, 4, type: Google.Cloud.Bigquery.Biglake.V1alpha1.TableView, enum: true
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.ListTablesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tables, 1, repeated: true, type: Google.Cloud.Bigquery.Biglake.V1alpha1.Table
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.CreateLockRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :lock, 2, type: Google.Cloud.Bigquery.Biglake.V1alpha1.Lock, deprecated: false
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.DeleteLockRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.CheckLockRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.ListLocksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.ListLocksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :locks, 1, repeated: true, type: Google.Cloud.Bigquery.Biglake.V1alpha1.Lock
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.HiveDatabaseOptions.ParametersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.HiveDatabaseOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :location_uri, 1, type: :string, json_name: "locationUri"

  field :parameters, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.Biglake.V1alpha1.HiveDatabaseOptions.ParametersEntry,
    map: true
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.HiveTableOptions.SerDeInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :serialization_lib, 1, type: :string, json_name: "serializationLib"
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.HiveTableOptions.StorageDescriptor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :location_uri, 1, type: :string, json_name: "locationUri"
  field :input_format, 2, type: :string, json_name: "inputFormat"
  field :output_format, 3, type: :string, json_name: "outputFormat"

  field :serde_info, 4,
    type: Google.Cloud.Bigquery.Biglake.V1alpha1.HiveTableOptions.SerDeInfo,
    json_name: "serdeInfo"
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.HiveTableOptions.ParametersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.HiveTableOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parameters, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Biglake.V1alpha1.HiveTableOptions.ParametersEntry,
    map: true

  field :table_type, 2, type: :string, json_name: "tableType"

  field :storage_descriptor, 3,
    type: Google.Cloud.Bigquery.Biglake.V1alpha1.HiveTableOptions.StorageDescriptor,
    json_name: "storageDescriptor"
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.MetastoreService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.bigquery.biglake.v1alpha1.MetastoreService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateCatalog,
      Google.Cloud.Bigquery.Biglake.V1alpha1.CreateCatalogRequest,
      Google.Cloud.Bigquery.Biglake.V1alpha1.Catalog

  rpc :DeleteCatalog,
      Google.Cloud.Bigquery.Biglake.V1alpha1.DeleteCatalogRequest,
      Google.Cloud.Bigquery.Biglake.V1alpha1.Catalog

  rpc :GetCatalog,
      Google.Cloud.Bigquery.Biglake.V1alpha1.GetCatalogRequest,
      Google.Cloud.Bigquery.Biglake.V1alpha1.Catalog

  rpc :ListCatalogs,
      Google.Cloud.Bigquery.Biglake.V1alpha1.ListCatalogsRequest,
      Google.Cloud.Bigquery.Biglake.V1alpha1.ListCatalogsResponse

  rpc :CreateDatabase,
      Google.Cloud.Bigquery.Biglake.V1alpha1.CreateDatabaseRequest,
      Google.Cloud.Bigquery.Biglake.V1alpha1.Database

  rpc :DeleteDatabase,
      Google.Cloud.Bigquery.Biglake.V1alpha1.DeleteDatabaseRequest,
      Google.Cloud.Bigquery.Biglake.V1alpha1.Database

  rpc :UpdateDatabase,
      Google.Cloud.Bigquery.Biglake.V1alpha1.UpdateDatabaseRequest,
      Google.Cloud.Bigquery.Biglake.V1alpha1.Database

  rpc :GetDatabase,
      Google.Cloud.Bigquery.Biglake.V1alpha1.GetDatabaseRequest,
      Google.Cloud.Bigquery.Biglake.V1alpha1.Database

  rpc :ListDatabases,
      Google.Cloud.Bigquery.Biglake.V1alpha1.ListDatabasesRequest,
      Google.Cloud.Bigquery.Biglake.V1alpha1.ListDatabasesResponse

  rpc :CreateTable,
      Google.Cloud.Bigquery.Biglake.V1alpha1.CreateTableRequest,
      Google.Cloud.Bigquery.Biglake.V1alpha1.Table

  rpc :DeleteTable,
      Google.Cloud.Bigquery.Biglake.V1alpha1.DeleteTableRequest,
      Google.Cloud.Bigquery.Biglake.V1alpha1.Table

  rpc :UpdateTable,
      Google.Cloud.Bigquery.Biglake.V1alpha1.UpdateTableRequest,
      Google.Cloud.Bigquery.Biglake.V1alpha1.Table

  rpc :RenameTable,
      Google.Cloud.Bigquery.Biglake.V1alpha1.RenameTableRequest,
      Google.Cloud.Bigquery.Biglake.V1alpha1.Table

  rpc :GetTable,
      Google.Cloud.Bigquery.Biglake.V1alpha1.GetTableRequest,
      Google.Cloud.Bigquery.Biglake.V1alpha1.Table

  rpc :ListTables,
      Google.Cloud.Bigquery.Biglake.V1alpha1.ListTablesRequest,
      Google.Cloud.Bigquery.Biglake.V1alpha1.ListTablesResponse

  rpc :CreateLock,
      Google.Cloud.Bigquery.Biglake.V1alpha1.CreateLockRequest,
      Google.Cloud.Bigquery.Biglake.V1alpha1.Lock

  rpc :DeleteLock, Google.Cloud.Bigquery.Biglake.V1alpha1.DeleteLockRequest, Google.Protobuf.Empty

  rpc :CheckLock,
      Google.Cloud.Bigquery.Biglake.V1alpha1.CheckLockRequest,
      Google.Cloud.Bigquery.Biglake.V1alpha1.Lock

  rpc :ListLocks,
      Google.Cloud.Bigquery.Biglake.V1alpha1.ListLocksRequest,
      Google.Cloud.Bigquery.Biglake.V1alpha1.ListLocksResponse
end

defmodule Google.Cloud.Bigquery.Biglake.V1alpha1.MetastoreService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Bigquery.Biglake.V1alpha1.MetastoreService.Service
end
