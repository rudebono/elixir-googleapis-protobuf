defmodule Google.Cloud.Discoveryengine.V1.AssistUserMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :time_zone, 1, type: :string, json_name: "timeZone", deprecated: false

  field :preferred_language_code, 2,
    type: :string,
    json_name: "preferredLanguageCode",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.StreamAssistRequest.ToolsSpec.VertexAiSearchSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_store_specs, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.DataStoreSpec,
    json_name: "dataStoreSpecs",
    deprecated: false

  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.StreamAssistRequest.ToolsSpec.WebGroundingSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Discoveryengine.V1.StreamAssistRequest.ToolsSpec.ImageGenerationSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Discoveryengine.V1.StreamAssistRequest.ToolsSpec.VideoGenerationSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Discoveryengine.V1.StreamAssistRequest.ToolsSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :vertex_ai_search_spec, 1,
    type: Google.Cloud.Discoveryengine.V1.StreamAssistRequest.ToolsSpec.VertexAiSearchSpec,
    json_name: "vertexAiSearchSpec",
    deprecated: false

  field :web_grounding_spec, 2,
    type: Google.Cloud.Discoveryengine.V1.StreamAssistRequest.ToolsSpec.WebGroundingSpec,
    json_name: "webGroundingSpec",
    deprecated: false

  field :image_generation_spec, 3,
    type: Google.Cloud.Discoveryengine.V1.StreamAssistRequest.ToolsSpec.ImageGenerationSpec,
    json_name: "imageGenerationSpec",
    deprecated: false

  field :video_generation_spec, 4,
    type: Google.Cloud.Discoveryengine.V1.StreamAssistRequest.ToolsSpec.VideoGenerationSpec,
    json_name: "videoGenerationSpec",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.StreamAssistRequest.GenerationSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model_id, 1, type: :string, json_name: "modelId", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.StreamAssistRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :query, 2, type: Google.Cloud.Discoveryengine.V1.Query, deprecated: false
  field :session, 3, type: :string, deprecated: false

  field :user_metadata, 6,
    type: Google.Cloud.Discoveryengine.V1.AssistUserMetadata,
    json_name: "userMetadata",
    deprecated: false

  field :tools_spec, 18,
    type: Google.Cloud.Discoveryengine.V1.StreamAssistRequest.ToolsSpec,
    json_name: "toolsSpec",
    deprecated: false

  field :generation_spec, 19,
    type: Google.Cloud.Discoveryengine.V1.StreamAssistRequest.GenerationSpec,
    json_name: "generationSpec",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.StreamAssistResponse.SessionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :session, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.StreamAssistResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :answer, 1, type: Google.Cloud.Discoveryengine.V1.AssistAnswer

  field :session_info, 2,
    type: Google.Cloud.Discoveryengine.V1.StreamAssistResponse.SessionInfo,
    json_name: "sessionInfo"

  field :assist_token, 4, type: :string, json_name: "assistToken"
end

defmodule Google.Cloud.Discoveryengine.V1.AssistantService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.AssistantService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :StreamAssist,
      Google.Cloud.Discoveryengine.V1.StreamAssistRequest,
      stream(Google.Cloud.Discoveryengine.V1.StreamAssistResponse)
end

defmodule Google.Cloud.Discoveryengine.V1.AssistantService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.AssistantService.Service
end
