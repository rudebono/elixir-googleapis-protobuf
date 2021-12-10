defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Predict.Params.ImageSegmentationPredictionParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          confidence_threshold: float | :infinity | :negative_infinity | :nan
        }

  defstruct confidence_threshold: 0.0

  field :confidence_threshold, 1, type: :float, json_name: "confidenceThreshold"
end
