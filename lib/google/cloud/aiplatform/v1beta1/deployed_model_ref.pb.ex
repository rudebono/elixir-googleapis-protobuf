defmodule Google.Cloud.Aiplatform.V1beta1.DeployedModelRef do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false
  field :deployed_model_id, 2, type: :string, json_name: "deployedModelId", deprecated: false
end
