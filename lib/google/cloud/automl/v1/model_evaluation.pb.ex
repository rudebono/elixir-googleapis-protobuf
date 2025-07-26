defmodule Google.Cloud.Automl.V1.ModelEvaluation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :metrics, 0

  field :classification_evaluation_metrics, 8,
    type: Google.Cloud.Automl.V1.ClassificationEvaluationMetrics,
    json_name: "classificationEvaluationMetrics",
    oneof: 0

  field :translation_evaluation_metrics, 9,
    type: Google.Cloud.Automl.V1.TranslationEvaluationMetrics,
    json_name: "translationEvaluationMetrics",
    oneof: 0

  field :image_object_detection_evaluation_metrics, 12,
    type: Google.Cloud.Automl.V1.ImageObjectDetectionEvaluationMetrics,
    json_name: "imageObjectDetectionEvaluationMetrics",
    oneof: 0

  field :text_sentiment_evaluation_metrics, 11,
    type: Google.Cloud.Automl.V1.TextSentimentEvaluationMetrics,
    json_name: "textSentimentEvaluationMetrics",
    oneof: 0

  field :text_extraction_evaluation_metrics, 13,
    type: Google.Cloud.Automl.V1.TextExtractionEvaluationMetrics,
    json_name: "textExtractionEvaluationMetrics",
    oneof: 0

  field :name, 1, type: :string
  field :annotation_spec_id, 2, type: :string, json_name: "annotationSpecId"
  field :display_name, 15, type: :string, json_name: "displayName"
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :evaluated_example_count, 6, type: :int32, json_name: "evaluatedExampleCount"
end
