defmodule Google.Cloud.Automl.V1.Model.DeploymentState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DEPLOYMENT_STATE_UNSPECIFIED | :DEPLOYED | :UNDEPLOYED

  field :DEPLOYMENT_STATE_UNSPECIFIED, 0

  field :DEPLOYED, 1

  field :UNDEPLOYED, 2
end

defmodule Google.Cloud.Automl.V1.Model.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Automl.V1.Model do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_metadata: {atom, any},
          name: String.t(),
          display_name: String.t(),
          dataset_id: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          deployment_state: Google.Cloud.Automl.V1.Model.DeploymentState.t(),
          etag: String.t(),
          labels: %{String.t() => String.t()}
        }

  defstruct [
    :model_metadata,
    :name,
    :display_name,
    :dataset_id,
    :create_time,
    :update_time,
    :deployment_state,
    :etag,
    :labels
  ]

  oneof :model_metadata, 0

  field :translation_model_metadata, 15,
    type: Google.Cloud.Automl.V1.TranslationModelMetadata,
    oneof: 0

  field :image_classification_model_metadata, 13,
    type: Google.Cloud.Automl.V1.ImageClassificationModelMetadata,
    oneof: 0

  field :text_classification_model_metadata, 14,
    type: Google.Cloud.Automl.V1.TextClassificationModelMetadata,
    oneof: 0

  field :image_object_detection_model_metadata, 20,
    type: Google.Cloud.Automl.V1.ImageObjectDetectionModelMetadata,
    oneof: 0

  field :text_extraction_model_metadata, 19,
    type: Google.Cloud.Automl.V1.TextExtractionModelMetadata,
    oneof: 0

  field :text_sentiment_model_metadata, 22,
    type: Google.Cloud.Automl.V1.TextSentimentModelMetadata,
    oneof: 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :dataset_id, 3, type: :string
  field :create_time, 7, type: Google.Protobuf.Timestamp
  field :update_time, 11, type: Google.Protobuf.Timestamp
  field :deployment_state, 8, type: Google.Cloud.Automl.V1.Model.DeploymentState, enum: true
  field :etag, 10, type: :string
  field :labels, 34, repeated: true, type: Google.Cloud.Automl.V1.Model.LabelsEntry, map: true
end
