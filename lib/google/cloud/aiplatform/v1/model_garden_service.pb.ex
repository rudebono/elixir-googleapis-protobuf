defmodule Google.Cloud.Aiplatform.V1.PublisherModelView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PUBLISHER_MODEL_VIEW_UNSPECIFIED, 0
  field :PUBLISHER_MODEL_VIEW_BASIC, 1
  field :PUBLISHER_MODEL_VIEW_FULL, 2
  field :PUBLISHER_MODEL_VERSION_VIEW_BASIC, 3
end

defmodule Google.Cloud.Aiplatform.V1.GetPublisherModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false

  field :view, 3,
    type: Google.Cloud.Aiplatform.V1.PublisherModelView,
    enum: true,
    deprecated: false

  field :is_hugging_face_model, 5, type: :bool, json_name: "isHuggingFaceModel", deprecated: false
  field :hugging_face_token, 6, type: :string, json_name: "huggingFaceToken", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.DeployRequest.ModelConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :accept_eula, 1, type: :bool, json_name: "acceptEula", deprecated: false

  field :hugging_face_access_token, 2,
    type: :string,
    json_name: "huggingFaceAccessToken",
    deprecated: false

  field :hugging_face_cache_enabled, 3,
    type: :bool,
    json_name: "huggingFaceCacheEnabled",
    deprecated: false

  field :model_display_name, 4, type: :string, json_name: "modelDisplayName", deprecated: false

  field :container_spec, 5,
    type: Google.Cloud.Aiplatform.V1.ModelContainerSpec,
    json_name: "containerSpec",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.DeployRequest.EndpointConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :endpoint_display_name, 1,
    type: :string,
    json_name: "endpointDisplayName",
    deprecated: false

  field :dedicated_endpoint_enabled, 2,
    type: :bool,
    json_name: "dedicatedEndpointEnabled",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.DeployRequest.DeployConfig.SystemLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.DeployRequest.DeployConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dedicated_resources, 1,
    type: Google.Cloud.Aiplatform.V1.DedicatedResources,
    json_name: "dedicatedResources",
    deprecated: false

  field :fast_tryout_enabled, 2, type: :bool, json_name: "fastTryoutEnabled", deprecated: false

  field :system_labels, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.DeployRequest.DeployConfig.SystemLabelsEntry,
    json_name: "systemLabels",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.DeployRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :artifacts, 0

  field :publisher_model_name, 1,
    type: :string,
    json_name: "publisherModelName",
    oneof: 0,
    deprecated: false

  field :hugging_face_model_id, 2, type: :string, json_name: "huggingFaceModelId", oneof: 0
  field :destination, 4, type: :string, deprecated: false

  field :model_config, 5,
    type: Google.Cloud.Aiplatform.V1.DeployRequest.ModelConfig,
    json_name: "modelConfig",
    deprecated: false

  field :endpoint_config, 6,
    type: Google.Cloud.Aiplatform.V1.DeployRequest.EndpointConfig,
    json_name: "endpointConfig",
    deprecated: false

  field :deploy_config, 7,
    type: Google.Cloud.Aiplatform.V1.DeployRequest.DeployConfig,
    json_name: "deployConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.DeployResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :publisher_model, 1, type: :string, json_name: "publisherModel", deprecated: false
  field :endpoint, 2, type: :string, deprecated: false
  field :model, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.DeployOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :publisher_model, 2, type: :string, json_name: "publisherModel", deprecated: false
  field :destination, 3, type: :string, deprecated: false
  field :project_number, 4, type: :int64, json_name: "projectNumber", deprecated: false
  field :model_id, 5, type: :string, json_name: "modelId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ModelGardenService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1.ModelGardenService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetPublisherModel,
      Google.Cloud.Aiplatform.V1.GetPublisherModelRequest,
      Google.Cloud.Aiplatform.V1.PublisherModel

  rpc :Deploy, Google.Cloud.Aiplatform.V1.DeployRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Aiplatform.V1.ModelGardenService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.ModelGardenService.Service
end
