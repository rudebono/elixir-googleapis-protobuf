defmodule Google.Cloud.Automl.V1.ModelEvaluation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metrics:
            {:classification_evaluation_metrics,
             Google.Cloud.Automl.V1.ClassificationEvaluationMetrics.t() | nil}
            | {:translation_evaluation_metrics,
               Google.Cloud.Automl.V1.TranslationEvaluationMetrics.t() | nil}
            | {:image_object_detection_evaluation_metrics,
               Google.Cloud.Automl.V1.ImageObjectDetectionEvaluationMetrics.t() | nil}
            | {:text_sentiment_evaluation_metrics,
               Google.Cloud.Automl.V1.TextSentimentEvaluationMetrics.t() | nil}
            | {:text_extraction_evaluation_metrics,
               Google.Cloud.Automl.V1.TextExtractionEvaluationMetrics.t() | nil},
          name: String.t(),
          annotation_spec_id: String.t(),
          display_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          evaluated_example_count: integer
        }

  defstruct [
    :metrics,
    :name,
    :annotation_spec_id,
    :display_name,
    :create_time,
    :evaluated_example_count
  ]

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

  def transform_module(), do: nil
end
