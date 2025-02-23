defmodule Google.Cloud.Automl.V1.TextSentimentAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sentiment, 1, type: :int32
end

defmodule Google.Cloud.Automl.V1.TextSentimentEvaluationMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :precision, 1, type: :float
  field :recall, 2, type: :float
  field :f1_score, 3, type: :float, json_name: "f1Score"
  field :mean_absolute_error, 4, type: :float, json_name: "meanAbsoluteError"
  field :mean_squared_error, 5, type: :float, json_name: "meanSquaredError"
  field :linear_kappa, 6, type: :float, json_name: "linearKappa"
  field :quadratic_kappa, 7, type: :float, json_name: "quadraticKappa"

  field :confusion_matrix, 8,
    type: Google.Cloud.Automl.V1.ClassificationEvaluationMetrics.ConfusionMatrix,
    json_name: "confusionMatrix"
end
