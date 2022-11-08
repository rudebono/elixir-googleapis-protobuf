defmodule Google.Cloud.Bigquery.Storage.V1.PbExtension do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  extend Google.Protobuf.FieldOptions, :column_name, 454_943_157,
    optional: true,
    type: :string,
    json_name: "columnName"
end