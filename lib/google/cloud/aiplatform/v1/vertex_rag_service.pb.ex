defmodule Google.Cloud.Aiplatform.V1.RagQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :query, 0

  field :text, 1, type: :string, oneof: 0, deprecated: false

  field :rag_retrieval_config, 6,
    type: Google.Cloud.Aiplatform.V1.RagRetrievalConfig,
    json_name: "ragRetrievalConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.RetrieveContextsRequest.VertexRagStore.RagResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rag_corpus, 1, type: :string, json_name: "ragCorpus", deprecated: false

  field :rag_file_ids, 2,
    repeated: true,
    type: :string,
    json_name: "ragFileIds",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.RetrieveContextsRequest.VertexRagStore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rag_resources, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.RetrieveContextsRequest.VertexRagStore.RagResource,
    json_name: "ragResources",
    deprecated: false

  field :vector_distance_threshold, 2,
    proto3_optional: true,
    type: :double,
    json_name: "vectorDistanceThreshold",
    deprecated: true
end

defmodule Google.Cloud.Aiplatform.V1.RetrieveContextsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :data_source, 0

  field :vertex_rag_store, 2,
    type: Google.Cloud.Aiplatform.V1.RetrieveContextsRequest.VertexRagStore,
    json_name: "vertexRagStore",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false
  field :query, 3, type: Google.Cloud.Aiplatform.V1.RagQuery, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.RagContexts.Context do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :source_uri, 1, type: :string, json_name: "sourceUri"
  field :source_display_name, 5, type: :string, json_name: "sourceDisplayName"
  field :text, 2, type: :string
  field :score, 6, proto3_optional: true, type: :double
end

defmodule Google.Cloud.Aiplatform.V1.RagContexts do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :contexts, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.RagContexts.Context
end

defmodule Google.Cloud.Aiplatform.V1.RetrieveContextsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :contexts, 1, type: Google.Cloud.Aiplatform.V1.RagContexts
end

defmodule Google.Cloud.Aiplatform.V1.AugmentPromptRequest.Model do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :model_version, 2, type: :string, json_name: "modelVersion", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.AugmentPromptRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :data_source, 0

  field :vertex_rag_store, 4,
    type: Google.Cloud.Aiplatform.V1.VertexRagStore,
    json_name: "vertexRagStore",
    oneof: 0,
    deprecated: false

  field :parent, 1, type: :string, deprecated: false
  field :contents, 2, repeated: true, type: Google.Cloud.Aiplatform.V1.Content, deprecated: false
  field :model, 3, type: Google.Cloud.Aiplatform.V1.AugmentPromptRequest.Model, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.AugmentPromptResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :augmented_prompt, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Content,
    json_name: "augmentedPrompt"

  field :facts, 2, repeated: true, type: Google.Cloud.Aiplatform.V1.Fact
end

defmodule Google.Cloud.Aiplatform.V1.CorroborateContentRequest.Parameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :citation_threshold, 1, type: :double, json_name: "citationThreshold", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.CorroborateContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :content, 2,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1.Content,
    deprecated: false

  field :facts, 3, repeated: true, type: Google.Cloud.Aiplatform.V1.Fact, deprecated: false

  field :parameters, 4,
    type: Google.Cloud.Aiplatform.V1.CorroborateContentRequest.Parameters,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.CorroborateContentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :corroboration_score, 1,
    proto3_optional: true,
    type: :float,
    json_name: "corroborationScore"

  field :claims, 2, repeated: true, type: Google.Cloud.Aiplatform.V1.Claim
end

defmodule Google.Cloud.Aiplatform.V1.Fact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :query, 1, proto3_optional: true, type: :string
  field :title, 2, proto3_optional: true, type: :string
  field :uri, 3, proto3_optional: true, type: :string
  field :summary, 4, proto3_optional: true, type: :string

  field :vector_distance, 5,
    proto3_optional: true,
    type: :double,
    json_name: "vectorDistance",
    deprecated: true

  field :score, 6, proto3_optional: true, type: :double
end

defmodule Google.Cloud.Aiplatform.V1.Claim do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_index, 1, proto3_optional: true, type: :int32, json_name: "startIndex"
  field :end_index, 2, proto3_optional: true, type: :int32, json_name: "endIndex"
  field :fact_indexes, 3, repeated: true, type: :int32, json_name: "factIndexes"
  field :score, 4, proto3_optional: true, type: :float
end

defmodule Google.Cloud.Aiplatform.V1.VertexRagService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1.VertexRagService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :RetrieveContexts,
      Google.Cloud.Aiplatform.V1.RetrieveContextsRequest,
      Google.Cloud.Aiplatform.V1.RetrieveContextsResponse

  rpc :AugmentPrompt,
      Google.Cloud.Aiplatform.V1.AugmentPromptRequest,
      Google.Cloud.Aiplatform.V1.AugmentPromptResponse

  rpc :CorroborateContent,
      Google.Cloud.Aiplatform.V1.CorroborateContentRequest,
      Google.Cloud.Aiplatform.V1.CorroborateContentResponse
end

defmodule Google.Cloud.Aiplatform.V1.VertexRagService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.VertexRagService.Service
end
