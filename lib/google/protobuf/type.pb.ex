defmodule Google.Protobuf.Syntax do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SYNTAX_PROTO2, 0
  field :SYNTAX_PROTO3, 1
  field :SYNTAX_EDITIONS, 2
end

defmodule Google.Protobuf.Field.Kind do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNKNOWN, 0
  field :TYPE_DOUBLE, 1
  field :TYPE_FLOAT, 2
  field :TYPE_INT64, 3
  field :TYPE_UINT64, 4
  field :TYPE_INT32, 5
  field :TYPE_FIXED64, 6
  field :TYPE_FIXED32, 7
  field :TYPE_BOOL, 8
  field :TYPE_STRING, 9
  field :TYPE_GROUP, 10
  field :TYPE_MESSAGE, 11
  field :TYPE_BYTES, 12
  field :TYPE_UINT32, 13
  field :TYPE_ENUM, 14
  field :TYPE_SFIXED32, 15
  field :TYPE_SFIXED64, 16
  field :TYPE_SINT32, 17
  field :TYPE_SINT64, 18
end

defmodule Google.Protobuf.Field.Cardinality do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CARDINALITY_UNKNOWN, 0
  field :CARDINALITY_OPTIONAL, 1
  field :CARDINALITY_REQUIRED, 2
  field :CARDINALITY_REPEATED, 3
end

defmodule Google.Protobuf.Type do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :fields, 2, repeated: true, type: Google.Protobuf.Field
  field :oneofs, 3, repeated: true, type: :string
  field :options, 4, repeated: true, type: Google.Protobuf.Option
  field :source_context, 5, type: Google.Protobuf.SourceContext, json_name: "sourceContext"
  field :syntax, 6, type: Google.Protobuf.Syntax, enum: true
  field :edition, 7, type: :string
end

defmodule Google.Protobuf.Field do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :kind, 1, type: Google.Protobuf.Field.Kind, enum: true
  field :cardinality, 2, type: Google.Protobuf.Field.Cardinality, enum: true
  field :number, 3, type: :int32
  field :name, 4, type: :string
  field :type_url, 6, type: :string, json_name: "typeUrl"
  field :oneof_index, 7, type: :int32, json_name: "oneofIndex"
  field :packed, 8, type: :bool
  field :options, 9, repeated: true, type: Google.Protobuf.Option
  field :json_name, 10, type: :string, json_name: "jsonName"
  field :default_value, 11, type: :string, json_name: "defaultValue"
end

defmodule Google.Protobuf.Enum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :enumvalue, 2, repeated: true, type: Google.Protobuf.EnumValue
  field :options, 3, repeated: true, type: Google.Protobuf.Option
  field :source_context, 4, type: Google.Protobuf.SourceContext, json_name: "sourceContext"
  field :syntax, 5, type: Google.Protobuf.Syntax, enum: true
  field :edition, 6, type: :string
end

defmodule Google.Protobuf.EnumValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :number, 2, type: :int32
  field :options, 3, repeated: true, type: Google.Protobuf.Option
end

defmodule Google.Protobuf.Option do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :value, 2, type: Google.Protobuf.Any
end