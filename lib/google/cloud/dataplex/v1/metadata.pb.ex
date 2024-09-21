defmodule Google.Cloud.Dataplex.V1.StorageSystem do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STORAGE_SYSTEM_UNSPECIFIED, 0
  field :CLOUD_STORAGE, 1
  field :BIGQUERY, 2
end

defmodule Google.Cloud.Dataplex.V1.ListEntitiesRequest.EntityView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ENTITY_VIEW_UNSPECIFIED, 0
  field :TABLES, 1
  field :FILESETS, 2
end

defmodule Google.Cloud.Dataplex.V1.GetEntityRequest.EntityView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ENTITY_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :SCHEMA, 2
  field :FULL, 4
end

defmodule Google.Cloud.Dataplex.V1.Entity.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :TABLE, 1
  field :FILESET, 2
end

defmodule Google.Cloud.Dataplex.V1.Schema.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :BOOLEAN, 1
  field :BYTE, 2
  field :INT16, 3
  field :INT32, 4
  field :INT64, 5
  field :FLOAT, 6
  field :DOUBLE, 7
  field :DECIMAL, 8
  field :STRING, 9
  field :BINARY, 10
  field :TIMESTAMP, 11
  field :DATE, 12
  field :TIME, 13
  field :RECORD, 14
  field :NULL, 100
end

defmodule Google.Cloud.Dataplex.V1.Schema.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :REQUIRED, 1
  field :NULLABLE, 2
  field :REPEATED, 3
end

defmodule Google.Cloud.Dataplex.V1.Schema.PartitionStyle do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :PARTITION_STYLE_UNSPECIFIED, 0
  field :HIVE_COMPATIBLE, 1
end

defmodule Google.Cloud.Dataplex.V1.StorageFormat.Format do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :FORMAT_UNSPECIFIED, 0
  field :PARQUET, 1
  field :AVRO, 2
  field :ORC, 3
  field :CSV, 100
  field :JSON, 101
  field :IMAGE, 200
  field :AUDIO, 201
  field :VIDEO, 202
  field :TEXT, 203
  field :TFRECORD, 204
  field :OTHER, 1000
  field :UNKNOWN, 1001
end

defmodule Google.Cloud.Dataplex.V1.StorageFormat.CompressionFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :COMPRESSION_FORMAT_UNSPECIFIED, 0
  field :GZIP, 2
  field :BZIP2, 3
end

defmodule Google.Cloud.Dataplex.V1.StorageAccess.AccessMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ACCESS_MODE_UNSPECIFIED, 0
  field :DIRECT, 1
  field :MANAGED, 2
end

defmodule Google.Cloud.Dataplex.V1.CreateEntityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :entity, 3, type: Google.Cloud.Dataplex.V1.Entity, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.UpdateEntityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entity, 2, type: Google.Cloud.Dataplex.V1.Entity, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DeleteEntityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListEntitiesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :view, 2,
    type: Google.Cloud.Dataplex.V1.ListEntitiesRequest.EntityView,
    enum: true,
    deprecated: false

  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListEntitiesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entities, 1, repeated: true, type: Google.Cloud.Dataplex.V1.Entity
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dataplex.V1.GetEntityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :view, 2,
    type: Google.Cloud.Dataplex.V1.GetEntityRequest.EntityView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListPartitionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.CreatePartitionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :partition, 3, type: Google.Cloud.Dataplex.V1.Partition, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DeletePartitionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: true
end

defmodule Google.Cloud.Dataplex.V1.ListPartitionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :partitions, 1, repeated: true, type: Google.Cloud.Dataplex.V1.Partition
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dataplex.V1.GetPartitionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.Entity.CompatibilityStatus.Compatibility do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :compatible, 1, type: :bool, deprecated: false
  field :reason, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.Entity.CompatibilityStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :hive_metastore, 1,
    type: Google.Cloud.Dataplex.V1.Entity.CompatibilityStatus.Compatibility,
    json_name: "hiveMetastore",
    deprecated: false

  field :bigquery, 2,
    type: Google.Cloud.Dataplex.V1.Entity.CompatibilityStatus.Compatibility,
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.Entity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :id, 7, type: :string, deprecated: false
  field :etag, 8, type: :string, deprecated: false
  field :type, 10, type: Google.Cloud.Dataplex.V1.Entity.Type, enum: true, deprecated: false
  field :asset, 11, type: :string, deprecated: false
  field :data_path, 12, type: :string, json_name: "dataPath", deprecated: false
  field :data_path_pattern, 13, type: :string, json_name: "dataPathPattern", deprecated: false
  field :catalog_entry, 14, type: :string, json_name: "catalogEntry", deprecated: false
  field :system, 15, type: Google.Cloud.Dataplex.V1.StorageSystem, enum: true, deprecated: false
  field :format, 16, type: Google.Cloud.Dataplex.V1.StorageFormat, deprecated: false

  field :compatibility, 19,
    type: Google.Cloud.Dataplex.V1.Entity.CompatibilityStatus,
    deprecated: false

  field :access, 21, type: Google.Cloud.Dataplex.V1.StorageAccess, deprecated: false
  field :uid, 22, type: :string, deprecated: false
  field :schema, 50, type: Google.Cloud.Dataplex.V1.Schema, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.Partition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :values, 2, repeated: true, type: :string, deprecated: false
  field :location, 3, type: :string, deprecated: false
  field :etag, 4, type: :string, deprecated: true
