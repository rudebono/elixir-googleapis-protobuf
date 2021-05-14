defmodule Google.Cloud.Aiplatform.V1.Schema.Predict.Prediction.VideoObjectTrackingPredictionResult.Frame do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_offset: Google.Protobuf.Duration.t() | nil,
          x_min: Google.Protobuf.FloatValue.t() | nil,
          x_max: Google.Protobuf.FloatValue.t() | nil,
          y_min: Google.Protobuf.FloatValue.t() | nil,
          y_max: Google.Protobuf.FloatValue.t() | nil
        }

  defstruct [:time_offset, :x_min, :x_max, :y_min, :y_max]

  field :time_offset, 1, type: Google.Protobuf.Duration
  field :x_min, 2, type: Google.Protobuf.FloatValue
  field :x_max, 3, type: Google.Protobuf.FloatValue
  field :y_min, 4, type: Google.Protobuf.FloatValue
  field :y_max, 5, type: Google.Protobuf.FloatValue
end

defmodule Google.Cloud.Aiplatform.V1.Schema.Predict.Prediction.VideoObjectTrackingPredictionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          display_name: String.t(),
          time_segment_start: Google.Protobuf.Duration.t() | nil,
          time_segment_end: Google.Protobuf.Duration.t() | nil,
          confidence: Google.Protobuf.FloatValue.t() | nil,
          frames: [
            Google.Cloud.Aiplatform.V1.Schema.Predict.Prediction.VideoObjectTrackingPredictionResult.Frame.t()
          ]
        }

  defstruct [:id, :display_name, :time_segment_start, :time_segment_end, :confidence, :frames]

  field :id, 1, type: :string
  field :display_name, 2, type: :string
  field :time_segment_start, 3, type: Google.Protobuf.Duration
  field :time_segment_end, 4, type: Google.Protobuf.Duration
  field :confidence, 5, type: Google.Protobuf.FloatValue

  field :frames, 6,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1.Schema.Predict.Prediction.VideoObjectTrackingPredictionResult.Frame
end
