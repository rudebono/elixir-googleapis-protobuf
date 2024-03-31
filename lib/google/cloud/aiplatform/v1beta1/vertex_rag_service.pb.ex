defmodule Google.Cloud.Aiplatform.V1beta1.RagQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :query, 0

  field :text, 1, type: :string, oneof: 0, deprecated: false
  field :similarity_top_k, 2, type: :int32, json_name: "similarityTopK", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RetrieveContextsRequest.VertexRagStore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rag_corpora, 1, repeated: true, type: :string, json_name: "ragCorpora", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RetrieveContextsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :data_source, 0

  field :vertex_rag_store, 2,
    type: Google.Cloud.Aiplatform.V1beta1.RetrieveContextsRequest.VertexRagStore,
    json_name: "vertexRagStore",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false
  field :query, 3, type: Google.Cloud.Aiplatform.V1beta1.RagQuery, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagContexts.Context do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :source_uri, 1, type: :string, json_name: "sourceUri"
  field :text, 2, type: :string
  field :distance, 3, type: :double
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagContexts do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :contexts, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.RagContexts.Context
end

defmodule Google.Cloud.Aiplatform.V1beta1.RetrieveContextsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :contexts, 1, type: Google.Cloud.Aiplatform.V1beta1.RagContexts
end

defmodule Google.Cloud.Aiplatform.V1beta1.VertexRagService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.VertexRagService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :RetrieveContexts,
      Google.Cloud.Aiplatform.V1beta1.RetrieveContextsRequest,
      Google.Cloud.Aiplatform.V1beta1.RetrieveContextsResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.VertexRagService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.VertexRagService.Service
end