defmodule Google.Cloud.Automl.V1.ImageObjectDetectionAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bounding_box: Google.Cloud.Automl.V1.BoundingPoly.t() | nil,
          score: float | :infinity | :negative_infinity | :nan
        }

  defstruct bounding_box: nil,
            score: 0.0

  field :bounding_box, 1, type: Google.Cloud.Automl.V1.BoundingPoly, json_name: "boundingBox"
  field :score, 2, type: :float
end
defmodule Google.Cloud.Automl.V1.BoundingBoxMetricsEntry.ConfidenceMetricsEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          confidence_threshold: float | :infinity | :negative_infinity | :nan,
          recall: float | :infinity | :negative_infinity | :nan,
          precision: float | :infinity | :negative_infinity | :nan,
          f1_score: float | :infinity | :negative_infinity | :nan
        }

  defstruct confidence_threshold: 0.0,
            recall: 0.0,
            precision: 0.0,
            f1_score: 0.0

  field :confidence_threshold, 1, type: :float, json_name: "confidenceThreshold"
  field :recall, 2, type: :float
  field :precision, 3, type: :float
  field :f1_score, 4, type: :float, json_name: "f1Score"
end
defmodule Google.Cloud.Automl.V1.BoundingBoxMetricsEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          iou_threshold: float | :infinity | :negative_infinity | :nan,
          mean_average_precision: float | :infinity | :negative_infinity | :nan,
          confidence_metrics_entries: [
            Google.Cloud.Automl.V1.BoundingBoxMetricsEntry.ConfidenceMetricsEntry.t()
          ]
        }

  defstruct iou_threshold: 0.0,
            mean_average_precision: 0.0,
            confidence_metrics_entries: []

  field :iou_threshold, 1, type: :float, json_name: "iouThreshold"
  field :mean_average_precision, 2, type: :float, json_name: "meanAveragePrecision"

  field :confidence_metrics_entries, 3,
    repeated: true,
    type: Google.Cloud.Automl.V1.BoundingBoxMetricsEntry.ConfidenceMetricsEntry,
    json_name: "confidenceMetricsEntries"
end
defmodule Google.Cloud.Automl.V1.ImageObjectDetectionEvaluationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          evaluated_bounding_box_count: integer,
          bounding_box_metrics_entries: [Google.Cloud.Automl.V1.BoundingBoxMetricsEntry.t()],
          bounding_box_mean_average_precision: float | :infinity | :negative_infinity | :nan
        }

  defstruct evaluated_bounding_box_count: 0,
            bounding_box_metrics_entries: [],
            bounding_box_mean_average_precision: 0.0

  field :evaluated_bounding_box_count, 1, type: :int32, json_name: "evaluatedBoundingBoxCount"

  field :bounding_box_metrics_entries, 2,
    repeated: true,
    type: Google.Cloud.Automl.V1.BoundingBoxMetricsEntry,
    json_name: "boundingBoxMetricsEntries"

  field :bounding_box_mean_average_precision, 3,
    type: :float,
    json_name: "boundingBoxMeanAveragePrecision"
end
