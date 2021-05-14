defmodule Google.Cloud.Aiplatform.V1.Schema.Predict.Prediction.ClassificationPredictionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ids: [integer],
          display_names: [String.t()],
          confidences: [float | :infinity | :negative_infinity | :nan]
        }

  defstruct [:ids, :display_names, :confidences]

  field :ids, 1, repeated: true, type: :int64
  field :display_names, 2, repeated: true, type: :string
  field :confidences, 3, repeated: true, type: :float
end
