defmodule Google.Ads.Googleads.V14.Common.Value do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :value, 0

  field :boolean_value, 1, type: :bool, json_name: "booleanValue", oneof: 0
  field :int64_value, 2, type: :int64, json_name: "int64Value", oneof: 0
  field :float_value, 3, type: :float, json_name: "floatValue", oneof: 0
  field :double_value, 4, type: :double, json_name: "doubleValue", oneof: 0
  field :string_value, 5, type: :string, json_name: "stringValue", oneof: 0
end