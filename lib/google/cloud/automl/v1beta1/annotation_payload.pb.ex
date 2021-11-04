defmodule Google.Cloud.Automl.V1beta1.AnnotationPayload do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          detail:
            {:translation, Google.Cloud.Automl.V1beta1.TranslationAnnotation.t() | nil}
            | {:classification, Google.Cloud.Automl.V1beta1.ClassificationAnnotation.t() | nil}
            | {:image_object_detection,
               Google.Cloud.Automl.V1beta1.ImageObjectDetectionAnnotation.t() | nil}
            | {:video_classification,
               Google.Cloud.Automl.V1beta1.VideoClassificationAnnotation.t() | nil}
            | {:video_object_tracking,
               Google.Cloud.Automl.V1beta1.VideoObjectTrackingAnnotation.t() | nil}
            | {:text_extraction, Google.Cloud.Automl.V1beta1.TextExtractionAnnotation.t() | nil}
            | {:text_sentiment, Google.Cloud.Automl.V1beta1.TextSentimentAnnotation.t() | nil}
            | {:tables, Google.Cloud.Automl.V1beta1.TablesAnnotation.t() | nil},
          annotation_spec_id: String.t(),
          display_name: String.t()
        }

  defstruct [:detail, :annotation_spec_id, :display_name]

  oneof :detail, 0

  field :translation, 2, type: Google.Cloud.Automl.V1beta1.TranslationAnnotation, oneof: 0
  field :classification, 3, type: Google.Cloud.Automl.V1beta1.ClassificationAnnotation, oneof: 0

  field :image_object_detection, 4,
    type: Google.Cloud.Automl.V1beta1.ImageObjectDetectionAnnotation,
    json_name: "imageObjectDetection",
    oneof: 0

  field :video_classification, 9,
    type: Google.Cloud.Automl.V1beta1.VideoClassificationAnnotation,
    json_name: "videoClassification",
    oneof: 0

  field :video_object_tracking, 8,
    type: Google.Cloud.Automl.V1beta1.VideoObjectTrackingAnnotation,
    json_name: "videoObjectTracking",
    oneof: 0

  field :text_extraction, 6,
    type: Google.Cloud.Automl.V1beta1.TextExtractionAnnotation,
    json_name: "textExtraction",
    oneof: 0

  field :text_sentiment, 7,
    type: Google.Cloud.Automl.V1beta1.TextSentimentAnnotation,
    json_name: "textSentiment",
    oneof: 0

  field :tables, 10, type: Google.Cloud.Automl.V1beta1.TablesAnnotation, oneof: 0
  field :annotation_spec_id, 1, type: :string, json_name: "annotationSpecId"
  field :display_name, 5, type: :string, json_name: "displayName"

  def transform_module(), do: nil
end
