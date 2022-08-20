defmodule Google.Cloud.Bigquery.Storage.V1beta2.AvroSchema do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :schema, 1, type: :string
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.AvroRows do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :serialized_binary_rows, 1, type: :bytes, json_name: "serializedBinaryRows"
end