defmodule Google.Cloud.Aiplatform.V1.Schema.Predict.Prediction.VideoObjectTrackingPredictionResult.Frame do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :time_offset, 1, type: Google.Protobuf.Duration, json_name: "timeOffset"
  field :x_min, 2, type: Google.Protobuf.FloatValue, json_name: "xMin"
  field :x_max, 3, type: Google.Protobuf.FloatValue, json_name: "xMax"
  field :y_min, 4, type: Google.Protobuf.FloatValue, json_name: "yMin"
  field :y_max, 5, type: Google.Protobuf.FloatValue, json_name: "yMax"
end
defmodule Google.Cloud.Aiplatform.V1.Schema.Predict.Prediction.VideoObjectTrackingPredictionResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :id, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :time_segment_start, 3, type: Google.Protobuf.Duration, json_name: "timeSegmentStart"
  field :time_segment_end, 4, type: Google.Protobuf.Duration, json_name: "timeSegmentEnd"
  field :confidence, 5, type: Google.Protobuf.FloatValue

  field :frames, 6,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1.Schema.Predict.Prediction.VideoObjectTrackingPredictionResult.Frame
end
