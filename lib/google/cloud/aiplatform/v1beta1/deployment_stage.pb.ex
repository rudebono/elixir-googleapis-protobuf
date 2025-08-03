defmodule Google.Cloud.Aiplatform.V1beta1.DeploymentStage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DEPLOYMENT_STAGE_UNSPECIFIED, 0
  field :STARTING_DEPLOYMENT, 5
  field :PREPARING_MODEL, 6
  field :CREATING_SERVING_CLUSTER, 7
  field :ADDING_NODES_TO_CLUSTER, 8
  field :GETTING_CONTAINER_IMAGE, 9
  field :STARTING_MODEL_SERVER, 3
  field :FINISHING_UP, 4
  field :DEPLOYMENT_TERMINATED, 10
end
