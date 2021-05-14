defmodule Google.Cloud.Datalabeling.V1beta1.Evaluation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          config: Google.Cloud.Datalabeling.V1beta1.EvaluationConfig.t() | nil,
          evaluation_job_run_time: Google.Protobuf.Timestamp.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          evaluation_metrics: Google.Cloud.Datalabeling.V1beta1.EvaluationMetrics.t() | nil,
          annotation_type: Google.Cloud.Datalabeling.V1beta1.AnnotationType.t(),
          evaluated_item_count: integer
        }

  defstruct [
    :name,
    :config,
    :evaluation_job_run_time,
    :create_time,
    :evaluation_metrics,
    :annotation_type,
    :evaluated_item_count
  ]

  field :name, 1, type: :string
  field :config, 2, type: Google.Cloud.Datalabeling.V1beta1.EvaluationConfig
  field :evaluation_job_run_time, 3, type: Google.Protobuf.Timestamp
  field :create_time, 4, type: Google.Protobuf.Timestamp
  field :evaluation_metrics, 5, type: Google.Cloud.Datalabeling.V1beta1.EvaluationMetrics
  field :annotation_type, 6, type: Google.Cloud.Datalabeling.V1beta1.AnnotationType, enum: true
  field :evaluated_item_count, 7, type: :int64
end

defmodule Google.Cloud.Datalabeling.V1beta1.EvaluationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vertical_option: {atom, any}
        }

  defstruct [:vertical_option]

  oneof :vertical_option, 0

  field :bounding_box_evaluation_options, 1,
    type: Google.Cloud.Datalabeling.V1beta1.BoundingBoxEvaluationOptions,
    oneof: 0
end

defmodule Google.Cloud.Datalabeling.V1beta1.BoundingBoxEvaluationOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          iou_threshold: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:iou_threshold]

  field :iou_threshold, 1, type: :float
end

defmodule Google.Cloud.Datalabeling.V1beta1.EvaluationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metrics: {atom, any}
        }

  defstruct [:metrics]

  oneof :metrics, 0

  field :classification_metrics, 1,
    type: Google.Cloud.Datalabeling.V1beta1.ClassificationMetrics,
    oneof: 0

  field :object_detection_metrics, 2,
    type: Google.Cloud.Datalabeling.V1beta1.ObjectDetectionMetrics,
    oneof: 0
end

defmodule Google.Cloud.Datalabeling.V1beta1.ClassificationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pr_curve: Google.Cloud.Datalabeling.V1beta1.PrCurve.t() | nil,
          confusion_matrix: Google.Cloud.Datalabeling.V1beta1.ConfusionMatrix.t() | nil
        }

  defstruct [:pr_curve, :confusion_matrix]

  field :pr_curve, 1, type: Google.Cloud.Datalabeling.V1beta1.PrCurve
  field :confusion_matrix, 2, type: Google.Cloud.Datalabeling.V1beta1.ConfusionMatrix
end

defmodule Google.Cloud.Datalabeling.V1beta1.ObjectDetectionMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pr_curve: Google.Cloud.Datalabeling.V1beta1.PrCurve.t() | nil
        }

  defstruct [:pr_curve]

  field :pr_curve, 1, type: Google.Cloud.Datalabeling.V1beta1.PrCurve
end

defmodule Google.Cloud.Datalabeling.V1beta1.PrCurve.ConfidenceMetricsEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          confidence_threshold: float | :infinity | :negative_infinity | :nan,
          recall: float | :infinity | :negative_infinity | :nan,
          precision: float | :infinity | :negative_infinity | :nan,
          f1_score: float | :infinity | :negative_infinity | :nan,
          recall_at1: float | :infinity | :negative_infinity | :nan,
          precision_at1: float | :infinity | :negative_infinity | :nan,
          f1_score_at1: float | :infinity | :negative_infinity | :nan,
          recall_at5: float | :infinity | :negative_infinity | :nan,
          precision_at5: float | :infinity | :negative_infinity | :nan,
          f1_score_at5: float | :infinity | :negative_infinity | :nan
        }

  defstruct [
    :confidence_threshold,
    :recall,
    :precision,
    :f1_score,
    :recall_at1,
    :precision_at1,
    :f1_score_at1,
    :recall_at5,
    :precision_at5,
    :f1_score_at5
  ]

  field :confidence_threshold, 1, type: :float
  field :recall, 2, type: :float
  field :precision, 3, type: :float
  field :f1_score, 4, type: :float
  field :recall_at1, 5, type: :float
  field :precision_at1, 6, type: :float
  field :f1_score_at1, 7, type: :float
  field :recall_at5, 8, type: :float
  field :precision_at5, 9, type: :float
  field :f1_score_at5, 10, type: :float
end

defmodule Google.Cloud.Datalabeling.V1beta1.PrCurve do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec.t() | nil,
          area_under_curve: float | :infinity | :negative_infinity | :nan,
          confidence_metrics_entries: [
            Google.Cloud.Datalabeling.V1beta1.PrCurve.ConfidenceMetricsEntry.t()
          ],
          mean_average_precision: float | :infinity | :negative_infinity | :nan
        }

  defstruct [
    :annotation_spec,
    :area_under_curve,
    :confidence_metrics_entries,
    :mean_average_precision
  ]

  field :annotation_spec, 1, type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec
  field :area_under_curve, 2, type: :float

  field :confidence_metrics_entries, 3,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.PrCurve.ConfidenceMetricsEntry

  field :mean_average_precision, 4, type: :float
end

defmodule Google.Cloud.Datalabeling.V1beta1.ConfusionMatrix.ConfusionMatrixEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec.t() | nil,
          item_count: integer
        }

  defstruct [:annotation_spec, :item_count]

  field :annotation_spec, 1, type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec
  field :item_count, 2, type: :int32
end

defmodule Google.Cloud.Datalabeling.V1beta1.ConfusionMatrix.Row do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec.t() | nil,
          entries: [Google.Cloud.Datalabeling.V1beta1.ConfusionMatrix.ConfusionMatrixEntry.t()]
        }

  defstruct [:annotation_spec, :entries]

  field :annotation_spec, 1, type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec

  field :entries, 2,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.ConfusionMatrix.ConfusionMatrixEntry
end

defmodule Google.Cloud.Datalabeling.V1beta1.ConfusionMatrix do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          row: [Google.Cloud.Datalabeling.V1beta1.ConfusionMatrix.Row.t()]
        }

  defstruct [:row]

  field :row, 1, repeated: true, type: Google.Cloud.Datalabeling.V1beta1.ConfusionMatrix.Row
end
