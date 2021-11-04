defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Predict.Prediction.TextExtractionPredictionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ids: [integer],
          display_names: [String.t()],
          text_segment_start_offsets: [integer],
          text_segment_end_offsets: [integer],
          confidences: [float | :infinity | :negative_infinity | :nan]
        }

  defstruct [
    :ids,
    :display_names,
    :text_segment_start_offsets,
    :text_segment_end_offsets,
    :confidences
  ]

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

  def transform_module(), do: nil
end
