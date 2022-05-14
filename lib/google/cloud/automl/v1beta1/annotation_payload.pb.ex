defmodule Google.Cloud.Automl.V1beta1.AnnotationPayload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
end
