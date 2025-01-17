defmodule Google.Ai.Generativelanguage.V1beta.Condition.Operator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :OPERATOR_UNSPECIFIED, 0
  field :LESS, 1
  field :LESS_EQUAL, 2
  field :EQUAL, 3
  field :GREATER_EQUAL, 4
  field :GREATER, 5
  field :NOT_EQUAL, 6
  field :INCLUDES, 7
  field :EXCLUDES, 8
end

defmodule Google.Ai.Generativelanguage.V1beta.Chunk.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STATE_PENDING_PROCESSING, 1
  field :STATE_ACTIVE, 2
  field :STATE_FAILED, 10
end

defmodule Google.Ai.Generativelanguage.V1beta.Corpus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.Document do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :custom_metadata, 3,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.CustomMetadata,
    json_name: "customMetadata",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.StringList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :values, 1, repeated: true, type: :string
end

defmodule Google.Ai.Generativelanguage.V1beta.CustomMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :value, 0

  field :string_value, 2, type: :string, json_name: "stringValue", oneof: 0

  field :string_list_value, 6,
    type: Google.Ai.Generativelanguage.V1beta.StringList,
    json_name: "stringListValue",
    oneof: 0

  field :numeric_value, 7, type: :float, json_name: "numericValue", oneof: 0
  field :key, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.MetadataFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string, deprecated: false

  field :conditions, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.Condition,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.Condition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :value, 0

  field :string_value, 1, type: :string, json_name: "stringValue", oneof: 0
  field :numeric_value, 6, type: :float, json_name: "numericValue", oneof: 0

  field :operation, 5,
    type: Google.Ai.Generativelanguage.V1beta.Condition.Operator,
    enum: true,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.Chunk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :data, 2, type: Google.Ai.Generativelanguage.V1beta.ChunkData, deprecated: false

  field :custom_metadata, 3,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.CustomMetadata,
    json_name: "customMetadata",
    deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 6,
    type: Google.Ai.Generativelanguage.V1beta.Chunk.State,
    enum: true,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.ChunkData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :data, 0

  field :string_value, 1, type: :string, json_name: "stringValue", oneof: 0
end
