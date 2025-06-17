defmodule Google.Cloud.Aiplatform.V1beta1.FileStatus.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :ERROR, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.CorpusStatus.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNKNOWN, 0
  field :INITIALIZED, 1
  field :ACTIVE, 2
  field :ERROR, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagFile.RagFileType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RAG_FILE_TYPE_UNSPECIFIED, 0
  field :RAG_FILE_TYPE_TXT, 1
  field :RAG_FILE_TYPE_PDF, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagEmbeddingModelConfig.VertexPredictionEndpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false
  field :model, 2, type: :string, deprecated: false
  field :model_version_id, 3, type: :string, json_name: "modelVersionId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagEmbeddingModelConfig.SparseEmbeddingConfig.Bm25 do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :multilingual, 1, type: :bool, deprecated: false
  field :k1, 2, proto3_optional: true, type: :float, deprecated: false
  field :b, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagEmbeddingModelConfig.SparseEmbeddingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :model, 0

  field :bm25, 1,
    type: Google.Cloud.Aiplatform.V1beta1.RagEmbeddingModelConfig.SparseEmbeddingConfig.Bm25,
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagEmbeddingModelConfig.HybridSearchConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sparse_embedding_config, 1,
    type: Google.Cloud.Aiplatform.V1beta1.RagEmbeddingModelConfig.SparseEmbeddingConfig,
    json_name: "sparseEmbeddingConfig",
    deprecated: false

  field :dense_embedding_model_prediction_endpoint, 2,
    type: Google.Cloud.Aiplatform.V1beta1.RagEmbeddingModelConfig.VertexPredictionEndpoint,
    json_name: "denseEmbeddingModelPredictionEndpoint",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagEmbeddingModelConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :model_config, 0

  field :vertex_prediction_endpoint, 1,
    type: Google.Cloud.Aiplatform.V1beta1.RagEmbeddingModelConfig.VertexPredictionEndpoint,
    json_name: "vertexPredictionEndpoint",
    oneof: 0

  field :hybrid_search_config, 2,
    type: Google.Cloud.Aiplatform.V1beta1.RagEmbeddingModelConfig.HybridSearchConfig,
    json_name: "hybridSearchConfig",
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagVectorDbConfig.RagManagedDb.KNN do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagVectorDbConfig.RagManagedDb.ANN do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tree_depth, 1, type: :int32, json_name: "treeDepth"
  field :leaf_count, 2, type: :int32, json_name: "leafCount"
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagVectorDbConfig.RagManagedDb do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :retrieval_strategy, 0

  field :knn, 1,
    type: Google.Cloud.Aiplatform.V1beta1.RagVectorDbConfig.RagManagedDb.KNN,
    oneof: 0

  field :ann, 2,
    type: Google.Cloud.Aiplatform.V1beta1.RagVectorDbConfig.RagManagedDb.ANN,
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagVectorDbConfig.Weaviate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :http_endpoint, 1, type: :string, json_name: "httpEndpoint"
  field :collection_name, 2, type: :string, json_name: "collectionName"
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagVectorDbConfig.Pinecone do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :index_name, 1, type: :string, json_name: "indexName"
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagVectorDbConfig.VertexFeatureStore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :feature_view_resource_name, 1, type: :string, json_name: "featureViewResourceName"
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagVectorDbConfig.VertexVectorSearch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :index_endpoint, 1, type: :string, json_name: "indexEndpoint"
  field :index, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagVectorDbConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :vector_db, 0

  field :rag_managed_db, 1,
    type: Google.Cloud.Aiplatform.V1beta1.RagVectorDbConfig.RagManagedDb,
    json_name: "ragManagedDb",
    oneof: 0

  field :weaviate, 2, type: Google.Cloud.Aiplatform.V1beta1.RagVectorDbConfig.Weaviate, oneof: 0
  field :pinecone, 3, type: Google.Cloud.Aiplatform.V1beta1.RagVectorDbConfig.Pinecone, oneof: 0

  field :vertex_feature_store, 4,
    type: Google.Cloud.Aiplatform.V1beta1.RagVectorDbConfig.VertexFeatureStore,
    json_name: "vertexFeatureStore",
    oneof: 0

  field :vertex_vector_search, 6,
    type: Google.Cloud.Aiplatform.V1beta1.RagVectorDbConfig.VertexVectorSearch,
    json_name: "vertexVectorSearch",
    oneof: 0

  field :api_auth, 5, type: Google.Cloud.Aiplatform.V1beta1.ApiAuth, json_name: "apiAuth"

  field :rag_embedding_model_config, 7,
    type: Google.Cloud.Aiplatform.V1beta1.RagEmbeddingModelConfig,
    json_name: "ragEmbeddingModelConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FileStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Aiplatform.V1beta1.FileStatus.State,
    enum: true,
    deprecated: false

  field :error_status, 2, type: :string, json_name: "errorStatus", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.VertexAiSearchConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :serving_config, 1, type: :string, json_name: "servingConfig"
