defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Predict.Prediction.TimeSeriesForecastingPredictionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: float | :infinity | :negative_infinity | :nan
        }

  defstruct value: 0.0

  field :value, 1, type: :float
end
