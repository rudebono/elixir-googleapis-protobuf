defmodule Google.Cloud.Bigquery.V2.RowAccessPolicyReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :table_id, 3, type: :string, json_name: "tableId", deprecated: false
  field :policy_id, 4, type: :string, json_name: "policyId", deprecated: false
end
