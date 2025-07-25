defmodule Google.Cloud.Aiplatform.Logging.OnlinePredictionLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :endpoint, 1, type: :string
  field :deployed_model_id, 2, type: :string, json_name: "deployedModelId"
  field :instance_count, 3, type: :int64, json_name: "instanceCount"
  field :prediction_count, 4, type: :int64, json_name: "predictionCount"
  field :error, 5, type: Google.Rpc.Status
end
