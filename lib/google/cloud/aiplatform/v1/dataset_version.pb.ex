defmodule Google.Cloud.Aiplatform.V1.DatasetVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 3, type: :string

  field :big_query_dataset_name, 4,
    type: :string,
    json_name: "bigQueryDatasetName",
    deprecated: false

  field :display_name, 7, type: :string, json_name: "displayName"
  field :metadata, 8, type: Google.Protobuf.Value, deprecated: false
  field :model_reference, 9, type: :string, json_name: "modelReference", deprecated: false
  field :satisfies_pzs, 10, type: :bool, json_name: "satisfiesPzs", deprecated: false
  field :satisfies_pzi, 11, type: :bool, json_name: "satisfiesPzi", deprecated: false
end
