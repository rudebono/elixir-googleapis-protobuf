defmodule Google.Cloud.Bigquery.Storage.V1beta1.TableReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :dataset_id, 2, type: :string, json_name: "datasetId"
  field :table_id, 3, type: :string, json_name: "tableId"
end

defmodule Google.Cloud.Bigquery.Storage.V1beta1.TableModifiers do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :snapshot_time, 1, type: Google.Protobuf.Timestamp, json_name: "snapshotTime"
end
