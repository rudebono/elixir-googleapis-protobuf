defmodule Google.Cloud.Integrations.V1alpha.ValueType do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :value, 0

  field :string_value, 1, type: :string, json_name: "stringValue", oneof: 0
  field :int_value, 2, type: :int64, json_name: "intValue", oneof: 0
  field :double_value, 3, type: :double, json_name: "doubleValue", oneof: 0
  field :boolean_value, 4, type: :bool, json_name: "booleanValue", oneof: 0

  field :string_array, 5,
    type: Google.Cloud.Integrations.V1alpha.StringParameterArray,
    json_name: "stringArray",
    oneof: 0

  field :int_array, 6,
    type: Google.Cloud.Integrations.V1alpha.IntParameterArray,
    json_name: "intArray",
    oneof: 0

  field :double_array, 7,
    type: Google.Cloud.Integrations.V1alpha.DoubleParameterArray,
    json_name: "doubleArray",
    oneof: 0

  field :boolean_array, 8,
    type: Google.Cloud.Integrations.V1alpha.BooleanParameterArray,
    json_name: "booleanArray",
    oneof: 0

  field :json_value, 9, type: :string, json_name: "jsonValue", oneof: 0
end
defmodule Google.Cloud.Integrations.V1alpha.StringParameterArray do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :string_values, 1, repeated: true, type: :string, json_name: "stringValues"
end
defmodule Google.Cloud.Integrations.V1alpha.IntParameterArray do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :int_values, 1, repeated: true, type: :int64, json_name: "intValues"
end
defmodule Google.Cloud.Integrations.V1alpha.DoubleParameterArray do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :double_values, 1, repeated: true, type: :double, json_name: "doubleValues"
end
defmodule Google.Cloud.Integrations.V1alpha.BooleanParameterArray do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :boolean_values, 1, repeated: true, type: :bool, json_name: "booleanValues"
end
