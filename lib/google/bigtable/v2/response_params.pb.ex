defmodule Google.Bigtable.V2.ResponseParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :zone_id, 1, proto3_optional: true, type: :string, json_name: "zoneId"
  field :cluster_id, 2, proto3_optional: true, type: :string, json_name: "clusterId"
end