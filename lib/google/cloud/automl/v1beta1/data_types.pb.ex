defmodule Google.Cloud.Automl.V1beta1.TypeCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_CODE_UNSPECIFIED, 0
  field :FLOAT64, 3
  field :TIMESTAMP, 4
  field :STRING, 6
  field :ARRAY, 8
  field :STRUCT, 9
  field :CATEGORY, 10
end

defmodule Google.Cloud.Automl.V1beta1.DataType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :details, 0

  field :list_element_type, 2,
    type: Google.Cloud.Automl.V1beta1.DataType,
    json_name: "listElementType",
    oneof: 0

  field :struct_type, 3,
    type: Google.Cloud.Automl.V1beta1.StructType,
    json_name: "structType",
    oneof: 0

  field :time_format, 5, type: :string, json_name: "timeFormat", oneof: 0

  field :type_code, 1,
    type: Google.Cloud.Automl.V1beta1.TypeCode,
    json_name: "typeCode",
    enum: true

  field :nullable, 4, type: :bool
end

defmodule Google.Cloud.Automl.V1beta1.StructType.FieldsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Automl.V1beta1.DataType
end

defmodule Google.Cloud.Automl.V1beta1.StructType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :fields, 1,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.StructType.FieldsEntry,
    map: true
end
