defmodule Google.Cloud.Automl.V1beta1.RegressionEvaluationMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :root_mean_squared_error, 1, type: :float, json_name: "rootMeanSquaredError"
  field :mean_absolute_error, 2, type: :float, json_name: "meanAbsoluteError"
  field :mean_absolute_percentage_error, 3, type: :float, json_name: "meanAbsolutePercentageError"
  field :r_squared, 4, type: :float, json_name: "rSquared"
  field :root_mean_squared_log_error, 5, type: :float, json_name: "rootMeanSquaredLogError"
end