end

defmodule Google.Cloud.Dataplex.V1.Schema.SchemaField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :type, 3, type: Google.Cloud.Dataplex.V1.Schema.Type, enum: true, deprecated: false
  field :mode, 4, type: Google.Cloud.Dataplex.V1.Schema.Mode, enum: true, deprecated: false

  field :fields, 10,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.Schema.SchemaField,
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.Schema.PartitionField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :type, 2, type: Google.Cloud.Dataplex.V1.Schema.Type, enum: true, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.Schema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :user_managed, 1, type: :bool, json_name: "userManaged", deprecated: false

  field :fields, 2,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.Schema.SchemaField,
    deprecated: false

  field :partition_fields, 3,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.Schema.PartitionField,
    json_name: "partitionFields",
    deprecated: false

  field :partition_style, 4,
    type: Google.Cloud.Dataplex.V1.Schema.PartitionStyle,
    json_name: "partitionStyle",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.StorageFormat.CsvOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :encoding, 1, type: :string, deprecated: false
  field :header_rows, 2, type: :int32, json_name: "headerRows", deprecated: false
  field :delimiter, 3, type: :string, deprecated: false
  field :quote, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.StorageFormat.JsonOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :encoding, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.StorageFormat.IcebergOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :metadata_location, 1, type: :string, json_name: "metadataLocation", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.StorageFormat do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :options, 0

  field :format, 1,
    type: Google.Cloud.Dataplex.V1.StorageFormat.Format,
    enum: true,
    deprecated: false

  field :compression_format, 2,
    type: Google.Cloud.Dataplex.V1.StorageFormat.CompressionFormat,
    json_name: "compressionFormat",
    enum: true,
    deprecated: false

  field :mime_type, 3, type: :string, json_name: "mimeType", deprecated: false

  field :csv, 10,
    type: Google.Cloud.Dataplex.V1.StorageFormat.CsvOptions,
    oneof: 0,
    deprecated: false

  field :json, 11,
    type: Google.Cloud.Dataplex.V1.StorageFormat.JsonOptions,
    oneof: 0,
    deprecated: false

  field :iceberg, 12,
    type: Google.Cloud.Dataplex.V1.StorageFormat.IcebergOptions,
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.StorageAccess do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :read, 21,
    type: Google.Cloud.Dataplex.V1.StorageAccess.AccessMode,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.MetadataService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dataplex.v1.MetadataService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateEntity, Google.Cloud.Dataplex.V1.CreateEntityRequest, Google.Cloud.Dataplex.V1.Entity

  rpc :UpdateEntity, Google.Cloud.Dataplex.V1.UpdateEntityRequest, Google.Cloud.Dataplex.V1.Entity

  rpc :DeleteEntity, Google.Cloud.Dataplex.V1.DeleteEntityRequest, Google.Protobuf.Empty

  rpc :GetEntity, Google.Cloud.Dataplex.V1.GetEntityRequest, Google.Cloud.Dataplex.V1.Entity

  rpc :ListEntities,
      Google.Cloud.Dataplex.V1.ListEntitiesRequest,
      Google.Cloud.Dataplex.V1.ListEntitiesResponse

  rpc :CreatePartition,
      Google.Cloud.Dataplex.V1.CreatePartitionRequest,
      Google.Cloud.Dataplex.V1.Partition

  rpc :DeletePartition, Google.Cloud.Dataplex.V1.DeletePartitionRequest, Google.Protobuf.Empty

  rpc :GetPartition,
      Google.Cloud.Dataplex.V1.GetPartitionRequest,
      Google.Cloud.Dataplex.V1.Partition

  rpc :ListPartitions,
      Google.Cloud.Dataplex.V1.ListPartitionsRequest,
      Google.Cloud.Dataplex.V1.ListPartitionsResponse
end

defmodule Google.Cloud.Dataplex.V1.MetadataService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dataplex.V1.MetadataService.Service
end