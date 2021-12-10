defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Predict.Prediction.TabularClassificationPredictionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          classes: [String.t()],
          scores: [float | :infinity | :negative_infinity | :nan]
        }

  defstruct classes: [],
            scores: []

  field :classes, 1, repeated: true, type: :string
  field :scores, 2, repeated: true, type: :float
end
