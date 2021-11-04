defmodule Google.Cloud.Automl.V1beta1.Dataset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset_metadata:
            {:translation_dataset_metadata,
             Google.Cloud.Automl.V1beta1.TranslationDatasetMetadata.t() | nil}
            | {:image_classification_dataset_metadata,
               Google.Cloud.Automl.V1beta1.ImageClassificationDatasetMetadata.t() | nil}
            | {:text_classification_dataset_metadata,
               Google.Cloud.Automl.V1beta1.TextClassificationDatasetMetadata.t() | nil}
            | {:image_object_detection_dataset_metadata,
               Google.Cloud.Automl.V1beta1.ImageObjectDetectionDatasetMetadata.t() | nil}
            | {:video_classification_dataset_metadata,
               Google.Cloud.Automl.V1beta1.VideoClassificationDatasetMetadata.t() | nil}
            | {:video_object_tracking_dataset_metadata,
               Google.Cloud.Automl.V1beta1.VideoObjectTrackingDatasetMetadata.t() | nil}
            | {:text_extraction_dataset_metadata,
               Google.Cloud.Automl.V1beta1.TextExtractionDatasetMetadata.t() | nil}
            | {:text_sentiment_dataset_metadata,
               Google.Cloud.Automl.V1beta1.TextSentimentDatasetMetadata.t() | nil}
            | {:tables_dataset_metadata,
               Google.Cloud.Automl.V1beta1.TablesDatasetMetadata.t() | nil},
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
    json_name: "translationDatasetMetadata",
    oneof: 0

  field :image_classification_dataset_metadata, 24,
    type: Google.Cloud.Automl.V1beta1.ImageClassificationDatasetMetadata,
    json_name: "imageClassificationDatasetMetadata",
    oneof: 0

  field :text_classification_dataset_metadata, 25,
    type: Google.Cloud.Automl.V1beta1.TextClassificationDatasetMetadata,
    json_name: "textClassificationDatasetMetadata",
    oneof: 0

  field :image_object_detection_dataset_metadata, 26,
    type: Google.Cloud.Automl.V1beta1.ImageObjectDetectionDatasetMetadata,
    json_name: "imageObjectDetectionDatasetMetadata",
    oneof: 0

  field :video_classification_dataset_metadata, 31,
    type: Google.Cloud.Automl.V1beta1.VideoClassificationDatasetMetadata,
    json_name: "videoClassificationDatasetMetadata",
    oneof: 0

  field :video_object_tracking_dataset_metadata, 29,
    type: Google.Cloud.Automl.V1beta1.VideoObjectTrackingDatasetMetadata,
    json_name: "videoObjectTrackingDatasetMetadata",
    oneof: 0

  field :text_extraction_dataset_metadata, 28,
    type: Google.Cloud.Automl.V1beta1.TextExtractionDatasetMetadata,
    json_name: "textExtractionDatasetMetadata",
    oneof: 0

  field :text_sentiment_dataset_metadata, 30,
    type: Google.Cloud.Automl.V1beta1.TextSentimentDatasetMetadata,
    json_name: "textSentimentDatasetMetadata",
    oneof: 0

  field :tables_dataset_metadata, 33,
    type: Google.Cloud.Automl.V1beta1.TablesDatasetMetadata,
    json_name: "tablesDatasetMetadata",
    oneof: 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :example_count, 21, type: :int32, json_name: "exampleCount"
  field :create_time, 14, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :etag, 17, type: :string

  def transform_module(), do: nil
end
