defmodule Google.Cloud.Automl.V1beta1.ClassificationType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :CLASSIFICATION_TYPE_UNSPECIFIED, 0
  field :MULTICLASS, 1
  field :MULTILABEL, 2
end

defmodule Google.Cloud.Automl.V1beta1.ClassificationAnnotation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :score, 1, type: :float
end

defmodule Google.Cloud.Automl.V1beta1.VideoClassificationAnnotation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1, type: :string

  field :classification_annotation, 2,
    type: Google.Cloud.Automl.V1beta1.ClassificationAnnotation,
    json_name: "classificationAnnotation"

  field :time_segment, 3, type: Google.Cloud.Automl.V1beta1.TimeSegment, json_name: "timeSegment"
end

defmodule Google.Cloud.Automl.V1beta1.ClassificationEvaluationMetrics.ConfidenceMetricsEntry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :confidence_threshold, 1, type: :float, json_name: "confidenceThreshold"
  field :position_threshold, 14, type: :int32, json_name: "positionThreshold"
  field :recall, 2, type: :float
  field :precision, 3, type: :float
  field :false_positive_rate, 8, type: :float, json_name: "falsePositiveRate"
  field :f1_score, 4, type: :float, json_name: "f1Score"
  field :recall_at1, 5, type: :float, json_name: "recallAt1"
  field :precision_at1, 6, type: :float, json_name: "precisionAt1"
  field :false_positive_rate_at1, 9, type: :float, json_name: "falsePositiveRateAt1"
  field :f1_score_at1, 7, type: :float, json_name: "f1ScoreAt1"
  field :true_positive_count, 10, type: :int64, json_name: "truePositiveCount"
  field :false_positive_count, 11, type: :int64, json_name: "falsePositiveCount"
  field :false_negative_count, 12, type: :int64, json_name: "falseNegativeCount"
  field :true_negative_count, 13, type: :int64, json_name: "trueNegativeCount"
end

defmodule Google.Cloud.Automl.V1beta1.ClassificationEvaluationMetrics.ConfusionMatrix.Row do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :example_count, 1, repeated: true, type: :int32, json_name: "exampleCount"
end

defmodule Google.Cloud.Automl.V1beta1.ClassificationEvaluationMetrics.ConfusionMatrix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :annotation_spec_id, 1, repeated: true, type: :string, json_name: "annotationSpecId"
  field :display_name, 3, repeated: true, type: :string, json_name: "displayName"

  field :row, 2,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.ClassificationEvaluationMetrics.ConfusionMatrix.Row
end

defmodule Google.Cloud.Automl.V1beta1.ClassificationEvaluationMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :au_prc, 1, type: :float, json_name: "auPrc"
  field :base_au_prc, 2, type: :float, json_name: "baseAuPrc", deprecated: true
  field :au_roc, 6, type: :float, json_name: "auRoc"
  field :log_loss, 7, type: :float, json_name: "logLoss"

  field :confidence_metrics_entry, 3,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.ClassificationEvaluationMetrics.ConfidenceMetricsEntry,
    json_name: "confidenceMetricsEntry"

  field :confusion_matrix, 4,
    type: Google.Cloud.Automl.V1beta1.ClassificationEvaluationMetrics.ConfusionMatrix,
    json_name: "confusionMatrix"

  field :annotation_spec_id, 5, repeated: true, type: :string, json_name: "annotationSpecId"
end