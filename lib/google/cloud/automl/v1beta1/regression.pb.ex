defmodule Google.Cloud.Automl.V1beta1.RegressionEvaluationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          root_mean_squared_error: float | :infinity | :negative_infinity | :nan,
          mean_absolute_error: float | :infinity | :negative_infinity | :nan,
          mean_absolute_percentage_error: float | :infinity | :negative_infinity | :nan,
          r_squared: float | :infinity | :negative_infinity | :nan,
          root_mean_squared_log_error: float | :infinity | :negative_infinity | :nan
        }

  defstruct [
    :root_mean_squared_error,
    :mean_absolute_error,
    :mean_absolute_percentage_error,
    :r_squared,
    :root_mean_squared_log_error
  ]

  field :root_mean_squared_error, 1, type: :float, json_name: "rootMeanSquaredError"
  field :mean_absolute_error, 2, type: :float, json_name: "meanAbsoluteError"
  field :mean_absolute_percentage_error, 3, type: :float, json_name: "meanAbsolutePercentageError"
  field :r_squared, 4, type: :float, json_name: "rSquared"
  field :root_mean_squared_log_error, 5, type: :float, json_name: "rootMeanSquaredLogError"

  def transform_module(), do: nil
end
