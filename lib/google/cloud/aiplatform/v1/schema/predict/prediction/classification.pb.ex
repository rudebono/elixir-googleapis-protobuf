defmodule Google.Cloud.Aiplatform.V1.Schema.Predict.Prediction.ClassificationPredictionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ids, 1, repeated: true, type: :int64
  field :display_names, 2, repeated: true, type: :string, json_name: "displayNames"
  field :confidences, 3, repeated: true, type: :float
end
