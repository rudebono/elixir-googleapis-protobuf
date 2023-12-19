defmodule Google.Bigtable.V2.FeatureFlags do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :reverse_scans, 1, type: :bool, json_name: "reverseScans"
  field :mutate_rows_rate_limit, 3, type: :bool, json_name: "mutateRowsRateLimit"
  field :mutate_rows_rate_limit2, 5, type: :bool, json_name: "mutateRowsRateLimit2"
  field :last_scanned_row_responses, 4, type: :bool, json_name: "lastScannedRowResponses"
  field :routing_cookie, 6, type: :bool, json_name: "routingCookie"
  field :retry_info, 7, type: :bool, json_name: "retryInfo"
end