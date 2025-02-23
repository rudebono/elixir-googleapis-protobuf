defmodule Google.Cloud.Bigquery.V2.ManagedTableType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MANAGED_TABLE_TYPE_UNSPECIFIED, 0
  field :NATIVE, 1
  field :ICEBERG, 2
end
