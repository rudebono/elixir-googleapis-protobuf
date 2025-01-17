defmodule Google.Cloud.Aiplatform.V1.Schema.Predict.Instance.VideoActionRecognitionPredictionInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :content, 1, type: :string
  field :mime_type, 2, type: :string, json_name: "mimeType"
  field :time_segment_start, 3, type: :string, json_name: "timeSegmentStart"
  field :time_segment_end, 4, type: :string, json_name: "timeSegmentEnd"
end
