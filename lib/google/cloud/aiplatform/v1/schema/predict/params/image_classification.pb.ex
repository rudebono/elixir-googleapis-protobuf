defmodule Google.Cloud.Aiplatform.V1.Schema.Predict.Params.ImageClassificationPredictionParams do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :confidence_threshold, 1, type: :float, json_name: "confidenceThreshold"
  field :max_predictions, 2, type: :int32, json_name: "maxPredictions"
end