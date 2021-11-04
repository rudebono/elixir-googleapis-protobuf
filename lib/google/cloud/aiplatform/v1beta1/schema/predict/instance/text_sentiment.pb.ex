defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Predict.Instance.TextSentimentPredictionInstance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: String.t(),
          mime_type: String.t()
        }

  defstruct [:content, :mime_type]

  field :content, 1, type: :string
  field :mime_type, 2, type: :string, json_name: "mimeType"

  def transform_module(), do: nil
end
