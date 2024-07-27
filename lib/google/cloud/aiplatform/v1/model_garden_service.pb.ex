defmodule Google.Cloud.Aiplatform.V1.PublisherModelView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PUBLISHER_MODEL_VIEW_UNSPECIFIED, 0
  field :PUBLISHER_MODEL_VIEW_BASIC, 1
  field :PUBLISHER_MODEL_VIEW_FULL, 2
  field :PUBLISHER_MODEL_VERSION_VIEW_BASIC, 3
end

defmodule Google.Cloud.Aiplatform.V1.GetPublisherModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false

  field :view, 3,
    type: Google.Cloud.Aiplatform.V1.PublisherModelView,
    enum: true,
    deprecated: false

  field :is_hugging_face_model, 5, type: :bool, json_name: "isHuggingFaceModel", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ModelGardenService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1.ModelGardenService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :GetPublisherModel,
      Google.Cloud.Aiplatform.V1.GetPublisherModelRequest,
      Google.Cloud.Aiplatform.V1.PublisherModel
end

defmodule Google.Cloud.Aiplatform.V1.ModelGardenService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.ModelGardenService.Service
end