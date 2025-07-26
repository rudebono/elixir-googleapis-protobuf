defmodule Google.Bigtable.Admin.V2.Type.Bytes.Encoding.Raw do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Bigtable.Admin.V2.Type.Bytes.Encoding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :encoding, 0

  field :raw, 1, type: Google.Bigtable.Admin.V2.Type.Bytes.Encoding.Raw, oneof: 0
end

defmodule Google.Bigtable.Admin.V2.Type.Bytes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :encoding, 1, type: Google.Bigtable.Admin.V2.Type.Bytes.Encoding
end

defmodule Google.Bigtable.Admin.V2.Type.String.Encoding.Utf8Raw do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Bigtable.Admin.V2.Type.String.Encoding.Utf8Bytes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Bigtable.Admin.V2.Type.String.Encoding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :encoding, 0

  field :utf8_raw, 1,
    type: Google.Bigtable.Admin.V2.Type.String.Encoding.Utf8Raw,
    json_name: "utf8Raw",
    oneof: 0,
    deprecated: true

  field :utf8_bytes, 2,
    type: Google.Bigtable.Admin.V2.Type.String.Encoding.Utf8Bytes,
    json_name: "utf8Bytes",
    oneof: 0
end

defmodule Google.Bigtable.Admin.V2.Type.String do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :encoding, 1, type: Google.Bigtable.Admin.V2.Type.String.Encoding
end

defmodule Google.Bigtable.Admin.V2.Type.Int64.Encoding.BigEndianBytes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bytes_type, 1,
    type: Google.Bigtable.Admin.V2.Type.Bytes,
    json_name: "bytesType",
    deprecated: true
end

defmodule Google.Bigtable.Admin.V2.Type.Int64.Encoding.OrderedCodeBytes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Bigtable.Admin.V2.Type.Int64.Encoding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :encoding, 0

  field :big_endian_bytes, 1,
    type: Google.Bigtable.Admin.V2.Type.Int64.Encoding.BigEndianBytes,
    json_name: "bigEndianBytes",
    oneof: 0

  field :ordered_code_bytes, 2,
    type: Google.Bigtable.Admin.V2.Type.Int64.Encoding.OrderedCodeBytes,
    json_name: "orderedCodeBytes",
    oneof: 0
end

defmodule Google.Bigtable.Admin.V2.Type.Int64 do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :encoding, 1, type: Google.Bigtable.Admin.V2.Type.Int64.Encoding
end

defmodule Google.Bigtable.Admin.V2.Type.Bool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Bigtable.Admin.V2.Type.Float32 do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Bigtable.Admin.V2.Type.Float64 do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Bigtable.Admin.V2.Type.Timestamp.Encoding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :encoding, 0

  field :unix_micros_int64, 1,
    type: Google.Bigtable.Admin.V2.Type.Int64.Encoding,
    json_name: "unixMicrosInt64",
    oneof: 0
end

defmodule Google.Bigtable.Admin.V2.Type.Timestamp do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :encoding, 1, type: Google.Bigtable.Admin.V2.Type.Timestamp.Encoding
end

defmodule Google.Bigtable.Admin.V2.Type.Date do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Bigtable.Admin.V2.Type.Struct.Field do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :field_name, 1, type: :string, json_name: "fieldName"
  field :type, 2, type: Google.Bigtable.Admin.V2.Type
end

defmodule Google.Bigtable.Admin.V2.Type.Struct.Encoding.Singleton do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Bigtable.Admin.V2.Type.Struct.Encoding.DelimitedBytes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :delimiter, 1, type: :bytes
end

defmodule Google.Bigtable.Admin.V2.Type.Struct.Encoding.OrderedCodeBytes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Bigtable.Admin.V2.Type.Struct.Encoding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :encoding, 0

  field :singleton, 1, type: Google.Bigtable.Admin.V2.Type.Struct.Encoding.Singleton, oneof: 0

  field :delimited_bytes, 2,
    type: Google.Bigtable.Admin.V2.Type.Struct.Encoding.DelimitedBytes,
    json_name: "delimitedBytes",
    oneof: 0

  field :ordered_code_bytes, 3,
    type: Google.Bigtable.Admin.V2.Type.Struct.Encoding.OrderedCodeBytes,
    json_name: "orderedCodeBytes",
    oneof: 0
end

