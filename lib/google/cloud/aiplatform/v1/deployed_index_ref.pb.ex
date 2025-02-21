defmodule Google.Cloud.Aiplatform.V1.DeployedIndexRef do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :index_endpoint, 1, type: :string, json_name: "indexEndpoint", deprecated: false
  field :deployed_index_id, 2, type: :string, json_name: "deployedIndexId", deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
end
