defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Predict.Prediction.TabularRegressionPredictionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: float | :infinity | :negative_infinity | :nan,
          lower_bound: float | :infinity | :negative_infinity | :nan,
          upper_bound: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:value, :lower_bound, :upper_bound]

  field :value, 1, type: :float
  field :lower_bound, 2, type: :float
  field :upper_bound, 3, type: :float
end
