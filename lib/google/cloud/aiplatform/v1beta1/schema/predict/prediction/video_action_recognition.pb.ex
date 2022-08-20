defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Predict.Prediction.VideoActionRecognitionPredictionResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :time_segment_start, 4, type: Google.Protobuf.Duration, json_name: "timeSegmentStart"
  field :time_segment_end, 5, type: Google.Protobuf.Duration, json_name: "timeSegmentEnd"
  field :confidence, 6, type: Google.Protobuf.FloatValue
end