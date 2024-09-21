defmodule Google.Cloud.Aiplatform.V1.Schema.Predict.Params.VideoClassificationPredictionParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :confidence_threshold, 1, type: :float, json_name: "confidenceThreshold"
  field :max_predictions, 2, type: :int32, json_name: "maxPredictions"
  field :segment_classification, 3, type: :bool, json_name: "segmentClassification"
  field :shot_classification, 4, type: :bool, json_name: "shotClassification"

  field :one_sec_interval_classification, 5,
    type: :bool,
    json_name: "oneSecIntervalClassification"
end