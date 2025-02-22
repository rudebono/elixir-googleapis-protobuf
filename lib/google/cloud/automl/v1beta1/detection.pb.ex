defmodule Google.Cloud.Automl.V1beta1.ImageObjectDetectionAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :bounding_box, 1, type: Google.Cloud.Automl.V1beta1.BoundingPoly, json_name: "boundingBox"
  field :score, 2, type: :float
end

defmodule Google.Cloud.Automl.V1beta1.VideoObjectTrackingAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance_id, 1, type: :string, json_name: "instanceId"
  field :time_offset, 2, type: Google.Protobuf.Duration, json_name: "timeOffset"
  field :bounding_box, 3, type: Google.Cloud.Automl.V1beta1.BoundingPoly, json_name: "boundingBox"
  field :score, 4, type: :float
end

defmodule Google.Cloud.Automl.V1beta1.BoundingBoxMetricsEntry.ConfidenceMetricsEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :confidence_threshold, 1, type: :float, json_name: "confidenceThreshold"
  field :recall, 2, type: :float
  field :precision, 3, type: :float
  field :f1_score, 4, type: :float, json_name: "f1Score"
end

defmodule Google.Cloud.Automl.V1beta1.BoundingBoxMetricsEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :iou_threshold, 1, type: :float, json_name: "iouThreshold"
  field :mean_average_precision, 2, type: :float, json_name: "meanAveragePrecision"

  field :confidence_metrics_entries, 3,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.BoundingBoxMetricsEntry.ConfidenceMetricsEntry,
    json_name: "confidenceMetricsEntries"
end

defmodule Google.Cloud.Automl.V1beta1.ImageObjectDetectionEvaluationMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :evaluated_bounding_box_count, 1, type: :int32, json_name: "evaluatedBoundingBoxCount"

  field :bounding_box_metrics_entries, 2,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.BoundingBoxMetricsEntry,
    json_name: "boundingBoxMetricsEntries"

  field :bounding_box_mean_average_precision, 3,
    type: :float,
    json_name: "boundingBoxMeanAveragePrecision"
end

defmodule Google.Cloud.Automl.V1beta1.VideoObjectTrackingEvaluationMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :evaluated_frame_count, 1, type: :int32, json_name: "evaluatedFrameCount"
  field :evaluated_bounding_box_count, 2, type: :int32, json_name: "evaluatedBoundingBoxCount"

  field :bounding_box_metrics_entries, 4,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.BoundingBoxMetricsEntry,
    json_name: "boundingBoxMetricsEntries"

  field :bounding_box_mean_average_precision, 6,
    type: :float,
    json_name: "boundingBoxMeanAveragePrecision"
end
