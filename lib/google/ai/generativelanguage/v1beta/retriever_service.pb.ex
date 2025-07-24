defmodule Google.Ai.Generativelanguage.V1beta.CreateCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :corpus, 1, type: Google.Ai.Generativelanguage.V1beta.Corpus, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.GetCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.UpdateCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :corpus, 1, type: Google.Ai.Generativelanguage.V1beta.Corpus, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.DeleteCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.ListCorporaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.ListCorporaResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :corpora, 1, repeated: true, type: Google.Ai.Generativelanguage.V1beta.Corpus
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ai.Generativelanguage.V1beta.QueryCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false

  field :metadata_filters, 3,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.MetadataFilter,
    json_name: "metadataFilters",
    deprecated: false

  field :results_count, 4, type: :int32, json_name: "resultsCount", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.QueryCorpusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :relevant_chunks, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.RelevantChunk,
    json_name: "relevantChunks"
end

defmodule Google.Ai.Generativelanguage.V1beta.RelevantChunk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :chunk_relevance_score, 1, type: :float, json_name: "chunkRelevanceScore"
  field :chunk, 2, type: Google.Ai.Generativelanguage.V1beta.Chunk
end

defmodule Google.Ai.Generativelanguage.V1beta.CreateDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :document, 2, type: Google.Ai.Generativelanguage.V1beta.Document, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.GetDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.UpdateDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :document, 1, type: Google.Ai.Generativelanguage.V1beta.Document, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.DeleteDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.ListDocumentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.ListDocumentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :documents, 1, repeated: true, type: Google.Ai.Generativelanguage.V1beta.Document
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ai.Generativelanguage.V1beta.QueryDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :results_count, 3, type: :int32, json_name: "resultsCount", deprecated: false

  field :metadata_filters, 4,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.MetadataFilter,
    json_name: "metadataFilters",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.QueryDocumentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :relevant_chunks, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.RelevantChunk,
    json_name: "relevantChunks"
end

defmodule Google.Ai.Generativelanguage.V1beta.CreateChunkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :chunk, 2, type: Google.Ai.Generativelanguage.V1beta.Chunk, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.BatchCreateChunksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.CreateChunkRequest,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.BatchCreateChunksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :chunks, 1, repeated: true, type: Google.Ai.Generativelanguage.V1beta.Chunk
end

defmodule Google.Ai.Generativelanguage.V1beta.GetChunkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.UpdateChunkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :chunk, 1, type: Google.Ai.Generativelanguage.V1beta.Chunk, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.BatchUpdateChunksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.UpdateChunkRequest,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.BatchUpdateChunksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :chunks, 1, repeated: true, type: Google.Ai.Generativelanguage.V1beta.Chunk
end

defmodule Google.Ai.Generativelanguage.V1beta.DeleteChunkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.BatchDeleteChunksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.DeleteChunkRequest,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.ListChunksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.ListChunksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :chunks, 1, repeated: true, type: Google.Ai.Generativelanguage.V1beta.Chunk
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ai.Generativelanguage.V1beta.RetrieverService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1beta.RetrieverService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateCorpus,
      Google.Ai.Generativelanguage.V1beta.CreateCorpusRequest,
      Google.Ai.Generativelanguage.V1beta.Corpus

  rpc :GetCorpus,
      Google.Ai.Generativelanguage.V1beta.GetCorpusRequest,
      Google.Ai.Generativelanguage.V1beta.Corpus

  rpc :UpdateCorpus,
      Google.Ai.Generativelanguage.V1beta.UpdateCorpusRequest,
      Google.Ai.Generativelanguage.V1beta.Corpus

  rpc :DeleteCorpus,
      Google.Ai.Generativelanguage.V1beta.DeleteCorpusRequest,
      Google.Protobuf.Empty

  rpc :ListCorpora,
      Google.Ai.Generativelanguage.V1beta.ListCorporaRequest,
      Google.Ai.Generativelanguage.V1beta.ListCorporaResponse

  rpc :QueryCorpus,
      Google.Ai.Generativelanguage.V1beta.QueryCorpusRequest,
      Google.Ai.Generativelanguage.V1beta.QueryCorpusResponse

  rpc :CreateDocument,
      Google.Ai.Generativelanguage.V1beta.CreateDocumentRequest,
      Google.Ai.Generativelanguage.V1beta.Document

  rpc :GetDocument,
      Google.Ai.Generativelanguage.V1beta.GetDocumentRequest,
      Google.Ai.Generativelanguage.V1beta.Document

  rpc :UpdateDocument,
      Google.Ai.Generativelanguage.V1beta.UpdateDocumentRequest,
      Google.Ai.Generativelanguage.V1beta.Document

  rpc :DeleteDocument,
      Google.Ai.Generativelanguage.V1beta.DeleteDocumentRequest,
      Google.Protobuf.Empty

  rpc :ListDocuments,
      Google.Ai.Generativelanguage.V1beta.ListDocumentsRequest,
      Google.Ai.Generativelanguage.V1beta.ListDocumentsResponse

  rpc :QueryDocument,
      Google.Ai.Generativelanguage.V1beta.QueryDocumentRequest,
      Google.Ai.Generativelanguage.V1beta.QueryDocumentResponse

  rpc :CreateChunk,
      Google.Ai.Generativelanguage.V1beta.CreateChunkRequest,
      Google.Ai.Generativelanguage.V1beta.Chunk

  rpc :BatchCreateChunks,
      Google.Ai.Generativelanguage.V1beta.BatchCreateChunksRequest,
      Google.Ai.Generativelanguage.V1beta.BatchCreateChunksResponse

  rpc :GetChunk,
      Google.Ai.Generativelanguage.V1beta.GetChunkRequest,
      Google.Ai.Generativelanguage.V1beta.Chunk

  rpc :UpdateChunk,
      Google.Ai.Generativelanguage.V1beta.UpdateChunkRequest,
      Google.Ai.Generativelanguage.V1beta.Chunk

  rpc :BatchUpdateChunks,
      Google.Ai.Generativelanguage.V1beta.BatchUpdateChunksRequest,
      Google.Ai.Generativelanguage.V1beta.BatchUpdateChunksResponse

  rpc :DeleteChunk, Google.Ai.Generativelanguage.V1beta.DeleteChunkRequest, Google.Protobuf.Empty

  rpc :BatchDeleteChunks,
      Google.Ai.Generativelanguage.V1beta.BatchDeleteChunksRequest,
      Google.Protobuf.Empty

  rpc :ListChunks,
      Google.Ai.Generativelanguage.V1beta.ListChunksRequest,
      Google.Ai.Generativelanguage.V1beta.ListChunksResponse
end

defmodule Google.Ai.Generativelanguage.V1beta.RetrieverService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1beta.RetrieverService.Service
end
