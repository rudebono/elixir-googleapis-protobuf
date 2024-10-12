defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.DynamicRetrievalConfiguration.DynamicRetrievalPredictor.Version do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :VERSION_UNSPECIFIED, 0
  field :V1_INDEPENDENT, 1
end

defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentResponse.Candidate.GroundingMetadata.RetrievalMetadata.Source do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SOURCE_UNSPECIFIED, 0
  field :VERTEX_AI_SEARCH, 1
  field :GOOGLE_SEARCH, 3
  field :INLINE_CONTENT, 2
  field :GOOGLE_MAPS, 4
end

defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentResponse.Candidate.GroundingMetadata.DynamicRetrievalPredictorMetadata.Version do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :VERSION_UNSPECIFIED, 0
  field :V1_INDEPENDENT, 1
end

defmodule Google.Cloud.Discoveryengine.V1.GroundedGenerationContent.Part do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :data, 0

  field :text, 1, type: :string, oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1.GroundedGenerationContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :role, 1, type: :string

  field :parts, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.GroundedGenerationContent.Part
end

defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.GenerationSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :model_id, 3, type: :string, json_name: "modelId"
  field :language_code, 2, type: :string, json_name: "languageCode"
  field :temperature, 4, proto3_optional: true, type: :float
  field :top_p, 5, proto3_optional: true, type: :float, json_name: "topP"
  field :top_k, 7, proto3_optional: true, type: :int32, json_name: "topK"
  field :frequency_penalty, 8, proto3_optional: true, type: :float, json_name: "frequencyPenalty"
  field :presence_penalty, 9, proto3_optional: true, type: :float, json_name: "presencePenalty"
  field :max_output_tokens, 10, proto3_optional: true, type: :int32, json_name: "maxOutputTokens"
end

defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.DynamicRetrievalConfiguration.DynamicRetrievalPredictor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :version, 1,
    type:
      Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.DynamicRetrievalConfiguration.DynamicRetrievalPredictor.Version,
    enum: true

  field :threshold, 2, proto3_optional: true, type: :float
end

defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.DynamicRetrievalConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :predictor, 1,
    type:
      Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.DynamicRetrievalConfiguration.DynamicRetrievalPredictor
end

defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.GroundingSource.InlineSource.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.GroundingSource.InlineSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :grounding_facts, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.GroundingFact,
    json_name: "groundingFacts"

  field :attributes, 2,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.GroundingSource.InlineSource.AttributesEntry,
    map: true
end

defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.GroundingSource.SearchSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :serving_config, 1, type: :string, json_name: "servingConfig", deprecated: false
  field :max_result_count, 2, type: :int32, json_name: "maxResultCount"
  field :filter, 3, type: :string
  field :safe_search, 5, type: :bool, json_name: "safeSearch"
end

defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.GroundingSource.GoogleSearchSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :dynamic_retrieval_config, 2,
    type:
      Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.DynamicRetrievalConfiguration,
    json_name: "dynamicRetrievalConfig",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.GroundingSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :source, 0

  field :inline_source, 1,
    type:
      Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.GroundingSource.InlineSource,
    json_name: "inlineSource",
    oneof: 0

  field :search_source, 2,
    type:
      Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.GroundingSource.SearchSource,
    json_name: "searchSource",
    oneof: 0

  field :google_search_source, 3,
    type:
      Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.GroundingSource.GoogleSearchSource,
    json_name: "googleSearchSource",
    oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.GroundingSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :grounding_sources, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.GroundingSource,
    json_name: "groundingSources"
end

defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.UserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :location, 1, type: :string, deprecated: false

  field :system_instruction, 5,
    type: Google.Cloud.Discoveryengine.V1.GroundedGenerationContent,
    json_name: "systemInstruction"

  field :contents, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.GroundedGenerationContent

  field :generation_spec, 3,
    type: Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.GenerationSpec,
    json_name: "generationSpec"

  field :grounding_spec, 4,
    type: Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.GroundingSpec,
    json_name: "groundingSpec"

  field :user_labels, 6,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest.UserLabelsEntry,
    json_name: "userLabels",
    map: true
end

defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentResponse.Candidate.GroundingMetadata.RetrievalMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :source, 1,
    type:
      Google.Cloud.Discoveryengine.V1.GenerateGroundedContentResponse.Candidate.GroundingMetadata.RetrievalMetadata.Source,
    enum: true

  field :dynamic_retrieval_metadata, 2,
    type:
      Google.Cloud.Discoveryengine.V1.GenerateGroundedContentResponse.Candidate.GroundingMetadata.DynamicRetrievalMetadata,
    json_name: "dynamicRetrievalMetadata"
end

defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentResponse.Candidate.GroundingMetadata.DynamicRetrievalMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :predictor_metadata, 1,
    type:
      Google.Cloud.Discoveryengine.V1.GenerateGroundedContentResponse.Candidate.GroundingMetadata.DynamicRetrievalPredictorMetadata,
    json_name: "predictorMetadata"
