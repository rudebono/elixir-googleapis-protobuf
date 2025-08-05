defmodule Google.Cloud.Bigquery.V2.QueryParameterStructType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :type, 2, type: Google.Cloud.Bigquery.V2.QueryParameterType, deprecated: false
  field :description, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.V2.QueryParameterType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: :string, deprecated: false

  field :timestamp_precision, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "timestampPrecision",
    deprecated: false

  field :array_type, 2,
    type: Google.Cloud.Bigquery.V2.QueryParameterType,
    json_name: "arrayType",
    deprecated: false

  field :struct_types, 3,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.QueryParameterStructType,
    json_name: "structTypes",
    deprecated: false

  field :range_element_type, 4,
    type: Google.Cloud.Bigquery.V2.QueryParameterType,
    json_name: "rangeElementType",
    deprecated: false
end

defmodule Google.Cloud.Bigquery.V2.RangeValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start, 1, type: Google.Cloud.Bigquery.V2.QueryParameterValue, deprecated: false
  field :end, 2, type: Google.Cloud.Bigquery.V2.QueryParameterValue, deprecated: false
end

defmodule Google.Cloud.Bigquery.V2.QueryParameterValue.StructValuesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Bigquery.V2.QueryParameterValue
end

defmodule Google.Cloud.Bigquery.V2.QueryParameterValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, type: Google.Protobuf.StringValue, deprecated: false

  field :array_values, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.QueryParameterValue,
    json_name: "arrayValues",
    deprecated: false

  field :struct_values, 3,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.QueryParameterValue.StructValuesEntry,
    json_name: "structValues",
    map: true

  field :range_value, 6,
    type: Google.Cloud.Bigquery.V2.RangeValue,
    json_name: "rangeValue",
    deprecated: false

  field :alt_struct_values, 5,
    repeated: true,
    type: Google.Protobuf.Value,
    json_name: "altStructValues"
end

defmodule Google.Cloud.Bigquery.V2.QueryParameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :parameter_type, 2,
    type: Google.Cloud.Bigquery.V2.QueryParameterType,
    json_name: "parameterType",
    deprecated: false

  field :parameter_value, 3,
    type: Google.Cloud.Bigquery.V2.QueryParameterValue,
    json_name: "parameterValue",
    deprecated: false
end
