defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Predict.Prediction.ImageObjectDetectionPredictionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ids: [integer],
          display_names: [String.t()],
          confidences: [float | :infinity | :negative_infinity | :nan],
          bboxes: [Google.Protobuf.ListValue.t()]
        }

  defstruct [:ids, :display_names, :confidences, :bboxes]

  field :ids, 1, repeated: true, type: :int64
  field :display_names, 2, repeated: true, type: :string
  field :confidences, 3, repeated: true, type: :float
  field :bboxes, 4, repeated: true, type: Google.Protobuf.ListValue
end
