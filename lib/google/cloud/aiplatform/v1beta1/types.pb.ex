defmodule Google.Cloud.Aiplatform.V1beta1.Tensor.DataType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DATA_TYPE_UNSPECIFIED, 0
  field :BOOL, 1
  field :STRING, 2
  field :FLOAT, 3
  field :DOUBLE, 4
  field :INT8, 5
  field :INT16, 6
  field :INT32, 7
  field :INT64, 8
  field :UINT8, 9
  field :UINT16, 10
  field :UINT32, 11
  field :UINT64, 12
end

defmodule Google.Cloud.Aiplatform.V1beta1.BoolArray do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1, repeated: true, type: :bool
end

defmodule Google.Cloud.Aiplatform.V1beta1.DoubleArray do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1, repeated: true, type: :double
end

defmodule Google.Cloud.Aiplatform.V1beta1.Int64Array do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1, repeated: true, type: :int64
end

defmodule Google.Cloud.Aiplatform.V1beta1.StringArray do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Tensor.StructValEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.Tensor
end

defmodule Google.Cloud.Aiplatform.V1beta1.Tensor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dtype, 1, type: Google.Cloud.Aiplatform.V1beta1.Tensor.DataType, enum: true
  field :shape, 2, repeated: true, type: :int64
  field :bool_val, 3, repeated: true, type: :bool, json_name: "boolVal"
  field :string_val, 14, repeated: true, type: :string, json_name: "stringVal"
  field :bytes_val, 15, repeated: true, type: :bytes, json_name: "bytesVal"
  field :float_val, 5, repeated: true, type: :float, json_name: "floatVal"
  field :double_val, 6, repeated: true, type: :double, json_name: "doubleVal"
  field :int_val, 7, repeated: true, type: :int32, json_name: "intVal"
  field :int64_val, 8, repeated: true, type: :int64, json_name: "int64Val"
  field :uint_val, 9, repeated: true, type: :uint32, json_name: "uintVal"
  field :uint64_val, 10, repeated: true, type: :uint64, json_name: "uint64Val"

  field :list_val, 11,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Tensor,
    json_name: "listVal"

  field :struct_val, 12,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Tensor.StructValEntry,
    json_name: "structVal",
    map: true

  field :tensor_val, 13, type: :bytes, json_name: "tensorVal"
end
