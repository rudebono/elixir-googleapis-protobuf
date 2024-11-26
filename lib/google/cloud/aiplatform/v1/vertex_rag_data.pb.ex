defmodule Google.Cloud.Aiplatform.V1.FileStatus.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :ERROR, 2
end

defmodule Google.Cloud.Aiplatform.V1.CorpusStatus.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNKNOWN, 0
  field :INITIALIZED, 1
  field :ACTIVE, 2
  field :ERROR, 3
end

defmodule Google.Cloud.Aiplatform.V1.RagEmbeddingModelConfig.VertexPredictionEndpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false
  field :model, 2, type: :string, deprecated: false
  field :model_version_id, 3, type: :string, json_name: "modelVersionId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.RagEmbeddingModelConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :model_config, 0

  field :vertex_prediction_endpoint, 1,
    type: Google.Cloud.Aiplatform.V1.RagEmbeddingModelConfig.VertexPredictionEndpoint,
    json_name: "vertexPredictionEndpoint",
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1.RagVectorDbConfig.RagManagedDb do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1.RagVectorDbConfig.Pinecone do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :index_name, 1, type: :string, json_name: "indexName"
end

defmodule Google.Cloud.Aiplatform.V1.RagVectorDbConfig.VertexVectorSearch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :index_endpoint, 1, type: :string, json_name: "indexEndpoint"
  field :index, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.RagVectorDbConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :vector_db, 0

  field :rag_managed_db, 1,
    type: Google.Cloud.Aiplatform.V1.RagVectorDbConfig.RagManagedDb,
    json_name: "ragManagedDb",
    oneof: 0

  field :pinecone, 3, type: Google.Cloud.Aiplatform.V1.RagVectorDbConfig.Pinecone, oneof: 0

  field :vertex_vector_search, 6,
    type: Google.Cloud.Aiplatform.V1.RagVectorDbConfig.VertexVectorSearch,
    json_name: "vertexVectorSearch",
    oneof: 0

  field :api_auth, 5, type: Google.Cloud.Aiplatform.V1.ApiAuth, json_name: "apiAuth"

  field :rag_embedding_model_config, 7,
    type: Google.Cloud.Aiplatform.V1.RagEmbeddingModelConfig,
    json_name: "ragEmbeddingModelConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.FileStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Aiplatform.V1.FileStatus.State,
    enum: true,
    deprecated: false

  field :error_status, 2, type: :string, json_name: "errorStatus", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.CorpusStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Aiplatform.V1.CorpusStatus.State,
    enum: true,
    deprecated: false

  field :error_status, 2, type: :string, json_name: "errorStatus", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.RagCorpus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :backend_config, 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :corpus_status, 8,
    type: Google.Cloud.Aiplatform.V1.CorpusStatus,
    json_name: "corpusStatus",
    deprecated: false

  field :vector_db_config, 9,
    type: Google.Cloud.Aiplatform.V1.RagVectorDbConfig,
    json_name: "vectorDbConfig",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.RagFile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :rag_file_source, 0

  field :gcs_source, 8,
    type: Google.Cloud.Aiplatform.V1.GcsSource,
    json_name: "gcsSource",
    oneof: 0,
    deprecated: false

  field :google_drive_source, 9,
    type: Google.Cloud.Aiplatform.V1.GoogleDriveSource,
    json_name: "googleDriveSource",
    oneof: 0,
    deprecated: false

  field :direct_upload_source, 10,
    type: Google.Cloud.Aiplatform.V1.DirectUploadSource,
    json_name: "directUploadSource",
    oneof: 0,
    deprecated: false

  field :slack_source, 11,
    type: Google.Cloud.Aiplatform.V1.SlackSource,
    json_name: "slackSource",
    oneof: 0

  field :jira_source, 12,
    type: Google.Cloud.Aiplatform.V1.JiraSource,
    json_name: "jiraSource",
    oneof: 0

  field :share_point_sources, 14,
    type: Google.Cloud.Aiplatform.V1.SharePointSources,
    json_name: "sharePointSources",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :file_status, 13,
    type: Google.Cloud.Aiplatform.V1.FileStatus,
    json_name: "fileStatus",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.RagFileChunkingConfig.FixedLengthChunking do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :chunk_size, 1, type: :int32, json_name: "chunkSize"
  field :chunk_overlap, 2, type: :int32, json_name: "chunkOverlap"
end

defmodule Google.Cloud.Aiplatform.V1.RagFileChunkingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :chunking_config, 0

  field :fixed_length_chunking, 3,
    type: Google.Cloud.Aiplatform.V1.RagFileChunkingConfig.FixedLengthChunking,
    json_name: "fixedLengthChunking",
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1.RagFileTransformationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :rag_file_chunking_config, 1,
    type: Google.Cloud.Aiplatform.V1.RagFileChunkingConfig,
    json_name: "ragFileChunkingConfig"
end

defmodule Google.Cloud.Aiplatform.V1.UploadRagFileConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :rag_file_transformation_config, 3,
    type: Google.Cloud.Aiplatform.V1.RagFileTransformationConfig,
    json_name: "ragFileTransformationConfig"
end

defmodule Google.Cloud.Aiplatform.V1.ImportRagFilesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :import_source, 0

  oneof :partial_failure_sink, 1

  field :gcs_source, 2,
    type: Google.Cloud.Aiplatform.V1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :google_drive_source, 3,
    type: Google.Cloud.Aiplatform.V1.GoogleDriveSource,
    json_name: "googleDriveSource",
    oneof: 0

  field :slack_source, 6,
    type: Google.Cloud.Aiplatform.V1.SlackSource,
    json_name: "slackSource",
    oneof: 0

  field :jira_source, 7,
    type: Google.Cloud.Aiplatform.V1.JiraSource,
    json_name: "jiraSource",
    oneof: 0

  field :share_point_sources, 13,
    type: Google.Cloud.Aiplatform.V1.SharePointSources,
    json_name: "sharePointSources",
    oneof: 0

  field :partial_failure_gcs_sink, 11,
    type: Google.Cloud.Aiplatform.V1.GcsDestination,
    json_name: "partialFailureGcsSink",
    oneof: 1,
    deprecated: true

  field :partial_failure_bigquery_sink, 12,
    type: Google.Cloud.Aiplatform.V1.BigQueryDestination,
    json_name: "partialFailureBigquerySink",
    oneof: 1,
    deprecated: true

  field :rag_file_transformation_config, 16,
    type: Google.Cloud.Aiplatform.V1.RagFileTransformationConfig,
    json_name: "ragFileTransformationConfig"

  field :max_embedding_requests_per_min, 5,
    type: :int32,
    json_name: "maxEmbeddingRequestsPerMin",
    deprecated: false
end