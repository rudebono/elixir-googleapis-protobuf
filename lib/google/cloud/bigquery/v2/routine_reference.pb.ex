defmodule Google.Cloud.Bigquery.V2.RoutineReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :routine_id, 3, type: :string, json_name: "routineId", deprecated: false
end