defmodule Google.Bigtable.Admin.V2.Type.Struct do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :fields, 1, repeated: true, type: Google.Bigtable.Admin.V2.Type.Struct.Field
  field :encoding, 2, type: Google.Bigtable.Admin.V2.Type.Struct.Encoding
end

defmodule Google.Bigtable.Admin.V2.Type.Proto do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :schema_bundle_id, 1, type: :string, json_name: "schemaBundleId"
  field :message_name, 2, type: :string, json_name: "messageName"
end

defmodule Google.Bigtable.Admin.V2.Type.Enum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :schema_bundle_id, 1, type: :string, json_name: "schemaBundleId"
  field :enum_name, 2, type: :string, json_name: "enumName"
end

defmodule Google.Bigtable.Admin.V2.Type.Array do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :element_type, 1, type: Google.Bigtable.Admin.V2.Type, json_name: "elementType"
end

defmodule Google.Bigtable.Admin.V2.Type.Map do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key_type, 1, type: Google.Bigtable.Admin.V2.Type, json_name: "keyType"
  field :value_type, 2, type: Google.Bigtable.Admin.V2.Type, json_name: "valueType"
end

defmodule Google.Bigtable.Admin.V2.Type.Aggregate.Sum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Bigtable.Admin.V2.Type.Aggregate.Max do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Bigtable.Admin.V2.Type.Aggregate.Min do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Bigtable.Admin.V2.Type.Aggregate.HyperLogLogPlusPlusUniqueCount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Bigtable.Admin.V2.Type.Aggregate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :aggregator, 0

  field :input_type, 1, type: Google.Bigtable.Admin.V2.Type, json_name: "inputType"

  field :state_type, 2,
    type: Google.Bigtable.Admin.V2.Type,
    json_name: "stateType",
    deprecated: false

  field :sum, 4, type: Google.Bigtable.Admin.V2.Type.Aggregate.Sum, oneof: 0

  field :hllpp_unique_count, 5,
    type: Google.Bigtable.Admin.V2.Type.Aggregate.HyperLogLogPlusPlusUniqueCount,
    json_name: "hllppUniqueCount",
    oneof: 0

  field :max, 6, type: Google.Bigtable.Admin.V2.Type.Aggregate.Max, oneof: 0
  field :min, 7, type: Google.Bigtable.Admin.V2.Type.Aggregate.Min, oneof: 0
end

defmodule Google.Bigtable.Admin.V2.Type do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :bytes_type, 1,
    type: Google.Bigtable.Admin.V2.Type.Bytes,
    json_name: "bytesType",
    oneof: 0

  field :string_type, 2,
    type: Google.Bigtable.Admin.V2.Type.String,
    json_name: "stringType",
    oneof: 0

  field :int64_type, 5,
    type: Google.Bigtable.Admin.V2.Type.Int64,
    json_name: "int64Type",
    oneof: 0

  field :float32_type, 12,
    type: Google.Bigtable.Admin.V2.Type.Float32,
    json_name: "float32Type",
    oneof: 0

  field :float64_type, 9,
    type: Google.Bigtable.Admin.V2.Type.Float64,
    json_name: "float64Type",
    oneof: 0

  field :bool_type, 8, type: Google.Bigtable.Admin.V2.Type.Bool, json_name: "boolType", oneof: 0

  field :timestamp_type, 10,
    type: Google.Bigtable.Admin.V2.Type.Timestamp,
    json_name: "timestampType",
    oneof: 0

  field :date_type, 11, type: Google.Bigtable.Admin.V2.Type.Date, json_name: "dateType", oneof: 0

  field :aggregate_type, 6,
    type: Google.Bigtable.Admin.V2.Type.Aggregate,
    json_name: "aggregateType",
    oneof: 0

  field :struct_type, 7,
    type: Google.Bigtable.Admin.V2.Type.Struct,
    json_name: "structType",
    oneof: 0

  field :array_type, 3,
    type: Google.Bigtable.Admin.V2.Type.Array,
    json_name: "arrayType",
    oneof: 0

  field :map_type, 4, type: Google.Bigtable.Admin.V2.Type.Map, json_name: "mapType", oneof: 0

  field :proto_type, 13,
    type: Google.Bigtable.Admin.V2.Type.Proto,
    json_name: "protoType",
    oneof: 0

  field :enum_type, 14, type: Google.Bigtable.Admin.V2.Type.Enum, json_name: "enumType", oneof: 0
end
