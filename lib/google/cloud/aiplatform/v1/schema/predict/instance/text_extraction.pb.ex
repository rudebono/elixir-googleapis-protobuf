defmodule Google.Cloud.Aiplatform.V1.Schema.Predict.Instance.TextExtractionPredictionInstance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: String.t(),
          mime_type: String.t(),
          key: String.t()
        }

  defstruct content: "",
            mime_type: "",
            key: ""

  field :content, 1, type: :string
  field :mime_type, 2, type: :string, json_name: "mimeType"
  field :key, 3, type: :string
end
