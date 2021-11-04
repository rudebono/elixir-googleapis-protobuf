defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Predict.Prediction.VideoClassificationPredictionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          display_name: String.t(),
          type: String.t(),
          time_segment_start: Google.Protobuf.Duration.t() | nil,
          time_segment_end: Google.Protobuf.Duration.t() | nil,
          confidence: Google.Protobuf.FloatValue.t() | nil
        }

  defstruct [:id, :display_name, :type, :time_segment_start, :time_segment_end, :confidence]

  field :id, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :type, 3, type: :string
  field :time_segment_start, 4, type: Google.Protobuf.Duration, json_name: "timeSegmentStart"
  field :time_segment_end, 5, type: Google.Protobuf.Duration, json_name: "timeSegmentEnd"
  field :confidence, 6, type: Google.Protobuf.FloatValue

  def transform_module(), do: nil
end
