defmodule Google.Search.Partnerdataingestion.Logging.V1.IngestDetailsLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ingestion_tracking_id, 1, type: :string, json_name: "ingestionTrackingId"
  field :content, 2, type: :string
end
