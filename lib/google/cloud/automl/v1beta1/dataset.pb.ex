defmodule Google.Cloud.Automl.V1beta1.Dataset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset_metadata: {atom, any},
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          example_count: integer,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          etag: String.t()
        }

  defstruct [
    :dataset_metadata,
    :name,
    :display_name,
    :description,
    :example_count,
    :create_time,
    :etag
  ]

  oneof :dataset_metadata, 0

  field :translation_dataset_metadata, 23,
    type: Google.Cloud.Automl.V1beta1.TranslationDatasetMetadata,
    oneof: 0

  field :image_classification_dataset_metadata, 24,
    type: Google.Cloud.Automl.V1beta1.ImageClassificationDatasetMetadata,
    oneof: 0

  field :text_classification_dataset_metadata, 25,
    type: Google.Cloud.Automl.V1beta1.TextClassificationDatasetMetadata,
    oneof: 0

  field :image_object_detection_dataset_metadata, 26,
    type: Google.Cloud.Automl.V1beta1.ImageObjectDetectionDatasetMetadata,
    oneof: 0

  field :video_classification_dataset_metadata, 31,
    type: Google.Cloud.Automl.V1beta1.VideoClassificationDatasetMetadata,
    oneof: 0

  field :video_object_tracking_dataset_metadata, 29,
    type: Google.Cloud.Automl.V1beta1.VideoObjectTrackingDatasetMetadata,
    oneof: 0

  field :text_extraction_dataset_metadata, 28,
    type: Google.Cloud.Automl.V1beta1.TextExtractionDatasetMetadata,
    oneof: 0

  field :text_sentiment_dataset_metadata, 30,
    type: Google.Cloud.Automl.V1beta1.TextSentimentDatasetMetadata,
    oneof: 0

  field :tables_dataset_metadata, 33,
    type: Google.Cloud.Automl.V1beta1.TablesDatasetMetadata,
    oneof: 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :description, 3, type: :string
  field :example_count, 21, type: :int32
  field :create_time, 14, type: Google.Protobuf.Timestamp
  field :etag, 17, type: :string
end
