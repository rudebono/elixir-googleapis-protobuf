defmodule Google.Datastore.V1.PartitionId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 2, type: :string, json_name: "projectId"
  field :database_id, 3, type: :string, json_name: "databaseId"
  field :namespace_id, 4, type: :string, json_name: "namespaceId"
end

defmodule Google.Datastore.V1.Key.PathElement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :id_type, 0

  field :kind, 1, type: :string
  field :id, 2, type: :int64, oneof: 0
  field :name, 3, type: :string, oneof: 0
end

defmodule Google.Datastore.V1.Key do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :partition_id, 1, type: Google.Datastore.V1.PartitionId, json_name: "partitionId"
  field :path, 2, repeated: true, type: Google.Datastore.V1.Key.PathElement
end

defmodule Google.Datastore.V1.ArrayValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :values, 1, repeated: true, type: Google.Datastore.V1.Value
end

defmodule Google.Datastore.V1.Value do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :value_type, 0

  field :null_value, 11,
    type: Google.Protobuf.NullValue,
    json_name: "nullValue",
    enum: true,
    oneof: 0

  field :boolean_value, 1, type: :bool, json_name: "booleanValue", oneof: 0
  field :integer_value, 2, type: :int64, json_name: "integerValue", oneof: 0
  field :double_value, 3, type: :double, json_name: "doubleValue", oneof: 0

  field :timestamp_value, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "timestampValue",
    oneof: 0

  field :key_value, 5, type: Google.Datastore.V1.Key, json_name: "keyValue", oneof: 0
  field :string_value, 17, type: :string, json_name: "stringValue", oneof: 0
  field :blob_value, 18, type: :bytes, json_name: "blobValue", oneof: 0
  field :geo_point_value, 8, type: Google.Type.LatLng, json_name: "geoPointValue", oneof: 0
  field :entity_value, 6, type: Google.Datastore.V1.Entity, json_name: "entityValue", oneof: 0
  field :array_value, 9, type: Google.Datastore.V1.ArrayValue, json_name: "arrayValue", oneof: 0
  field :meaning, 14, type: :int32
  field :exclude_from_indexes, 19, type: :bool, json_name: "excludeFromIndexes"
end

defmodule Google.Datastore.V1.Entity.PropertiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Datastore.V1.Value
end

defmodule Google.Datastore.V1.Entity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: Google.Datastore.V1.Key

  field :properties, 3,
    repeated: true,
    type: Google.Datastore.V1.Entity.PropertiesEntry,
    map: true
end