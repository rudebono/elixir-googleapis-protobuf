defmodule Google.Ai.Generativelanguage.V1alpha.CreateCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :corpus, 1, type: Google.Ai.Generativelanguage.V1alpha.Corpus, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.GetCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.UpdateCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :corpus, 1, type: Google.Ai.Generativelanguage.V1alpha.Corpus, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.DeleteCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.ListCorporaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.ListCorporaResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :corpora, 1, repeated: true, type: Google.Ai.Generativelanguage.V1alpha.Corpus
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ai.Generativelanguage.V1alpha.QueryCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false

  field :metadata_filters, 3,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.MetadataFilter,
    json_name: "metadataFilters",
    deprecated: false

  field :results_count, 4, type: :int32, json_name: "resultsCount", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.QueryCorpusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :relevant_chunks, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.RelevantChunk,
    json_name: "relevantChunks"
end

defmodule Google.Ai.Generativelanguage.V1alpha.RelevantChunk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :chunk_relevance_score, 1, type: :float, json_name: "chunkRelevanceScore"
  field :chunk, 2, type: Google.Ai.Generativelanguage.V1alpha.Chunk
end

defmodule Google.Ai.Generativelanguage.V1alpha.CreateDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :document, 2, type: Google.Ai.Generativelanguage.V1alpha.Document, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.GetDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.UpdateDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :document, 1, type: Google.Ai.Generativelanguage.V1alpha.Document, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.DeleteDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.ListDocumentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.ListDocumentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :documents, 1, repeated: true, type: Google.Ai.Generativelanguage.V1alpha.Document
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ai.Generativelanguage.V1alpha.QueryDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :results_count, 3, type: :int32, json_name: "resultsCount", deprecated: false

  field :metadata_filters, 4,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.MetadataFilter,
    json_name: "metadataFilters",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.QueryDocumentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :relevant_chunks, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.RelevantChunk,
    json_name: "relevantChunks"
end

defmodule Google.Ai.Generativelanguage.V1alpha.CreateChunkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :chunk, 2, type: Google.Ai.Generativelanguage.V1alpha.Chunk, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.BatchCreateChunksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.CreateChunkRequest,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.BatchCreateChunksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :chunks, 1, repeated: true, type: Google.Ai.Generativelanguage.V1alpha.Chunk
end

defmodule Google.Ai.Generativelanguage.V1alpha.GetChunkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.UpdateChunkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :chunk, 1, type: Google.Ai.Generativelanguage.V1alpha.Chunk, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.BatchUpdateChunksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.UpdateChunkRequest,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.BatchUpdateChunksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :chunks, 1, repeated: true, type: Google.Ai.Generativelanguage.V1alpha.Chunk
end

defmodule Google.Ai.Generativelanguage.V1alpha.DeleteChunkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.BatchDeleteChunksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.DeleteChunkRequest,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.ListChunksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.ListChunksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :chunks, 1, repeated: true, type: Google.Ai.Generativelanguage.V1alpha.Chunk
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ai.Generativelanguage.V1alpha.RetrieverService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1alpha.RetrieverService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateCorpus,
      Google.Ai.Generativelanguage.V1alpha.CreateCorpusRequest,
      Google.Ai.Generativelanguage.V1alpha.Corpus

  rpc :GetCorpus,
      Google.Ai.Generativelanguage.V1alpha.GetCorpusRequest,
      Google.Ai.Generativelanguage.V1alpha.Corpus

  rpc :UpdateCorpus,
      Google.Ai.Generativelanguage.V1alpha.UpdateCorpusRequest,
      Google.Ai.Generativelanguage.V1alpha.Corpus

  rpc :DeleteCorpus,
      Google.Ai.Generativelanguage.V1alpha.DeleteCorpusRequest,
      Google.Protobuf.Empty

  rpc :ListCorpora,
      Google.Ai.Generativelanguage.V1alpha.ListCorporaRequest,
      Google.Ai.Generativelanguage.V1alpha.ListCorporaResponse

  rpc :QueryCorpus,
      Google.Ai.Generativelanguage.V1alpha.QueryCorpusRequest,
      Google.Ai.Generativelanguage.V1alpha.QueryCorpusResponse

  rpc :CreateDocument,
      Google.Ai.Generativelanguage.V1alpha.CreateDocumentRequest,
      Google.Ai.Generativelanguage.V1alpha.Document

  rpc :GetDocument,
      Google.Ai.Generativelanguage.V1alpha.GetDocumentRequest,
      Google.Ai.Generativelanguage.V1alpha.Document

  rpc :UpdateDocument,
      Google.Ai.Generativelanguage.V1alpha.UpdateDocumentRequest,
      Google.Ai.Generativelanguage.V1alpha.Document

  rpc :DeleteDocument,
      Google.Ai.Generativelanguage.V1alpha.DeleteDocumentRequest,
      Google.Protobuf.Empty

  rpc :ListDocuments,
      Google.Ai.Generativelanguage.V1alpha.ListDocumentsRequest,
      Google.Ai.Generativelanguage.V1alpha.ListDocumentsResponse

  rpc :QueryDocument,
      Google.Ai.Generativelanguage.V1alpha.QueryDocumentRequest,
      Google.Ai.Generativelanguage.V1alpha.QueryDocumentResponse

  rpc :CreateChunk,
      Google.Ai.Generativelanguage.V1alpha.CreateChunkRequest,
      Google.Ai.Generativelanguage.V1alpha.Chunk

  rpc :BatchCreateChunks,
      Google.Ai.Generativelanguage.V1alpha.BatchCreateChunksRequest,
      Google.Ai.Generativelanguage.V1alpha.BatchCreateChunksResponse

  rpc :GetChunk,
      Google.Ai.Generativelanguage.V1alpha.GetChunkRequest,
      Google.Ai.Generativelanguage.V1alpha.Chunk

  rpc :UpdateChunk,
      Google.Ai.Generativelanguage.V1alpha.UpdateChunkRequest,
      Google.Ai.Generativelanguage.V1alpha.Chunk

  rpc :BatchUpdateChunks,
      Google.Ai.Generativelanguage.V1alpha.BatchUpdateChunksRequest,
      Google.Ai.Generativelanguage.V1alpha.BatchUpdateChunksResponse

  rpc :DeleteChunk, Google.Ai.Generativelanguage.V1alpha.DeleteChunkRequest, Google.Protobuf.Empty

  rpc :BatchDeleteChunks,
      Google.Ai.Generativelanguage.V1alpha.BatchDeleteChunksRequest,
      Google.Protobuf.Empty

  rpc :ListChunks,
      Google.Ai.Generativelanguage.V1alpha.ListChunksRequest,
      Google.Ai.Generativelanguage.V1alpha.ListChunksResponse
end

defmodule Google.Ai.Generativelanguage.V1alpha.RetrieverService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1alpha.RetrieverService.Service
end