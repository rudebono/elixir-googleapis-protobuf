defmodule Google.Cloud.Aiplatform.V1beta1.GenerateMemoriesResponse.GeneratedMemory.Action do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ACTION_UNSPECIFIED, 0
  field :CREATED, 1
  field :UPDATED, 2
  field :DELETED, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateMemoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :memory, 2, type: Google.Cloud.Aiplatform.V1beta1.Memory, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateMemoryOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetMemoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateMemoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :memory, 1, type: Google.Cloud.Aiplatform.V1beta1.Memory, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateMemoryOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListMemoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListMemoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :memories, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Memory
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteMemoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteMemoryOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.GenerateMemoriesRequest.VertexSessionSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :session, 1, type: :string, deprecated: false
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GenerateMemoriesRequest.DirectContentsSource.Event do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :content, 1, type: Google.Cloud.Aiplatform.V1beta1.Content, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GenerateMemoriesRequest.DirectContentsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :events, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.GenerateMemoriesRequest.DirectContentsSource.Event,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GenerateMemoriesRequest.DirectMemoriesSource.DirectMemory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :fact, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GenerateMemoriesRequest.DirectMemoriesSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :direct_memories, 1,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.GenerateMemoriesRequest.DirectMemoriesSource.DirectMemory,
    json_name: "directMemories",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GenerateMemoriesRequest.ScopeEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.GenerateMemoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :vertex_session_source, 2,
    type: Google.Cloud.Aiplatform.V1beta1.GenerateMemoriesRequest.VertexSessionSource,
    json_name: "vertexSessionSource",
    oneof: 0

  field :direct_contents_source, 3,
    type: Google.Cloud.Aiplatform.V1beta1.GenerateMemoriesRequest.DirectContentsSource,
    json_name: "directContentsSource",
    oneof: 0

  field :direct_memories_source, 9,
    type: Google.Cloud.Aiplatform.V1beta1.GenerateMemoriesRequest.DirectMemoriesSource,
    json_name: "directMemoriesSource",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false

  field :disable_consolidation, 4,
    type: :bool,
    json_name: "disableConsolidation",
    deprecated: false

  field :scope, 8,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.GenerateMemoriesRequest.ScopeEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GenerateMemoriesResponse.GeneratedMemory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :memory, 1, type: Google.Cloud.Aiplatform.V1beta1.Memory

  field :action, 2,
    type: Google.Cloud.Aiplatform.V1beta1.GenerateMemoriesResponse.GeneratedMemory.Action,
    enum: true
end

defmodule Google.Cloud.Aiplatform.V1beta1.GenerateMemoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generated_memories, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.GenerateMemoriesResponse.GeneratedMemory,
    json_name: "generatedMemories"
end

defmodule Google.Cloud.Aiplatform.V1beta1.GenerateMemoriesOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.RetrieveMemoriesRequest.SimilaritySearchParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :search_query, 1, type: :string, json_name: "searchQuery", deprecated: false
  field :top_k, 2, type: :int32, json_name: "topK", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RetrieveMemoriesRequest.SimpleRetrievalParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RetrieveMemoriesRequest.ScopeEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.RetrieveMemoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :retrieval_params, 0

  field :similarity_search_params, 6,
    type: Google.Cloud.Aiplatform.V1beta1.RetrieveMemoriesRequest.SimilaritySearchParams,
    json_name: "similaritySearchParams",
    oneof: 0

  field :simple_retrieval_params, 7,
    type: Google.Cloud.Aiplatform.V1beta1.RetrieveMemoriesRequest.SimpleRetrievalParams,
    json_name: "simpleRetrievalParams",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false

  field :scope, 8,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.RetrieveMemoriesRequest.ScopeEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RetrieveMemoriesResponse.RetrievedMemory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :memory, 1, type: Google.Cloud.Aiplatform.V1beta1.Memory
  field :distance, 2, type: :double
end

defmodule Google.Cloud.Aiplatform.V1beta1.RetrieveMemoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :retrieved_memories, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.RetrieveMemoriesResponse.RetrievedMemory,
    json_name: "retrievedMemories"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.MemoryBankService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.MemoryBankService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateMemory,
      Google.Cloud.Aiplatform.V1beta1.CreateMemoryRequest,
      Google.Longrunning.Operation

  rpc :GetMemory,
      Google.Cloud.Aiplatform.V1beta1.GetMemoryRequest,
      Google.Cloud.Aiplatform.V1beta1.Memory

  rpc :UpdateMemory,
      Google.Cloud.Aiplatform.V1beta1.UpdateMemoryRequest,
      Google.Longrunning.Operation

  rpc :ListMemories,
      Google.Cloud.Aiplatform.V1beta1.ListMemoriesRequest,
      Google.Cloud.Aiplatform.V1beta1.ListMemoriesResponse

  rpc :DeleteMemory,
      Google.Cloud.Aiplatform.V1beta1.DeleteMemoryRequest,
      Google.Longrunning.Operation

  rpc :GenerateMemories,
      Google.Cloud.Aiplatform.V1beta1.GenerateMemoriesRequest,
      Google.Longrunning.Operation

  rpc :RetrieveMemories,
      Google.Cloud.Aiplatform.V1beta1.RetrieveMemoriesRequest,
      Google.Cloud.Aiplatform.V1beta1.RetrieveMemoriesResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.MemoryBankService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.MemoryBankService.Service
end
