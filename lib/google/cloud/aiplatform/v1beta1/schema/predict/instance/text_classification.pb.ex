defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Predict.Instance.TextClassificationPredictionInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :content, 1, type: :string
  field :mime_type, 2, type: :string, json_name: "mimeType"
end