end

defmodule Google.Cloud.Aiplatform.V1beta1.CorpusStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Aiplatform.V1beta1.CorpusStatus.State,
    enum: true,
    deprecated: false

  field :error_status, 2, type: :string, json_name: "errorStatus", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagCorpus.CorpusTypeConfig.DocumentCorpus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagCorpus.CorpusTypeConfig.MemoryCorpus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :llm_parser, 1,
    type: Google.Cloud.Aiplatform.V1beta1.RagFileParsingConfig.LlmParser,
    json_name: "llmParser"
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagCorpus.CorpusTypeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :corpus_type_config, 0

  field :document_corpus, 1,
    type: Google.Cloud.Aiplatform.V1beta1.RagCorpus.CorpusTypeConfig.DocumentCorpus,
    json_name: "documentCorpus",
    oneof: 0,
    deprecated: false

  field :memory_corpus, 2,
    type: Google.Cloud.Aiplatform.V1beta1.RagCorpus.CorpusTypeConfig.MemoryCorpus,
    json_name: "memoryCorpus",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagCorpus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :backend_config, 0

  field :vector_db_config, 9,
    type: Google.Cloud.Aiplatform.V1beta1.RagVectorDbConfig,
    json_name: "vectorDbConfig",
    oneof: 0,
    deprecated: false

  field :vertex_ai_search_config, 10,
    type: Google.Cloud.Aiplatform.V1beta1.VertexAiSearchConfig,
    json_name: "vertexAiSearchConfig",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :rag_embedding_model_config, 6,
    type: Google.Cloud.Aiplatform.V1beta1.RagEmbeddingModelConfig,
    json_name: "ragEmbeddingModelConfig",
    deprecated: true

  field :rag_vector_db_config, 7,
    type: Google.Cloud.Aiplatform.V1beta1.RagVectorDbConfig,
    json_name: "ragVectorDbConfig",
    deprecated: true

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :corpus_status, 8,
    type: Google.Cloud.Aiplatform.V1beta1.CorpusStatus,
    json_name: "corpusStatus",
    deprecated: false

  field :rag_files_count, 11, type: :int32, json_name: "ragFilesCount", deprecated: false

  field :encryption_spec, 12,
    type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec,
    json_name: "encryptionSpec",
    deprecated: false

  field :corpus_type_config, 13,
    type: Google.Cloud.Aiplatform.V1beta1.RagCorpus.CorpusTypeConfig,
    json_name: "corpusTypeConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagFile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :rag_file_source, 0

  field :gcs_source, 8,
    type: Google.Cloud.Aiplatform.V1beta1.GcsSource,
    json_name: "gcsSource",
    oneof: 0,
    deprecated: false

  field :google_drive_source, 9,
    type: Google.Cloud.Aiplatform.V1beta1.GoogleDriveSource,
    json_name: "googleDriveSource",
    oneof: 0,
    deprecated: false

  field :direct_upload_source, 10,
    type: Google.Cloud.Aiplatform.V1beta1.DirectUploadSource,
    json_name: "directUploadSource",
    oneof: 0,
    deprecated: false

  field :slack_source, 11,
    type: Google.Cloud.Aiplatform.V1beta1.SlackSource,
    json_name: "slackSource",
    oneof: 0

  field :jira_source, 12,
    type: Google.Cloud.Aiplatform.V1beta1.JiraSource,
    json_name: "jiraSource",
    oneof: 0

  field :share_point_sources, 14,
    type: Google.Cloud.Aiplatform.V1beta1.SharePointSources,
    json_name: "sharePointSources",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :size_bytes, 4, type: :int64, json_name: "sizeBytes", deprecated: false

  field :rag_file_type, 5,
    type: Google.Cloud.Aiplatform.V1beta1.RagFile.RagFileType,
    json_name: "ragFileType",
    enum: true,
    deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :file_status, 13,
    type: Google.Cloud.Aiplatform.V1beta1.FileStatus,
    json_name: "fileStatus",
    deprecated: false

  field :user_metadata, 15, type: :string, json_name: "userMetadata", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagChunk.PageSpan do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :first_page, 1, type: :int32, json_name: "firstPage"
  field :last_page, 2, type: :int32, json_name: "lastPage"
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagChunk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :text, 1, type: :string

  field :page_span, 2,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1beta1.RagChunk.PageSpan,
    json_name: "pageSpan"
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagFileChunkingConfig.FixedLengthChunking do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :chunk_size, 1, type: :int32, json_name: "chunkSize"
  field :chunk_overlap, 2, type: :int32, json_name: "chunkOverlap"
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagFileChunkingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :chunking_config, 0

  field :fixed_length_chunking, 3,
    type: Google.Cloud.Aiplatform.V1beta1.RagFileChunkingConfig.FixedLengthChunking,
    json_name: "fixedLengthChunking",
    oneof: 0

  field :chunk_size, 1, type: :int32, json_name: "chunkSize", deprecated: true
  field :chunk_overlap, 2, type: :int32, json_name: "chunkOverlap", deprecated: true
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagFileTransformationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rag_file_chunking_config, 1,
    type: Google.Cloud.Aiplatform.V1beta1.RagFileChunkingConfig,
    json_name: "ragFileChunkingConfig"
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagFileParsingConfig.AdvancedParser do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :use_advanced_pdf_parsing, 1, type: :bool, json_name: "useAdvancedPdfParsing"
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagFileParsingConfig.LayoutParser do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :processor_name, 1, type: :string, json_name: "processorName"
  field :max_parsing_requests_per_min, 2, type: :int32, json_name: "maxParsingRequestsPerMin"

  field :global_max_parsing_requests_per_min, 3,
    type: :int32,
    json_name: "globalMaxParsingRequestsPerMin"
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagFileParsingConfig.LlmParser do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model_name, 1, type: :string, json_name: "modelName"
  field :max_parsing_requests_per_min, 2, type: :int32, json_name: "maxParsingRequestsPerMin"

  field :global_max_parsing_requests_per_min, 4,
    type: :int32,
    json_name: "globalMaxParsingRequestsPerMin"

  field :custom_parsing_prompt, 3, type: :string, json_name: "customParsingPrompt"
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagFileParsingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :parser, 0

  field :advanced_parser, 3,
    type: Google.Cloud.Aiplatform.V1beta1.RagFileParsingConfig.AdvancedParser,
    json_name: "advancedParser",
    oneof: 0

  field :layout_parser, 4,
    type: Google.Cloud.Aiplatform.V1beta1.RagFileParsingConfig.LayoutParser,
    json_name: "layoutParser",
    oneof: 0

  field :llm_parser, 5,
    type: Google.Cloud.Aiplatform.V1beta1.RagFileParsingConfig.LlmParser,
    json_name: "llmParser",
    oneof: 0

  field :use_advanced_pdf_parsing, 2,
    type: :bool,
    json_name: "useAdvancedPdfParsing",
    deprecated: true
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagFileMetadataConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :metadata_schema_source, 0

  oneof :metadata_source, 1

  field :gcs_metadata_schema_source, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GcsSource,
    json_name: "gcsMetadataSchemaSource",
    oneof: 0

  field :google_drive_metadata_schema_source, 2,
    type: Google.Cloud.Aiplatform.V1beta1.GoogleDriveSource,
    json_name: "googleDriveMetadataSchemaSource",
    oneof: 0

  field :inline_metadata_schema_source, 3,
    type: :string,
    json_name: "inlineMetadataSchemaSource",
    oneof: 0

  field :gcs_metadata_source, 4,
    type: Google.Cloud.Aiplatform.V1beta1.GcsSource,
    json_name: "gcsMetadataSource",
    oneof: 1

  field :google_drive_metadata_source, 5,
    type: Google.Cloud.Aiplatform.V1beta1.GoogleDriveSource,
    json_name: "googleDriveMetadataSource",
    oneof: 1

  field :inline_metadata_source, 6, type: :string, json_name: "inlineMetadataSource", oneof: 1
