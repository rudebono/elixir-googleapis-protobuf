defmodule Google.Cloud.Aiplatform.V1beta1.RagFile.RagFileType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RAG_FILE_TYPE_UNSPECIFIED, 0
  field :RAG_FILE_TYPE_TXT, 1
  field :RAG_FILE_TYPE_PDF, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagEmbeddingModelConfig.VertexPredictionEndpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false
  field :model, 2, type: :string, deprecated: false
  field :model_version_id, 3, type: :string, json_name: "modelVersionId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagEmbeddingModelConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :model_config, 0

  field :vertex_prediction_endpoint, 1,
    type: Google.Cloud.Aiplatform.V1beta1.RagEmbeddingModelConfig.VertexPredictionEndpoint,
    json_name: "vertexPredictionEndpoint",
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagCorpus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :rag_embedding_model_config, 6,
    type: Google.Cloud.Aiplatform.V1beta1.RagEmbeddingModelConfig,
    json_name: "ragEmbeddingModelConfig",
    deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagFile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagFileChunkingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :chunk_size, 1, type: :int32, json_name: "chunkSize"
  field :chunk_overlap, 2, type: :int32, json_name: "chunkOverlap"
end

defmodule Google.Cloud.Aiplatform.V1beta1.RagFileParsingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :use_advanced_pdf_parsing, 2, type: :bool, json_name: "useAdvancedPdfParsing"
end

defmodule Google.Cloud.Aiplatform.V1beta1.UploadRagFileConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rag_file_chunking_config, 1,
    type: Google.Cloud.Aiplatform.V1beta1.RagFileChunkingConfig,
    json_name: "ragFileChunkingConfig"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportRagFilesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :import_source, 0

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

  field :rag_file_chunking_config, 4,
    type: Google.Cloud.Aiplatform.V1beta1.RagFileChunkingConfig,
    json_name: "ragFileChunkingConfig"

  field :rag_file_parsing_config, 8,
    type: Google.Cloud.Aiplatform.V1beta1.RagFileParsingConfig,
    json_name: "ragFileParsingConfig"

  field :max_embedding_requests_per_min, 5,
    type: :int32,
    json_name: "maxEmbeddingRequestsPerMin",
    deprecated: false
end