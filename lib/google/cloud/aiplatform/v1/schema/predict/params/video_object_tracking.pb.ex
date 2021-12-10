defmodule Google.Cloud.Aiplatform.V1.Schema.Predict.Params.VideoObjectTrackingPredictionParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          confidence_threshold: float | :infinity | :negative_infinity | :nan,
          max_predictions: integer,
          min_bounding_box_size: float | :infinity | :negative_infinity | :nan
        }

  defstruct confidence_threshold: 0.0,
            max_predictions: 0,
            min_bounding_box_size: 0.0

  field :confidence_threshold, 1, type: :float, json_name: "confidenceThreshold"
  field :max_predictions, 2, type: :int32, json_name: "maxPredictions"
  field :min_bounding_box_size, 3, type: :float, json_name: "minBoundingBoxSize"
end
