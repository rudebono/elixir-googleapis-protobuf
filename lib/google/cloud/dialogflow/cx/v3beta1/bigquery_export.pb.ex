defmodule Google.Cloud.Dialogflow.Cx.V3beta1.BigQueryExportSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
  field :bigquery_table, 2, type: :string, json_name: "bigqueryTable"
end
