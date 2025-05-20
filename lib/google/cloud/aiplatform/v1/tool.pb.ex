defmodule Google.Cloud.Aiplatform.V1.ExecutableCode.Language do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LANGUAGE_UNSPECIFIED, 0
  field :PYTHON, 1
end

defmodule Google.Cloud.Aiplatform.V1.CodeExecutionResult.Outcome do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :OUTCOME_UNSPECIFIED, 0
  field :OUTCOME_OK, 1
  field :OUTCOME_FAILED, 2
  field :OUTCOME_DEADLINE_EXCEEDED, 3
end

defmodule Google.Cloud.Aiplatform.V1.DynamicRetrievalConfig.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :MODE_DYNAMIC, 1
end

defmodule Google.Cloud.Aiplatform.V1.FunctionCallingConfig.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :AUTO, 1
  field :ANY, 2
  field :NONE, 3
end

defmodule Google.Cloud.Aiplatform.V1.Tool.GoogleSearch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1.Tool.CodeExecution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1.Tool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :function_declarations, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.FunctionDeclaration,
    json_name: "functionDeclarations",
    deprecated: false

  field :retrieval, 2, type: Google.Cloud.Aiplatform.V1.Retrieval, deprecated: false

  field :google_search, 7,
    type: Google.Cloud.Aiplatform.V1.Tool.GoogleSearch,
    json_name: "googleSearch",
    deprecated: false

  field :google_search_retrieval, 3,
    type: Google.Cloud.Aiplatform.V1.GoogleSearchRetrieval,
    json_name: "googleSearchRetrieval",
    deprecated: false

  field :enterprise_web_search, 6,
    type: Google.Cloud.Aiplatform.V1.EnterpriseWebSearch,
    json_name: "enterpriseWebSearch",
    deprecated: false

  field :code_execution, 4,
    type: Google.Cloud.Aiplatform.V1.Tool.CodeExecution,
    json_name: "codeExecution",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.FunctionDeclaration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :parameters, 3, type: Google.Cloud.Aiplatform.V1.Schema, deprecated: false
  field :response, 4, type: Google.Cloud.Aiplatform.V1.Schema, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.FunctionCall do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :args, 2, type: Google.Protobuf.Struct, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.FunctionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :response, 2, type: Google.Protobuf.Struct, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ExecutableCode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :language, 1,
    type: Google.Cloud.Aiplatform.V1.ExecutableCode.Language,
    enum: true,
    deprecated: false

  field :code, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.CodeExecutionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :outcome, 1,
    type: Google.Cloud.Aiplatform.V1.CodeExecutionResult.Outcome,
    enum: true,
    deprecated: false

  field :output, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.Retrieval do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :vertex_ai_search, 2,
    type: Google.Cloud.Aiplatform.V1.VertexAISearch,
    json_name: "vertexAiSearch",
    oneof: 0

  field :vertex_rag_store, 4,
    type: Google.Cloud.Aiplatform.V1.VertexRagStore,
    json_name: "vertexRagStore",
    oneof: 0

  field :disable_attribution, 3, type: :bool, json_name: "disableAttribution", deprecated: true
end

defmodule Google.Cloud.Aiplatform.V1.VertexRagStore.RagResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rag_corpus, 1, type: :string, json_name: "ragCorpus", deprecated: false

  field :rag_file_ids, 2,
    repeated: true,
    type: :string,
    json_name: "ragFileIds",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.VertexRagStore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rag_resources, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.VertexRagStore.RagResource,
    json_name: "ragResources",
    deprecated: false

  field :similarity_top_k, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "similarityTopK",
    deprecated: true

  field :vector_distance_threshold, 3,
    proto3_optional: true,
    type: :double,
    json_name: "vectorDistanceThreshold",
    deprecated: true

  field :rag_retrieval_config, 6,
    type: Google.Cloud.Aiplatform.V1.RagRetrievalConfig,
    json_name: "ragRetrievalConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.VertexAISearch.DataStoreSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :data_store, 1, type: :string, json_name: "dataStore"
  field :filter, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.VertexAISearch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :datastore, 1, type: :string, deprecated: false
  field :engine, 2, type: :string, deprecated: false
  field :max_results, 3, type: :int32, json_name: "maxResults", deprecated: false
  field :filter, 4, type: :string, deprecated: false

  field :data_store_specs, 5,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.VertexAISearch.DataStoreSpec,
    json_name: "dataStoreSpecs"
end

defmodule Google.Cloud.Aiplatform.V1.GoogleSearchRetrieval do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dynamic_retrieval_config, 2,
    type: Google.Cloud.Aiplatform.V1.DynamicRetrievalConfig,
    json_name: "dynamicRetrievalConfig"
end

defmodule Google.Cloud.Aiplatform.V1.EnterpriseWebSearch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1.DynamicRetrievalConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :mode, 1, type: Google.Cloud.Aiplatform.V1.DynamicRetrievalConfig.Mode, enum: true

  field :dynamic_threshold, 2,
    proto3_optional: true,
    type: :float,
    json_name: "dynamicThreshold",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ToolConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :function_calling_config, 1,
    type: Google.Cloud.Aiplatform.V1.FunctionCallingConfig,
    json_name: "functionCallingConfig",
    deprecated: false

  field :retrieval_config, 2,
    type: Google.Cloud.Aiplatform.V1.RetrievalConfig,
    json_name: "retrievalConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.FunctionCallingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :mode, 1,
    type: Google.Cloud.Aiplatform.V1.FunctionCallingConfig.Mode,
    enum: true,
    deprecated: false

  field :allowed_function_names, 2,
    repeated: true,
    type: :string,
    json_name: "allowedFunctionNames",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.RetrievalConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :lat_lng, 1, proto3_optional: true, type: Google.Type.LatLng, json_name: "latLng"
  field :language_code, 2, proto3_optional: true, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Aiplatform.V1.RagRetrievalConfig.Filter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :vector_db_threshold, 0

  field :vector_distance_threshold, 3,
    type: :double,
    json_name: "vectorDistanceThreshold",
    oneof: 0,
    deprecated: false

  field :vector_similarity_threshold, 4,
    type: :double,
    json_name: "vectorSimilarityThreshold",
    oneof: 0,
    deprecated: false

  field :metadata_filter, 2, type: :string, json_name: "metadataFilter", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.RagRetrievalConfig.Ranking.RankService do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model_name, 1,
    proto3_optional: true,
    type: :string,
    json_name: "modelName",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.RagRetrievalConfig.Ranking.LlmRanker do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model_name, 1,
    proto3_optional: true,
    type: :string,
    json_name: "modelName",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.RagRetrievalConfig.Ranking do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :ranking_config, 0

  field :rank_service, 1,
    type: Google.Cloud.Aiplatform.V1.RagRetrievalConfig.Ranking.RankService,
    json_name: "rankService",
    oneof: 0,
    deprecated: false

  field :llm_ranker, 3,
    type: Google.Cloud.Aiplatform.V1.RagRetrievalConfig.Ranking.LlmRanker,
    json_name: "llmRanker",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.RagRetrievalConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :top_k, 1, type: :int32, json_name: "topK", deprecated: false
  field :filter, 3, type: Google.Cloud.Aiplatform.V1.RagRetrievalConfig.Filter, deprecated: false

  field :ranking, 4,
    type: Google.Cloud.Aiplatform.V1.RagRetrievalConfig.Ranking,
    deprecated: false
end
