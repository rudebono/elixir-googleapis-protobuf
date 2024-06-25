defmodule Google.Cloud.Bigquery.V2.HivePartitioningOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :mode, 1, type: :string, deprecated: false
  field :source_uri_prefix, 2, type: :string, json_name: "sourceUriPrefix", deprecated: false

  field :require_partition_filter, 3,
    type: Google.Protobuf.BoolValue,
    json_name: "requirePartitionFilter",
    deprecated: false

  field :fields, 4, repeated: true, type: :string, deprecated: false
end