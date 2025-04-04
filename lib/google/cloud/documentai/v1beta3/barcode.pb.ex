defmodule Google.Cloud.Documentai.V1beta3.Barcode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :format, 1, type: :string
  field :value_format, 2, type: :string, json_name: "valueFormat"
  field :raw_value, 3, type: :string, json_name: "rawValue"
end
