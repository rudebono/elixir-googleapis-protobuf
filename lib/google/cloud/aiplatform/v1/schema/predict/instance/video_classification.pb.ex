defmodule Google.Cloud.Aiplatform.V1.Schema.Predict.Instance.VideoClassificationPredictionInstance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: String.t(),
          mime_type: String.t(),
          time_segment_start: String.t(),
          time_segment_end: String.t()
        }

  defstruct content: "",
            mime_type: "",
            time_segment_start: "",
            time_segment_end: ""

  field :content, 1, type: :string
  field :mime_type, 2, type: :string, json_name: "mimeType"
  field :time_segment_start, 3, type: :string, json_name: "timeSegmentStart"
  field :time_segment_end, 4, type: :string, json_name: "timeSegmentEnd"
end
