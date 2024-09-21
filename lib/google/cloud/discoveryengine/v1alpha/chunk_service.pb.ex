defmodule Google.Cloud.Discoveryengine.V1alpha.GetChunkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListChunksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListChunksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :chunks, 1, repeated: true, type: Google.Cloud.Discoveryengine.V1alpha.Chunk
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ChunkService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1alpha.ChunkService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetChunk,
      Google.Cloud.Discoveryengine.V1alpha.GetChunkRequest,
      Google.Cloud.Discoveryengine.V1alpha.Chunk

  rpc :ListChunks,
      Google.Cloud.Discoveryengine.V1alpha.ListChunksRequest,
      Google.Cloud.Discoveryengine.V1alpha.ListChunksResponse
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ChunkService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1alpha.ChunkService.Service
end