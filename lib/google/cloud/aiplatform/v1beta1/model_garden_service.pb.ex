defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModelView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PUBLISHER_MODEL_VIEW_UNSPECIFIED, 0
  field :PUBLISHER_MODEL_VIEW_BASIC, 1
  field :PUBLISHER_MODEL_VIEW_FULL, 2
  field :PUBLISHER_MODEL_VERSION_VIEW_BASIC, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetPublisherModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false

  field :view, 3,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModelView,
    enum: true,
    deprecated: false

  field :is_hugging_face_model, 5, type: :bool, json_name: "isHuggingFaceModel", deprecated: false
  field :hugging_face_token, 6, type: :string, json_name: "huggingFaceToken", deprecated: false

  field :include_equivalent_model_garden_model_deployment_configs, 7,
    type: :bool,
    json_name: "includeEquivalentModelGardenModelDeploymentConfigs",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListPublisherModelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false

  field :view, 5,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModelView,
    enum: true,
    deprecated: false

  field :order_by, 6, type: :string, json_name: "orderBy", deprecated: false
  field :language_code, 7, type: :string, json_name: "languageCode", deprecated: false
  field :list_all_versions, 8, type: :bool, json_name: "listAllVersions", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListPublisherModelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :publisher_models, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel,
    json_name: "publisherModels"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployRequest.CustomModel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :model_source, 0

  field :gcs_uri, 2, type: :string, json_name: "gcsUri", oneof: 0, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployRequest.ModelConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
    type: Google.Cloud.Aiplatform.V1beta1.ModelContainerSpec,
    json_name: "containerSpec",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployRequest.EndpointConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :endpoint_display_name, 1,
    type: :string,
    json_name: "endpointDisplayName",
    deprecated: false

  field :dedicated_endpoint_enabled, 2,
    type: :bool,
    json_name: "dedicatedEndpointEnabled",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployRequest.DeployConfig.SystemLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployRequest.DeployConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dedicated_resources, 1,
    type: Google.Cloud.Aiplatform.V1beta1.DedicatedResources,
    json_name: "dedicatedResources",
    deprecated: false

  field :fast_tryout_enabled, 2, type: :bool, json_name: "fastTryoutEnabled", deprecated: false

  field :system_labels, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.DeployRequest.DeployConfig.SystemLabelsEntry,
    json_name: "systemLabels",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :artifacts, 0

  field :publisher_model_name, 1,
    type: :string,
    json_name: "publisherModelName",
    oneof: 0,
    deprecated: false

  field :hugging_face_model_id, 2, type: :string, json_name: "huggingFaceModelId", oneof: 0

  field :custom_model, 3,
    type: Google.Cloud.Aiplatform.V1beta1.DeployRequest.CustomModel,
    json_name: "customModel",
    oneof: 0

  field :destination, 4, type: :string, deprecated: false

  field :model_config, 5,
    type: Google.Cloud.Aiplatform.V1beta1.DeployRequest.ModelConfig,
    json_name: "modelConfig",
    deprecated: false

  field :endpoint_config, 6,
    type: Google.Cloud.Aiplatform.V1beta1.DeployRequest.EndpointConfig,
    json_name: "endpointConfig",
    deprecated: false

  field :deploy_config, 7,
    type: Google.Cloud.Aiplatform.V1beta1.DeployRequest.DeployConfig,
    json_name: "deployConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployPublisherModelRequest do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :destination, 2, type: :string, deprecated: false

  field :endpoint_display_name, 3,
    type: :string,
    json_name: "endpointDisplayName",
    deprecated: false

  field :dedicated_resources, 4,
    type: Google.Cloud.Aiplatform.V1beta1.DedicatedResources,
    json_name: "dedicatedResources",
    deprecated: false

  field :model_display_name, 5, type: :string, json_name: "modelDisplayName", deprecated: false

  field :hugging_face_access_token, 6,
    type: :string,
    json_name: "huggingFaceAccessToken",
    deprecated: false

  field :accept_eula, 7, type: :bool, json_name: "acceptEula", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :publisher_model, 1, type: :string, json_name: "publisherModel", deprecated: false
  field :endpoint, 2, type: :string, deprecated: false
  field :model, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployPublisherModelResponse do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :publisher_model, 1, type: :string, json_name: "publisherModel", deprecated: false
  field :endpoint, 2, type: :string, deprecated: false
  field :model, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :publisher_model, 2, type: :string, json_name: "publisherModel", deprecated: false
  field :destination, 3, type: :string, deprecated: false
  field :project_number, 4, type: :int64, json_name: "projectNumber", deprecated: false
  field :model_id, 5, type: :string, json_name: "modelId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployPublisherModelOperationMetadata do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :publisher_model, 2, type: :string, json_name: "publisherModel", deprecated: false
  field :destination, 3, type: :string, deprecated: false
  field :project_number, 4, type: :int64, json_name: "projectNumber", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportPublisherModelResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :publisher_model, 1, type: :string, json_name: "publisherModel"
  field :destination_uri, 2, type: :string, json_name: "destinationUri"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportPublisherModelOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportPublisherModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :destination, 2, type: Google.Cloud.Aiplatform.V1beta1.GcsDestination, deprecated: false
  field :parent, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CheckPublisherModelEulaAcceptanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :publisher_model, 2, type: :string, json_name: "publisherModel", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.AcceptPublisherModelEulaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :publisher_model, 2, type: :string, json_name: "publisherModel", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModelEulaAcceptance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_number, 1, type: :int64, json_name: "projectNumber"
  field :publisher_model, 2, type: :string, json_name: "publisherModel"
  field :publisher_model_eula_acked, 3, type: :bool, json_name: "publisherModelEulaAcked"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelGardenService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.ModelGardenService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetPublisherModel,
      Google.Cloud.Aiplatform.V1beta1.GetPublisherModelRequest,
      Google.Cloud.Aiplatform.V1beta1.PublisherModel

  rpc :ListPublisherModels,
      Google.Cloud.Aiplatform.V1beta1.ListPublisherModelsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListPublisherModelsResponse

  rpc :Deploy, Google.Cloud.Aiplatform.V1beta1.DeployRequest, Google.Longrunning.Operation

  rpc :DeployPublisherModel,
      Google.Cloud.Aiplatform.V1beta1.DeployPublisherModelRequest,
      Google.Longrunning.Operation

  rpc :ExportPublisherModel,
      Google.Cloud.Aiplatform.V1beta1.ExportPublisherModelRequest,
      Google.Longrunning.Operation

  rpc :CheckPublisherModelEulaAcceptance,
      Google.Cloud.Aiplatform.V1beta1.CheckPublisherModelEulaAcceptanceRequest,
      Google.Cloud.Aiplatform.V1beta1.PublisherModelEulaAcceptance

  rpc :AcceptPublisherModelEula,
      Google.Cloud.Aiplatform.V1beta1.AcceptPublisherModelEulaRequest,
      Google.Cloud.Aiplatform.V1beta1.PublisherModelEulaAcceptance
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelGardenService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.ModelGardenService.Service
end
