defmodule Google.Cloud.Bigquery.V2.TimePartitioning do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: :string, deprecated: false

  field :expiration_ms, 2,
    type: Google.Protobuf.Int64Value,
    json_name: "expirationMs",
    deprecated: false

  field :field, 3, type: Google.Protobuf.StringValue, deprecated: false
end