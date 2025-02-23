defmodule Google.Cloud.Automl.V1beta1.Model.DeploymentState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DEPLOYMENT_STATE_UNSPECIFIED, 0
  field :DEPLOYED, 1
  field :UNDEPLOYED, 2
end

defmodule Google.Cloud.Automl.V1beta1.Model do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :model_metadata, 0

  field :translation_model_metadata, 15,
    type: Google.Cloud.Automl.V1beta1.TranslationModelMetadata,
    json_name: "translationModelMetadata",
    oneof: 0

  field :image_classification_model_metadata, 13,
    type: Google.Cloud.Automl.V1beta1.ImageClassificationModelMetadata,
    json_name: "imageClassificationModelMetadata",
    oneof: 0

  field :text_classification_model_metadata, 14,
    type: Google.Cloud.Automl.V1beta1.TextClassificationModelMetadata,
    json_name: "textClassificationModelMetadata",
    oneof: 0

  field :image_object_detection_model_metadata, 20,
    type: Google.Cloud.Automl.V1beta1.ImageObjectDetectionModelMetadata,
    json_name: "imageObjectDetectionModelMetadata",
    oneof: 0

  field :video_classification_model_metadata, 23,
    type: Google.Cloud.Automl.V1beta1.VideoClassificationModelMetadata,
    json_name: "videoClassificationModelMetadata",
    oneof: 0

  field :video_object_tracking_model_metadata, 21,
    type: Google.Cloud.Automl.V1beta1.VideoObjectTrackingModelMetadata,
    json_name: "videoObjectTrackingModelMetadata",
    oneof: 0

  field :text_extraction_model_metadata, 19,
    type: Google.Cloud.Automl.V1beta1.TextExtractionModelMetadata,
    json_name: "textExtractionModelMetadata",
    oneof: 0

  field :tables_model_metadata, 24,
    type: Google.Cloud.Automl.V1beta1.TablesModelMetadata,
    json_name: "tablesModelMetadata",
    oneof: 0

  field :text_sentiment_model_metadata, 22,
    type: Google.Cloud.Automl.V1beta1.TextSentimentModelMetadata,
    json_name: "textSentimentModelMetadata",
    oneof: 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :dataset_id, 3, type: :string, json_name: "datasetId"
  field :create_time, 7, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 11, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :deployment_state, 8,
    type: Google.Cloud.Automl.V1beta1.Model.DeploymentState,
    json_name: "deploymentState",
    enum: true
end
