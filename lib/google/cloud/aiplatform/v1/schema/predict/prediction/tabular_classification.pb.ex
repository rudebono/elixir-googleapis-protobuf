defmodule Google.Cloud.Aiplatform.V1.Schema.Predict.Prediction.TabularClassificationPredictionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :classes, 1, repeated: true, type: :string
  field :scores, 2, repeated: true, type: :float
end