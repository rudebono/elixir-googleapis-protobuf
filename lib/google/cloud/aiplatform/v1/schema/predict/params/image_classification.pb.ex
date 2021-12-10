defmodule Google.Cloud.Aiplatform.V1.Schema.Predict.Params.ImageClassificationPredictionParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          confidence_threshold: float | :infinity | :negative_infinity | :nan,
          max_predictions: integer
        }

  defstruct confidence_threshold: 0.0,
            max_predictions: 0

  field :confidence_threshold, 1, type: :float, json_name: "confidenceThreshold"
  field :max_predictions, 2, type: :int32, json_name: "maxPredictions"
end
