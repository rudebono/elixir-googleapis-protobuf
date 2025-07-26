defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Predict.Params.VideoObjectTrackingPredictionParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :confidence_threshold, 1, type: :float, json_name: "confidenceThreshold"
  field :max_predictions, 2, type: :int32, json_name: "maxPredictions"
  field :min_bounding_box_size, 3, type: :float, json_name: "minBoundingBoxSize"
end
