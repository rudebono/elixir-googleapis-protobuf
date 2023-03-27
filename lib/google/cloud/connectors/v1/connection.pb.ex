defmodule Google.Cloud.Connectors.V1.DataType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :DATA_TYPE_UNSPECIFIED, 0
  field :DATA_TYPE_INT, 1
  field :DATA_TYPE_SMALLINT, 2
  field :DATA_TYPE_DOUBLE, 3
  field :DATA_TYPE_DATE, 4
  field :DATA_TYPE_DATETIME, 5
  field :DATA_TYPE_TIME, 6
  field :DATA_TYPE_STRING, 7
  field :DATA_TYPE_LONG, 8
  field :DATA_TYPE_BOOLEAN, 9
  field :DATA_TYPE_DECIMAL, 10
  field :DATA_TYPE_UUID, 11
  field :DATA_TYPE_BLOB, 12
  field :DATA_TYPE_BIT, 13
  field :DATA_TYPE_TINYINT, 14
  field :DATA_TYPE_INTEGER, 15
  field :DATA_TYPE_BIGINT, 16
  field :DATA_TYPE_FLOAT, 17
  field :DATA_TYPE_REAL, 18
  field :DATA_TYPE_NUMERIC, 19
  field :DATA_TYPE_CHAR, 20
  field :DATA_TYPE_VARCHAR, 21
  field :DATA_TYPE_LONGVARCHAR, 22
  field :DATA_TYPE_TIMESTAMP, 23
  field :DATA_TYPE_NCHAR, 24
  field :DATA_TYPE_NVARCHAR, 25
  field :DATA_TYPE_LONGNVARCHAR, 26
  field :DATA_TYPE_NULL, 27
  field :DATA_TYPE_OTHER, 28
  field :DATA_TYPE_JAVA_OBJECT, 29
  field :DATA_TYPE_DISTINCT, 30
  field :DATA_TYPE_STRUCT, 31
  field :DATA_TYPE_ARRAY, 32
  field :DATA_TYPE_CLOB, 33
  field :DATA_TYPE_REF, 34
  field :DATA_TYPE_DATALINK, 35
  field :DATA_TYPE_ROWID, 36
  field :DATA_TYPE_BINARY, 37
  field :DATA_TYPE_VARBINARY, 38
  field :DATA_TYPE_LONGVARBINARY, 39
  field :DATA_TYPE_NCLOB, 40
  field :DATA_TYPE_SQLXML, 41
  field :DATA_TYPE_REF_CURSOR, 42
  field :DATA_TYPE_TIME_WITH_TIMEZONE, 43
  field :DATA_TYPE_TIMESTAMP_WITH_TIMEZONE, 44
end

defmodule Google.Cloud.Connectors.V1.ConnectionView do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :CONNECTION_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Connectors.V1.ConnectionSchemaMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :REFRESHING, 1
  field :UPDATED, 2
end

defmodule Google.Cloud.Connectors.V1.ConnectionStatus.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :INACTIVE, 3
  field :DELETING, 4
  field :UPDATING, 5
  field :ERROR, 6
  field :AUTHORIZATION_REQUIRED, 7
end

defmodule Google.Cloud.Connectors.V1.Connection.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Connectors.V1.Connection do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Connectors.V1.Connection.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 5, type: :string, deprecated: false
  field :connector_version, 6, type: :string, json_name: "connectorVersion", deprecated: false
  field :status, 7, type: Google.Cloud.Connectors.V1.ConnectionStatus, deprecated: false

  field :config_variables, 8,
    repeated: true,
    type: Google.Cloud.Connectors.V1.ConfigVariable,
    json_name: "configVariables",
    deprecated: false

  field :auth_config, 9,
    type: Google.Cloud.Connectors.V1.AuthConfig,
    json_name: "authConfig",
    deprecated: false

  field :lock_config, 10,
    type: Google.Cloud.Connectors.V1.LockConfig,
    json_name: "lockConfig",
    deprecated: false

  field :destination_configs, 18,
    repeated: true,
    type: Google.Cloud.Connectors.V1.DestinationConfig,
    json_name: "destinationConfigs",
    deprecated: false

  field :image_location, 11, type: :string, json_name: "imageLocation", deprecated: false
  field :service_account, 12, type: :string, json_name: "serviceAccount", deprecated: false
  field :service_directory, 13, type: :string, json_name: "serviceDirectory", deprecated: false

  field :envoy_image_location, 15,
    type: :string,
    json_name: "envoyImageLocation",
    deprecated: false

  field :suspended, 17, type: :bool, deprecated: false

  field :node_config, 19,
    type: Google.Cloud.Connectors.V1.NodeConfig,
    json_name: "nodeConfig",
    deprecated: false

  field :ssl_config, 21,
    type: Google.Cloud.Connectors.V1.SslConfig,
    json_name: "sslConfig",
    deprecated: false
