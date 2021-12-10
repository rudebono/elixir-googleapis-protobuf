defmodule Google.Cloud.Aiplatform.V1.Schema.Predict.Params.VideoClassificationPredictionParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          confidence_threshold: float | :infinity | :negative_infinity | :nan,
          max_predictions: integer,
          segment_classification: boolean,
          shot_classification: boolean,
          one_sec_interval_classification: boolean
        }

  defstruct confidence_threshold: 0.0,
            max_predictions: 0,
            segment_classification: false,
            shot_classification: false,
            one_sec_interval_classification: false

  field :confidence_threshold, 1, type: :float, json_name: "confidenceThreshold"
  field :max_predictions, 2, type: :int32, json_name: "maxPredictions"
  field :segment_classification, 3, type: :bool, json_name: "segmentClassification"
  field :shot_classification, 4, type: :bool, json_name: "shotClassification"

  field :one_sec_interval_classification, 5,
    type: :bool,
    json_name: "oneSecIntervalClassification"
end
