defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Predict.Prediction.ImageSegmentationPredictionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          category_mask: String.t(),
          confidence_mask: String.t()
        }

  defstruct [:category_mask, :confidence_mask]

  field :category_mask, 1, type: :string
  field :confidence_mask, 2, type: :string
end
