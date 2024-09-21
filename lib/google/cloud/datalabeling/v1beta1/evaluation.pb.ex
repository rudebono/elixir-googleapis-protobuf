defmodule Google.Cloud.Datalabeling.V1beta1.Evaluation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :config, 2, type: Google.Cloud.Datalabeling.V1beta1.EvaluationConfig

  field :evaluation_job_run_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "evaluationJobRunTime"

  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"

  field :evaluation_metrics, 5,
    type: Google.Cloud.Datalabeling.V1beta1.EvaluationMetrics,
    json_name: "evaluationMetrics"

  field :annotation_type, 6,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationType,
    json_name: "annotationType",
    enum: true

  field :evaluated_item_count, 7, type: :int64, json_name: "evaluatedItemCount"
end

defmodule Google.Cloud.Datalabeling.V1beta1.EvaluationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :vertical_option, 0

  field :bounding_box_evaluation_options, 1,
    type: Google.Cloud.Datalabeling.V1beta1.BoundingBoxEvaluationOptions,
    json_name: "boundingBoxEvaluationOptions",
    oneof: 0
end

defmodule Google.Cloud.Datalabeling.V1beta1.BoundingBoxEvaluationOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :iou_threshold, 1, type: :float, json_name: "iouThreshold"
end

defmodule Google.Cloud.Datalabeling.V1beta1.EvaluationMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :metrics, 0

  field :classification_metrics, 1,
    type: Google.Cloud.Datalabeling.V1beta1.ClassificationMetrics,
    json_name: "classificationMetrics",
    oneof: 0

  field :object_detection_metrics, 2,
    type: Google.Cloud.Datalabeling.V1beta1.ObjectDetectionMetrics,
    json_name: "objectDetectionMetrics",
    oneof: 0
end

defmodule Google.Cloud.Datalabeling.V1beta1.ClassificationMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :pr_curve, 1, type: Google.Cloud.Datalabeling.V1beta1.PrCurve, json_name: "prCurve"

  field :confusion_matrix, 2,
    type: Google.Cloud.Datalabeling.V1beta1.ConfusionMatrix,
    json_name: "confusionMatrix"
end

defmodule Google.Cloud.Datalabeling.V1beta1.ObjectDetectionMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :pr_curve, 1, type: Google.Cloud.Datalabeling.V1beta1.PrCurve, json_name: "prCurve"
end

defmodule Google.Cloud.Datalabeling.V1beta1.PrCurve.ConfidenceMetricsEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :confidence_threshold, 1, type: :float, json_name: "confidenceThreshold"
  field :recall, 2, type: :float
  field :precision, 3, type: :float
  field :f1_score, 4, type: :float, json_name: "f1Score"
  field :recall_at1, 5, type: :float, json_name: "recallAt1"
  field :precision_at1, 6, type: :float, json_name: "precisionAt1"
  field :f1_score_at1, 7, type: :float, json_name: "f1ScoreAt1"
  field :recall_at5, 8, type: :float, json_name: "recallAt5"
  field :precision_at5, 9, type: :float, json_name: "precisionAt5"
  field :f1_score_at5, 10, type: :float, json_name: "f1ScoreAt5"
end

defmodule Google.Cloud.Datalabeling.V1beta1.PrCurve do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :annotation_spec, 1,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec,
    json_name: "annotationSpec"

  field :area_under_curve, 2, type: :float, json_name: "areaUnderCurve"

  field :confidence_metrics_entries, 3,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.PrCurve.ConfidenceMetricsEntry,
    json_name: "confidenceMetricsEntries"

  field :mean_average_precision, 4, type: :float, json_name: "meanAveragePrecision"
end

defmodule Google.Cloud.Datalabeling.V1beta1.ConfusionMatrix.ConfusionMatrixEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :annotation_spec, 1,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec,
    json_name: "annotationSpec"

  field :item_count, 2, type: :int32, json_name: "itemCount"
end

defmodule Google.Cloud.Datalabeling.V1beta1.ConfusionMatrix.Row do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :annotation_spec, 1,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec,
    json_name: "annotationSpec"

  field :entries, 2,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.ConfusionMatrix.ConfusionMatrixEntry
end

defmodule Google.Cloud.Datalabeling.V1beta1.ConfusionMatrix do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :row, 1, repeated: true, type: Google.Cloud.Datalabeling.V1beta1.ConfusionMatrix.Row
end