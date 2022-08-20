defmodule Google.Spanner.V1.TypeCode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TYPE_CODE_UNSPECIFIED, 0
  field :BOOL, 1
  field :INT64, 2
  field :FLOAT64, 3
  field :TIMESTAMP, 4
  field :DATE, 5
  field :STRING, 6
  field :BYTES, 7
  field :ARRAY, 8
  field :STRUCT, 9
  field :NUMERIC, 10
  field :JSON, 11
end

defmodule Google.Spanner.V1.TypeAnnotationCode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TYPE_ANNOTATION_CODE_UNSPECIFIED, 0
  field :PG_NUMERIC, 2
end

defmodule Google.Spanner.V1.Type do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :code, 1, type: Google.Spanner.V1.TypeCode, enum: true, deprecated: false
  field :array_element_type, 2, type: Google.Spanner.V1.Type, json_name: "arrayElementType"
  field :struct_type, 3, type: Google.Spanner.V1.StructType, json_name: "structType"

  field :type_annotation, 4,
    type: Google.Spanner.V1.TypeAnnotationCode,
    json_name: "typeAnnotation",
    enum: true
end

defmodule Google.Spanner.V1.StructType.Field do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: Google.Spanner.V1.Type
end

defmodule Google.Spanner.V1.StructType do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fields, 1, repeated: true, type: Google.Spanner.V1.StructType.Field
end