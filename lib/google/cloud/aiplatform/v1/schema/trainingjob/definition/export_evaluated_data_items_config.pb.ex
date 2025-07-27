defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.ExportEvaluatedDataItemsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :destination_bigquery_uri, 1, type: :string, json_name: "destinationBigqueryUri"
  field :override_existing_table, 2, type: :bool, json_name: "overrideExistingTable"
end
