defmodule Google.Maps.Mobilitybilling.Logs.V1.ReportBillableEventLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :billable_event_id, 1, type: :string, json_name: "billableEventId"
  field :region_code, 2, type: :string, json_name: "regionCode"
  field :related_ids, 3, repeated: true, type: :string, json_name: "relatedIds"
end
