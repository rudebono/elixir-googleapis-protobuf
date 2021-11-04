defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Predict.Params.ImageObjectDetectionPredictionParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          confidence_threshold: float | :infinity | :negative_infinity | :nan,
          max_predictions: integer
        }

  defstruct [:confidence_threshold, :max_predictions]

  field :confidence_threshold, 1, type: :float, json_name: "confidenceThreshold"
  field :max_predictions, 2, type: :int32, json_name: "maxPredictions"

  def transform_module(), do: nil
end
