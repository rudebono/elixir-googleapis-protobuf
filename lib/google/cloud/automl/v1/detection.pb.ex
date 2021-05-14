defmodule Google.Cloud.Automl.V1.ImageObjectDetectionAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bounding_box: Google.Cloud.Automl.V1.BoundingPoly.t() | nil,
          score: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:bounding_box, :score]

  field :bounding_box, 1, type: Google.Cloud.Automl.V1.BoundingPoly
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

  defstruct [:confidence_threshold, :recall, :precision, :f1_score]

  field :confidence_threshold, 1, type: :float
  field :recall, 2, type: :float
  field :precision, 3, type: :float
  field :f1_score, 4, type: :float
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

  defstruct [:iou_threshold, :mean_average_precision, :confidence_metrics_entries]

  field :iou_threshold, 1, type: :float
  field :mean_average_precision, 2, type: :float

  field :confidence_metrics_entries, 3,
    repeated: true,
    type: Google.Cloud.Automl.V1.BoundingBoxMetricsEntry.ConfidenceMetricsEntry
end

defmodule Google.Cloud.Automl.V1.ImageObjectDetectionEvaluationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          evaluated_bounding_box_count: integer,
          bounding_box_metrics_entries: [Google.Cloud.Automl.V1.BoundingBoxMetricsEntry.t()],
          bounding_box_mean_average_precision: float | :infinity | :negative_infinity | :nan
        }

  defstruct [
    :evaluated_bounding_box_count,
    :bounding_box_metrics_entries,
    :bounding_box_mean_average_precision
  ]

  field :evaluated_bounding_box_count, 1, type: :int32

  field :bounding_box_metrics_entries, 2,
    repeated: true,
    type: Google.Cloud.Automl.V1.BoundingBoxMetricsEntry

  field :bounding_box_mean_average_precision, 3, type: :float
end
