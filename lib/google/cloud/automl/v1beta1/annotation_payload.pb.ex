defmodule Google.Cloud.Automl.V1beta1.AnnotationPayload do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          detail: {atom, any},
          annotation_spec_id: String.t(),
          display_name: String.t()
        }

  defstruct [:detail, :annotation_spec_id, :display_name]

  oneof :detail, 0
  field :translation, 2, type: Google.Cloud.Automl.V1beta1.TranslationAnnotation, oneof: 0
  field :classification, 3, type: Google.Cloud.Automl.V1beta1.ClassificationAnnotation, oneof: 0

  field :image_object_detection, 4,
    type: Google.Cloud.Automl.V1beta1.ImageObjectDetectionAnnotation,
    oneof: 0

  field :video_classification, 9,
    type: Google.Cloud.Automl.V1beta1.VideoClassificationAnnotation,
    oneof: 0

  field :video_object_tracking, 8,
    type: Google.Cloud.Automl.V1beta1.VideoObjectTrackingAnnotation,
    oneof: 0

  field :text_extraction, 6, type: Google.Cloud.Automl.V1beta1.TextExtractionAnnotation, oneof: 0
  field :text_sentiment, 7, type: Google.Cloud.Automl.V1beta1.TextSentimentAnnotation, oneof: 0
  field :tables, 10, type: Google.Cloud.Automl.V1beta1.TablesAnnotation, oneof: 0
  field :annotation_spec_id, 1, type: :string
  field :display_name, 5, type: :string
end
