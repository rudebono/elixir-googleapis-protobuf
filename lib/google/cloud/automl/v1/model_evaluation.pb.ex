defmodule Google.Cloud.Automl.V1.ModelEvaluation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metrics: {atom, any},
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
    oneof: 0

  field :translation_evaluation_metrics, 9,
    type: Google.Cloud.Automl.V1.TranslationEvaluationMetrics,
    oneof: 0

  field :image_object_detection_evaluation_metrics, 12,
    type: Google.Cloud.Automl.V1.ImageObjectDetectionEvaluationMetrics,
    oneof: 0

  field :text_sentiment_evaluation_metrics, 11,
    type: Google.Cloud.Automl.V1.TextSentimentEvaluationMetrics,
    oneof: 0

  field :text_extraction_evaluation_metrics, 13,
    type: Google.Cloud.Automl.V1.TextExtractionEvaluationMetrics,
    oneof: 0

  field :name, 1, type: :string
  field :annotation_spec_id, 2, type: :string
  field :display_name, 15, type: :string
  field :create_time, 5, type: Google.Protobuf.Timestamp
  field :evaluated_example_count, 6, type: :int32
end
