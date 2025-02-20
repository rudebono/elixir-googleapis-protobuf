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

defmodule Google.Cloud.Aiplatform.V1beta1.DeployPublisherModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Cloud.Aiplatform.V1beta1.DeployPublisherModelResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :publisher_model, 1, type: :string, json_name: "publisherModel", deprecated: false
  field :endpoint, 2, type: :string, deprecated: false
  field :model, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployPublisherModelOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :publisher_model, 2, type: :string, json_name: "publisherModel", deprecated: false
  field :destination, 3, type: :string, deprecated: false
  field :project_number, 4, type: :int64, json_name: "projectNumber", deprecated: false
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

  rpc :DeployPublisherModel,
      Google.Cloud.Aiplatform.V1beta1.DeployPublisherModelRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelGardenService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.ModelGardenService.Service
end
