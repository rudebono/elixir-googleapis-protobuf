defmodule Google.Cloud.Aiplatform.V1beta1.DatasetVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end