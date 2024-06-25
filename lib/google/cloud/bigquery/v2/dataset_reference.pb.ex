defmodule Google.Cloud.Bigquery.V2.DatasetReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dataset_id, 1, type: :string, json_name: "datasetId", deprecated: false
  field :project_id, 2, type: :string, json_name: "projectId", deprecated: false
end