end

defmodule Google.Cloud.Connectors.V1.NodeConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :min_node_count, 1, type: :int32, json_name: "minNodeCount"
  field :max_node_count, 2, type: :int32, json_name: "maxNodeCount"
end

defmodule Google.Cloud.Connectors.V1.ConnectionSchemaMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :entities, 1, repeated: true, type: :string, deprecated: false
  field :actions, 2, repeated: true, type: :string, deprecated: false
  field :name, 3, type: :string, deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :refresh_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "refreshTime",
    deprecated: false

  field :state, 6,
    type: Google.Cloud.Connectors.V1.ConnectionSchemaMetadata.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Connectors.V1.RuntimeEntitySchema.Field do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :field, 1, type: :string
  field :description, 2, type: :string

  field :data_type, 3,
    type: Google.Cloud.Connectors.V1.DataType,
    json_name: "dataType",
    enum: true

  field :key, 4, type: :bool
  field :readonly, 5, type: :bool
  field :nullable, 6, type: :bool
  field :default_value, 7, type: Google.Protobuf.Value, json_name: "defaultValue"
  field :additional_details, 8, type: Google.Protobuf.Struct, json_name: "additionalDetails"
end

defmodule Google.Cloud.Connectors.V1.RuntimeEntitySchema do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :entity, 1, type: :string, deprecated: false

  field :fields, 2,
    repeated: true,
    type: Google.Cloud.Connectors.V1.RuntimeEntitySchema.Field,
    deprecated: false
end

defmodule Google.Cloud.Connectors.V1.RuntimeActionSchema.InputParameter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parameter, 1, type: :string
  field :description, 2, type: :string

  field :data_type, 3,
    type: Google.Cloud.Connectors.V1.DataType,
    json_name: "dataType",
    enum: true

  field :nullable, 4, type: :bool
  field :default_value, 5, type: Google.Protobuf.Value, json_name: "defaultValue"
end

defmodule Google.Cloud.Connectors.V1.RuntimeActionSchema.ResultMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :field, 1, type: :string
  field :description, 2, type: :string

  field :data_type, 3,
    type: Google.Cloud.Connectors.V1.DataType,
    json_name: "dataType",
    enum: true
end

defmodule Google.Cloud.Connectors.V1.RuntimeActionSchema do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :action, 1, type: :string, deprecated: false

  field :input_parameters, 2,
    repeated: true,
    type: Google.Cloud.Connectors.V1.RuntimeActionSchema.InputParameter,
    json_name: "inputParameters",
    deprecated: false

  field :result_metadata, 3,
    repeated: true,
    type: Google.Cloud.Connectors.V1.RuntimeActionSchema.ResultMetadata,
    json_name: "resultMetadata",
    deprecated: false
end

defmodule Google.Cloud.Connectors.V1.LockConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :locked, 1, type: :bool
  field :reason, 2, type: :string
end

defmodule Google.Cloud.Connectors.V1.ListConnectionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
  field :view, 6, type: Google.Cloud.Connectors.V1.ConnectionView, enum: true
end

defmodule Google.Cloud.Connectors.V1.ListConnectionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :connections, 1, repeated: true, type: Google.Cloud.Connectors.V1.Connection
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Connectors.V1.GetConnectionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Connectors.V1.ConnectionView, enum: true
end

defmodule Google.Cloud.Connectors.V1.CreateConnectionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :connection_id, 2, type: :string, json_name: "connectionId", deprecated: false
  field :connection, 3, type: Google.Cloud.Connectors.V1.Connection, deprecated: false
end

defmodule Google.Cloud.Connectors.V1.UpdateConnectionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :connection, 1, type: Google.Cloud.Connectors.V1.Connection, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Connectors.V1.DeleteConnectionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Connectors.V1.GetConnectionSchemaMetadataRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Connectors.V1.RefreshConnectionSchemaMetadataRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Connectors.V1.ListRuntimeEntitySchemasRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Connectors.V1.ListRuntimeEntitySchemasResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :runtime_entity_schemas, 1,
    repeated: true,
    type: Google.Cloud.Connectors.V1.RuntimeEntitySchema,
    json_name: "runtimeEntitySchemas"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Connectors.V1.ListRuntimeActionSchemasRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Connectors.V1.ListRuntimeActionSchemasResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :runtime_action_schemas, 1,
    repeated: true,
    type: Google.Cloud.Connectors.V1.RuntimeActionSchema,
    json_name: "runtimeActionSchemas"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Connectors.V1.ConnectionStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Connectors.V1.ConnectionStatus.State, enum: true
  field :description, 2, type: :string
  field :status, 3, type: :string
end