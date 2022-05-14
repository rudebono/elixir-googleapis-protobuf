defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Predict.Prediction.TextExtractionPredictionResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ids, 1, repeated: true, type: :int64
  field :display_names, 2, repeated: true, type: :string, json_name: "displayNames"

  field :text_segment_start_offsets, 3,
    repeated: true,
    type: :int64,
    json_name: "textSegmentStartOffsets"

  field :text_segment_end_offsets, 4,
    repeated: true,
    type: :int64,
    json_name: "textSegmentEndOffsets"

  field :confidences, 5, repeated: true, type: :float
end
