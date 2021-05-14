defmodule Google.Cloud.Automl.V1.TextSentimentAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sentiment: integer
        }

  defstruct [:sentiment]

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

  defstruct [
    :precision,
    :recall,
    :f1_score,
    :mean_absolute_error,
    :mean_squared_error,
    :linear_kappa,
    :quadratic_kappa,
    :confusion_matrix
  ]

  field :precision, 1, type: :float
  field :recall, 2, type: :float
  field :f1_score, 3, type: :float
  field :mean_absolute_error, 4, type: :float
  field :mean_squared_error, 5, type: :float
  field :linear_kappa, 6, type: :float
  field :quadratic_kappa, 7, type: :float

  field :confusion_matrix, 8,
    type: Google.Cloud.Automl.V1.ClassificationEvaluationMetrics.ConfusionMatrix
end
