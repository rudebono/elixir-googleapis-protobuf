defmodule Google.Cloud.Automl.V1beta1.Model.DeploymentState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DEPLOYMENT_STATE_UNSPECIFIED | :DEPLOYED | :UNDEPLOYED

  field :DEPLOYMENT_STATE_UNSPECIFIED, 0

  field :DEPLOYED, 1

  field :UNDEPLOYED, 2
end

defmodule Google.Cloud.Automl.V1beta1.Model do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_metadata: {atom, any},
          name: String.t(),
          display_name: String.t(),
          dataset_id: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          deployment_state: Google.Cloud.Automl.V1beta1.Model.DeploymentState.t()
        }

  defstruct [
    :model_metadata,
    :name,
    :display_name,
    :dataset_id,
    :create_time,
    :update_time,
    :deployment_state
  ]

  oneof :model_metadata, 0

  field :translation_model_metadata, 15,
    type: Google.Cloud.Automl.V1beta1.TranslationModelMetadata,
    oneof: 0

  field :image_classification_model_metadata, 13,
    type: Google.Cloud.Automl.V1beta1.ImageClassificationModelMetadata,
    oneof: 0

  field :text_classification_model_metadata, 14,
    type: Google.Cloud.Automl.V1beta1.TextClassificationModelMetadata,
    oneof: 0

  field :image_object_detection_model_metadata, 20,
    type: Google.Cloud.Automl.V1beta1.ImageObjectDetectionModelMetadata,
    oneof: 0

  field :video_classification_model_metadata, 23,
    type: Google.Cloud.Automl.V1beta1.VideoClassificationModelMetadata,
    oneof: 0

  field :video_object_tracking_model_metadata, 21,
    type: Google.Cloud.Automl.V1beta1.VideoObjectTrackingModelMetadata,
    oneof: 0

  field :text_extraction_model_metadata, 19,
    type: Google.Cloud.Automl.V1beta1.TextExtractionModelMetadata,
    oneof: 0

  field :tables_model_metadata, 24,
    type: Google.Cloud.Automl.V1beta1.TablesModelMetadata,
    oneof: 0

  field :text_sentiment_model_metadata, 22,
    type: Google.Cloud.Automl.V1beta1.TextSentimentModelMetadata,
    oneof: 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :dataset_id, 3, type: :string
  field :create_time, 7, type: Google.Protobuf.Timestamp
  field :update_time, 11, type: Google.Protobuf.Timestamp
  field :deployment_state, 8, type: Google.Cloud.Automl.V1beta1.Model.DeploymentState, enum: true
end
