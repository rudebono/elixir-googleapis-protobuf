defmodule Google.Cloud.Automl.V1.TextSentimentAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sentiment: integer
        }

  defstruct sentiment: 0

  field :sentiment, 1, type: :int32
end
defmodule Google.Cloud.Automl.V1.TextSentimentEvaluationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          precision: float | :infinity | :negative_infinity | :nan,
          recall: float | :infinity | :negative_infinity | :nan,
          f1_score: float | :infinity | :negative_infinity | :nan,
          mean_absolute_error: float | :infinity | :negative_infinity | :nan,
          mean_squared_error: float | :infinity | :negative_infinity | :nan,
          linear_kappa: float | :infinity | :negative_infinity | :nan,
          quadratic_kappa: float | :infinity | :negative_infinity | :nan,
          confusion_matrix:
            Google.Cloud.Automl.V1.ClassificationEvaluationMetrics.ConfusionMatrix.t() | nil
        }

  defstruct precision: 0.0,
            recall: 0.0,
            f1_score: 0.0,
            mean_absolute_error: 0.0,
            mean_squared_error: 0.0,
            linear_kappa: 0.0,
            quadratic_kappa: 0.0,
            confusion_matrix: nil

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
