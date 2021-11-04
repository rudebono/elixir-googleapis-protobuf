defmodule Google.Cloud.Automl.V1beta1.ImageObjectDetectionAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bounding_box: Google.Cloud.Automl.V1beta1.BoundingPoly.t() | nil,
          score: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:bounding_box, :score]

  field :bounding_box, 1, type: Google.Cloud.Automl.V1beta1.BoundingPoly, json_name: "boundingBox"
  field :score, 2, type: :float

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.VideoObjectTrackingAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance_id: String.t(),
          time_offset: Google.Protobuf.Duration.t() | nil,
          bounding_box: Google.Cloud.Automl.V1beta1.BoundingPoly.t() | nil,
          score: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:instance_id, :time_offset, :bounding_box, :score]

  field :instance_id, 1, type: :string, json_name: "instanceId"
  field :time_offset, 2, type: Google.Protobuf.Duration, json_name: "timeOffset"
  field :bounding_box, 3, type: Google.Cloud.Automl.V1beta1.BoundingPoly, json_name: "boundingBox"
  field :score, 4, type: :float

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.BoundingBoxMetricsEntry.ConfidenceMetricsEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          confidence_threshold: float | :infinity | :negative_infinity | :nan,
          recall: float | :infinity | :negative_infinity | :nan,
          precision: float | :infinity | :negative_infinity | :nan,
          f1_score: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:confidence_threshold, :recall, :precision, :f1_score]

  field :confidence_threshold, 1, type: :float, json_name: "confidenceThreshold"
  field :recall, 2, type: :float
  field :precision, 3, type: :float
  field :f1_score, 4, type: :float, json_name: "f1Score"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.BoundingBoxMetricsEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          iou_threshold: float | :infinity | :negative_infinity | :nan,
          mean_average_precision: float | :infinity | :negative_infinity | :nan,
          confidence_metrics_entries: [
            Google.Cloud.Automl.V1beta1.BoundingBoxMetricsEntry.ConfidenceMetricsEntry.t()
          ]
        }

  defstruct [:iou_threshold, :mean_average_precision, :confidence_metrics_entries]

  field :iou_threshold, 1, type: :float, json_name: "iouThreshold"
  field :mean_average_precision, 2, type: :float, json_name: "meanAveragePrecision"

  field :confidence_metrics_entries, 3,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.BoundingBoxMetricsEntry.ConfidenceMetricsEntry,
    json_name: "confidenceMetricsEntries"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.ImageObjectDetectionEvaluationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          evaluated_bounding_box_count: integer,
          bounding_box_metrics_entries: [Google.Cloud.Automl.V1beta1.BoundingBoxMetricsEntry.t()],
          bounding_box_mean_average_precision: float | :infinity | :negative_infinity | :nan
        }

  defstruct [
    :evaluated_bounding_box_count,
    :bounding_box_metrics_entries,
    :bounding_box_mean_average_precision
  ]

  field :evaluated_bounding_box_count, 1, type: :int32, json_name: "evaluatedBoundingBoxCount"

  field :bounding_box_metrics_entries, 2,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.BoundingBoxMetricsEntry,
    json_name: "boundingBoxMetricsEntries"

  field :bounding_box_mean_average_precision, 3,
    type: :float,
    json_name: "boundingBoxMeanAveragePrecision"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.VideoObjectTrackingEvaluationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          evaluated_frame_count: integer,
          evaluated_bounding_box_count: integer,
          bounding_box_metrics_entries: [Google.Cloud.Automl.V1beta1.BoundingBoxMetricsEntry.t()],
          bounding_box_mean_average_precision: float | :infinity | :negative_infinity | :nan
        }

  defstruct [
    :evaluated_frame_count,
    :evaluated_bounding_box_count,
    :bounding_box_metrics_entries,
    :bounding_box_mean_average_precision
  ]

  field :evaluated_frame_count, 1, type: :int32, json_name: "evaluatedFrameCount"
  field :evaluated_bounding_box_count, 2, type: :int32, json_name: "evaluatedBoundingBoxCount"

  field :bounding_box_metrics_entries, 4,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.BoundingBoxMetricsEntry,
    json_name: "boundingBoxMetricsEntries"

  field :bounding_box_mean_average_precision, 6,
    type: :float,
    json_name: "boundingBoxMeanAveragePrecision"

  def transform_module(), do: nil
end
