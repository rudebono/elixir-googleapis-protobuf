defmodule Google.Cloud.Aiplatform.V1.Schema.Predict.Prediction.ImageSegmentationPredictionResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :category_mask, 1, type: :string, json_name: "categoryMask"
  field :confidence_mask, 2, type: :string, json_name: "confidenceMask"
end
