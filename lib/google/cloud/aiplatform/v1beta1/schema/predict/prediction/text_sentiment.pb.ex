defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Predict.Prediction.TextSentimentPredictionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sentiment: integer
        }

  defstruct [:sentiment]

  field :sentiment, 1, type: :int32
end