end

defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentResponse.Candidate.GroundingMetadata.DynamicRetrievalPredictorMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :version, 1,
    type:
      Google.Cloud.Discoveryengine.V1.GenerateGroundedContentResponse.Candidate.GroundingMetadata.DynamicRetrievalPredictorMetadata.Version,
    enum: true

  field :prediction, 2, proto3_optional: true, type: :float
end

defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentResponse.Candidate.GroundingMetadata.SearchEntryPoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :rendered_content, 1, type: :string, json_name: "renderedContent"
  field :sdk_blob, 2, type: :bytes, json_name: "sdkBlob"
end

defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentResponse.Candidate.GroundingMetadata.GroundingSupport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :claim_text, 1, type: :string, json_name: "claimText"
  field :support_chunk_indices, 3, repeated: true, type: :int32, json_name: "supportChunkIndices"
  field :support_score, 2, proto3_optional: true, type: :float, json_name: "supportScore"
end

defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentResponse.Candidate.GroundingMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :retrieval_metadata, 5,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1.GenerateGroundedContentResponse.Candidate.GroundingMetadata.RetrievalMetadata,
    json_name: "retrievalMetadata"

  field :support_chunks, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.FactChunk,
    json_name: "supportChunks"

  field :web_search_queries, 3, repeated: true, type: :string, json_name: "webSearchQueries"

  field :search_entry_point, 4,
    type:
      Google.Cloud.Discoveryengine.V1.GenerateGroundedContentResponse.Candidate.GroundingMetadata.SearchEntryPoint,
    json_name: "searchEntryPoint"

  field :grounding_support, 2,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1.GenerateGroundedContentResponse.Candidate.GroundingMetadata.GroundingSupport,
    json_name: "groundingSupport"
end

defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentResponse.Candidate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :index, 1, type: :int32
  field :content, 2, type: Google.Cloud.Discoveryengine.V1.GroundedGenerationContent
  field :grounding_score, 3, proto3_optional: true, type: :float, json_name: "groundingScore"

  field :grounding_metadata, 4,
    type:
      Google.Cloud.Discoveryengine.V1.GenerateGroundedContentResponse.Candidate.GroundingMetadata,
    json_name: "groundingMetadata"
end

defmodule Google.Cloud.Discoveryengine.V1.GenerateGroundedContentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :candidates, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.GenerateGroundedContentResponse.Candidate
end

defmodule Google.Cloud.Discoveryengine.V1.CheckGroundingSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :citation_threshold, 1,
    proto3_optional: true,
    type: :double,
    json_name: "citationThreshold"
end

defmodule Google.Cloud.Discoveryengine.V1.CheckGroundingRequest.UserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.CheckGroundingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :grounding_config, 1, type: :string, json_name: "groundingConfig", deprecated: false
  field :answer_candidate, 2, type: :string, json_name: "answerCandidate"
  field :facts, 3, repeated: true, type: Google.Cloud.Discoveryengine.V1.GroundingFact

  field :grounding_spec, 4,
    type: Google.Cloud.Discoveryengine.V1.CheckGroundingSpec,
    json_name: "groundingSpec"

  field :user_labels, 5,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.CheckGroundingRequest.UserLabelsEntry,
    json_name: "userLabels",
    map: true
end

defmodule Google.Cloud.Discoveryengine.V1.CheckGroundingResponse.Claim do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :start_pos, 1, proto3_optional: true, type: :int32, json_name: "startPos"
  field :end_pos, 2, proto3_optional: true, type: :int32, json_name: "endPos"
  field :claim_text, 3, type: :string, json_name: "claimText"
  field :citation_indices, 4, repeated: true, type: :int32, json_name: "citationIndices"

  field :grounding_check_required, 6,
    proto3_optional: true,
    type: :bool,
    json_name: "groundingCheckRequired"
end

defmodule Google.Cloud.Discoveryengine.V1.CheckGroundingResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :support_score, 1, proto3_optional: true, type: :float, json_name: "supportScore"

  field :cited_chunks, 3,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.FactChunk,
    json_name: "citedChunks"

  field :claims, 4,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.CheckGroundingResponse.Claim
end

defmodule Google.Cloud.Discoveryengine.V1.GroundedGenerationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.GroundedGenerationService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :StreamGenerateGroundedContent,
      stream(Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest),
      stream(Google.Cloud.Discoveryengine.V1.GenerateGroundedContentResponse)

  rpc :GenerateGroundedContent,
      Google.Cloud.Discoveryengine.V1.GenerateGroundedContentRequest,
      Google.Cloud.Discoveryengine.V1.GenerateGroundedContentResponse

  rpc :CheckGrounding,
      Google.Cloud.Discoveryengine.V1.CheckGroundingRequest,
      Google.Cloud.Discoveryengine.V1.CheckGroundingResponse
end

defmodule Google.Cloud.Discoveryengine.V1.GroundedGenerationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.GroundedGenerationService.Service
end