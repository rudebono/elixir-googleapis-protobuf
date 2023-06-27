defmodule Google.Bigtable.V2.FeatureFlags do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :reverse_scans, 1, type: :bool, json_name: "reverseScans"
  field :mutate_rows_rate_limit, 3, type: :bool, json_name: "mutateRowsRateLimit"
end