end

defmodule Google.Cloud.Aiplatform.V1beta1.UploadRagFileConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rag_file_chunking_config, 1,
    type: Google.Cloud.Aiplatform.V1beta1.RagFileChunkingConfig,
    json_name: "ragFileChunkingConfig",
    deprecated: true

  field :rag_file_transformation_config, 3,
    type: Google.Cloud.Aiplatform.V1beta1.RagFileTransformationConfig,
    json_name: "ragFileTransformationConfig"

  field :rag_file_metadata_config, 4,
    type: Google.Cloud.Aiplatform.V1beta1.RagFileMetadataConfig,
    json_name: "ragFileMetadataConfig"

  field :rag_file_parsing_config, 5,
    type: Google.Cloud.Aiplatform.V1beta1.RagFileParsingConfig,
    json_name: "ragFileParsingConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportRagFilesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :import_source, 0

  oneof :partial_failure_sink, 1

  oneof :import_result_sink, 2

  field :gcs_source, 2,
    type: Google.Cloud.Aiplatform.V1beta1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :google_drive_source, 3,
    type: Google.Cloud.Aiplatform.V1beta1.GoogleDriveSource,
    json_name: "googleDriveSource",
    oneof: 0

  field :slack_source, 6,
    type: Google.Cloud.Aiplatform.V1beta1.SlackSource,
    json_name: "slackSource",
    oneof: 0

  field :jira_source, 7,
    type: Google.Cloud.Aiplatform.V1beta1.JiraSource,
    json_name: "jiraSource",
    oneof: 0

  field :share_point_sources, 13,
    type: Google.Cloud.Aiplatform.V1beta1.SharePointSources,
    json_name: "sharePointSources",
    oneof: 0

  field :partial_failure_gcs_sink, 11,
    type: Google.Cloud.Aiplatform.V1beta1.GcsDestination,
    json_name: "partialFailureGcsSink",
    oneof: 1,
    deprecated: true

  field :partial_failure_bigquery_sink, 12,
    type: Google.Cloud.Aiplatform.V1beta1.BigQueryDestination,
    json_name: "partialFailureBigquerySink",
    oneof: 1,
    deprecated: true

  field :import_result_gcs_sink, 14,
    type: Google.Cloud.Aiplatform.V1beta1.GcsDestination,
    json_name: "importResultGcsSink",
    oneof: 2

  field :import_result_bigquery_sink, 15,
    type: Google.Cloud.Aiplatform.V1beta1.BigQueryDestination,
    json_name: "importResultBigquerySink",
    oneof: 2

  field :rag_file_chunking_config, 4,
    type: Google.Cloud.Aiplatform.V1beta1.RagFileChunkingConfig,
    json_name: "ragFileChunkingConfig",
    deprecated: true

  field :rag_file_transformation_config, 16,
    type: Google.Cloud.Aiplatform.V1beta1.RagFileTransformationConfig,
    json_name: "ragFileTransformationConfig"

  field :rag_file_parsing_config, 8,
    type: Google.Cloud.Aiplatform.V1beta1.RagFileParsingConfig,
    json_name: "ragFileParsingConfig",
    deprecated: false

  field :rag_file_metadata_config, 17,
    type: Google.Cloud.Aiplatform.V1beta1.RagFileMetadataConfig,
    json_name: "ragFileMetadataConfig"

  field :max_embedding_requests_per_min, 5,
    type: :int32,
    json_name: "maxEmbeddingRequestsPerMin",
    deprecated: false

  field :global_max_embedding_requests_per_min, 18,
    type: :int32,
    json_name: "globalMaxEmbeddingRequestsPerMin",
    deprecated: false

  field :rebuild_ann_index, 19, type: :bool, json_name: "rebuildAnnIndex"
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagManagedDbConfig.Enterprise do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagManagedDbConfig.Scaled do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagManagedDbConfig.Basic do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagManagedDbConfig.Unprovisioned do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagManagedDbConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :tier, 0

  field :enterprise, 1,
    type: Google.Cloud.Aiplatform.V1beta1.RagManagedDbConfig.Enterprise,
    oneof: 0,
    deprecated: true

  field :scaled, 4, type: Google.Cloud.Aiplatform.V1beta1.RagManagedDbConfig.Scaled, oneof: 0
  field :basic, 2, type: Google.Cloud.Aiplatform.V1beta1.RagManagedDbConfig.Basic, oneof: 0

  field :unprovisioned, 3,
    type: Google.Cloud.Aiplatform.V1beta1.RagManagedDbConfig.Unprovisioned,
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagEngineConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :rag_managed_db_config, 2,
    type: Google.Cloud.Aiplatform.V1beta1.RagManagedDbConfig,
    json_name: "ragManagedDbConfig"
end
