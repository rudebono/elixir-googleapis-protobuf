defmodule Google.Cloud.Automl.V1.Dataset.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Automl.V1.Dataset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :dataset_metadata, 0

  field :translation_dataset_metadata, 23,
    type: Google.Cloud.Automl.V1.TranslationDatasetMetadata,
    json_name: "translationDatasetMetadata",
    oneof: 0

  field :image_classification_dataset_metadata, 24,
    type: Google.Cloud.Automl.V1.ImageClassificationDatasetMetadata,
    json_name: "imageClassificationDatasetMetadata",
    oneof: 0

  field :text_classification_dataset_metadata, 25,
    type: Google.Cloud.Automl.V1.TextClassificationDatasetMetadata,
    json_name: "textClassificationDatasetMetadata",
    oneof: 0

  field :image_object_detection_dataset_metadata, 26,
    type: Google.Cloud.Automl.V1.ImageObjectDetectionDatasetMetadata,
    json_name: "imageObjectDetectionDatasetMetadata",
    oneof: 0

  field :text_extraction_dataset_metadata, 28,
    type: Google.Cloud.Automl.V1.TextExtractionDatasetMetadata,
    json_name: "textExtractionDatasetMetadata",
    oneof: 0

  field :text_sentiment_dataset_metadata, 30,
    type: Google.Cloud.Automl.V1.TextSentimentDatasetMetadata,
    json_name: "textSentimentDatasetMetadata",
    oneof: 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :example_count, 21, type: :int32, json_name: "exampleCount"
  field :create_time, 14, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :etag, 17, type: :string
  field :labels, 39, repeated: true, type: Google.Cloud.Automl.V1.Dataset.LabelsEntry, map: true
end