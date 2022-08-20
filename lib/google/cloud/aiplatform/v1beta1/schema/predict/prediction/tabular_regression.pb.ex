defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Predict.Prediction.TabularRegressionPredictionResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 1, type: :float
  field :lower_bound, 2, type: :float, json_name: "lowerBound"
  field :upper_bound, 3, type: :float, json_name: "upperBound"
end