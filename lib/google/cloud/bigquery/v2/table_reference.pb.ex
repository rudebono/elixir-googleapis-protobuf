defmodule Google.Cloud.Bigquery.V2.TableReference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :table_id, 3, type: :string, json_name: "tableId", deprecated: false

  field :project_id_alternative, 4,
    repeated: true,
    type: :string,
    json_name: "projectIdAlternative"

  field :dataset_id_alternative, 5,
    repeated: true,
    type: :string,
    json_name: "datasetIdAlternative"

  field :table_id_alternative, 6, repeated: true, type: :string, json_name: "tableIdAlternative"
end