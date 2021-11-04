defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Predict.Prediction.TimeSeriesForecastingPredictionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:value]

  field :value, 1, type: :float

  def transform_module(), do: nil
end
