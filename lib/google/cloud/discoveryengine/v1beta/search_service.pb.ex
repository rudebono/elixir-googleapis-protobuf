defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.BoostSpec.ConditionBoostSpec.BoostControlSpec.AttributeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ATTRIBUTE_TYPE_UNSPECIFIED, 0
  field :NUMERICAL, 1
  field :FRESHNESS, 2
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.BoostSpec.ConditionBoostSpec.BoostControlSpec.InterpolationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :INTERPOLATION_TYPE_UNSPECIFIED, 0
  field :LINEAR, 1
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.QueryExpansionSpec.Condition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CONDITION_UNSPECIFIED, 0
  field :DISABLED, 1
  field :AUTO, 2
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.SpellCorrectionSpec.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :SUGGESTION_ONLY, 1
  field :AUTO, 2
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.ContentSearchSpec.SearchResultMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SEARCH_RESULT_MODE_UNSPECIFIED, 0
  field :DOCUMENTS, 1
  field :CHUNKS, 2
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchResponse.Summary.SummarySkippedReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SUMMARY_SKIPPED_REASON_UNSPECIFIED, 0
  field :ADVERSARIAL_QUERY_IGNORED, 1
  field :NON_SUMMARY_SEEKING_QUERY_IGNORED, 2
  field :OUT_OF_DOMAIN_QUERY_IGNORED, 3
  field :POTENTIAL_POLICY_VIOLATION, 4
  field :LLM_ADDON_NOT_ENABLED, 5
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.ImageQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :image, 0

  field :image_bytes, 1, type: :string, json_name: "imageBytes", oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.DataStoreSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :data_store, 1, type: :string, json_name: "dataStore", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.FacetSpec.FacetKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string, deprecated: false
  field :intervals, 2, repeated: true, type: Google.Cloud.Discoveryengine.V1beta.Interval
  field :restricted_values, 3, repeated: true, type: :string, json_name: "restrictedValues"
  field :prefixes, 4, repeated: true, type: :string
  field :contains, 5, repeated: true, type: :string
  field :case_insensitive, 6, type: :bool, json_name: "caseInsensitive"
  field :order_by, 7, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.FacetSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :facet_key, 1,
    type: Google.Cloud.Discoveryengine.V1beta.SearchRequest.FacetSpec.FacetKey,
    json_name: "facetKey",
    deprecated: false

  field :limit, 2, type: :int32
  field :excluded_filter_keys, 3, repeated: true, type: :string, json_name: "excludedFilterKeys"
  field :enable_dynamic_position, 4, type: :bool, json_name: "enableDynamicPosition"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.BoostSpec.ConditionBoostSpec.BoostControlSpec.ControlPoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :attribute_value, 1, type: :string, json_name: "attributeValue"
  field :boost_amount, 2, type: :float, json_name: "boostAmount"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.BoostSpec.ConditionBoostSpec.BoostControlSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field_name, 1, type: :string, json_name: "fieldName"

  field :attribute_type, 2,
    type:
      Google.Cloud.Discoveryengine.V1beta.SearchRequest.BoostSpec.ConditionBoostSpec.BoostControlSpec.AttributeType,
    json_name: "attributeType",
    enum: true

  field :interpolation_type, 3,
    type:
      Google.Cloud.Discoveryengine.V1beta.SearchRequest.BoostSpec.ConditionBoostSpec.BoostControlSpec.InterpolationType,
    json_name: "interpolationType",
    enum: true

  field :control_points, 4,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1beta.SearchRequest.BoostSpec.ConditionBoostSpec.BoostControlSpec.ControlPoint,
    json_name: "controlPoints"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.BoostSpec.ConditionBoostSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :condition, 1, type: :string
  field :boost, 2, type: :float

  field :boost_control_spec, 3,
    type:
      Google.Cloud.Discoveryengine.V1beta.SearchRequest.BoostSpec.ConditionBoostSpec.BoostControlSpec,
    json_name: "boostControlSpec"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.BoostSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :condition_boost_specs, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SearchRequest.BoostSpec.ConditionBoostSpec,
    json_name: "conditionBoostSpecs"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.QueryExpansionSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :condition, 1,
    type: Google.Cloud.Discoveryengine.V1beta.SearchRequest.QueryExpansionSpec.Condition,
    enum: true

  field :pin_unexpanded_results, 2, type: :bool, json_name: "pinUnexpandedResults"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.SpellCorrectionSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :mode, 1,
    type: Google.Cloud.Discoveryengine.V1beta.SearchRequest.SpellCorrectionSpec.Mode,
    enum: true
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.ContentSearchSpec.SnippetSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :max_snippet_count, 1, type: :int32, json_name: "maxSnippetCount", deprecated: true
  field :reference_only, 2, type: :bool, json_name: "referenceOnly", deprecated: true
  field :return_snippet, 3, type: :bool, json_name: "returnSnippet"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.ContentSearchSpec.SummarySpec.ModelPromptSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :preamble, 1, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.ContentSearchSpec.SummarySpec.ModelSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :version, 1, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.ContentSearchSpec.SummarySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :summary_result_count, 1, type: :int32, json_name: "summaryResultCount"
  field :include_citations, 2, type: :bool, json_name: "includeCitations"
  field :ignore_adversarial_query, 3, type: :bool, json_name: "ignoreAdversarialQuery"

  field :ignore_non_summary_seeking_query, 4,
    type: :bool,
    json_name: "ignoreNonSummarySeekingQuery"

  field :model_prompt_spec, 5,
    type:
      Google.Cloud.Discoveryengine.V1beta.SearchRequest.ContentSearchSpec.SummarySpec.ModelPromptSpec,
    json_name: "modelPromptSpec"

  field :language_code, 6, type: :string, json_name: "languageCode"

  field :model_spec, 7,
    type:
      Google.Cloud.Discoveryengine.V1beta.SearchRequest.ContentSearchSpec.SummarySpec.ModelSpec,
    json_name: "modelSpec"

  field :use_semantic_chunks, 8, type: :bool, json_name: "useSemanticChunks"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.ContentSearchSpec.ExtractiveContentSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :max_extractive_answer_count, 1, type: :int32, json_name: "maxExtractiveAnswerCount"
  field :max_extractive_segment_count, 2, type: :int32, json_name: "maxExtractiveSegmentCount"

  field :return_extractive_segment_score, 3,
    type: :bool,
    json_name: "returnExtractiveSegmentScore"

  field :num_previous_segments, 4, type: :int32, json_name: "numPreviousSegments"
  field :num_next_segments, 5, type: :int32, json_name: "numNextSegments"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.ContentSearchSpec.ChunkSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :num_previous_chunks, 1, type: :int32, json_name: "numPreviousChunks"
  field :num_next_chunks, 2, type: :int32, json_name: "numNextChunks"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.ContentSearchSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :snippet_spec, 1,
    type: Google.Cloud.Discoveryengine.V1beta.SearchRequest.ContentSearchSpec.SnippetSpec,
    json_name: "snippetSpec"

  field :summary_spec, 2,
    type: Google.Cloud.Discoveryengine.V1beta.SearchRequest.ContentSearchSpec.SummarySpec,
    json_name: "summarySpec"

  field :extractive_content_spec, 3,
    type:
      Google.Cloud.Discoveryengine.V1beta.SearchRequest.ContentSearchSpec.ExtractiveContentSpec,
    json_name: "extractiveContentSpec"

  field :search_result_mode, 4,
    type: Google.Cloud.Discoveryengine.V1beta.SearchRequest.ContentSearchSpec.SearchResultMode,
    json_name: "searchResultMode",
    enum: true

  field :chunk_spec, 5,
    type: Google.Cloud.Discoveryengine.V1beta.SearchRequest.ContentSearchSpec.ChunkSpec,
    json_name: "chunkSpec"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.EmbeddingSpec.EmbeddingVector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field_path, 1, type: :string, json_name: "fieldPath"
  field :vector, 2, repeated: true, type: :float
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.EmbeddingSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :embedding_vectors, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SearchRequest.EmbeddingSpec.EmbeddingVector,
    json_name: "embeddingVectors"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.ParamsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest.UserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :serving_config, 1, type: :string, json_name: "servingConfig", deprecated: false
  field :branch, 2, type: :string, deprecated: false
  field :query, 3, type: :string

  field :image_query, 19,
    type: Google.Cloud.Discoveryengine.V1beta.SearchRequest.ImageQuery,
    json_name: "imageQuery"

  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
  field :offset, 6, type: :int32

  field :data_store_specs, 32,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SearchRequest.DataStoreSpec,
    json_name: "dataStoreSpecs"

  field :filter, 7, type: :string
  field :canonical_filter, 29, type: :string, json_name: "canonicalFilter"
  field :order_by, 8, type: :string, json_name: "orderBy"
  field :user_info, 21, type: Google.Cloud.Discoveryengine.V1beta.UserInfo, json_name: "userInfo"

  field :facet_specs, 9,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SearchRequest.FacetSpec,
    json_name: "facetSpecs"

  field :boost_spec, 10,
    type: Google.Cloud.Discoveryengine.V1beta.SearchRequest.BoostSpec,
    json_name: "boostSpec"

  field :params, 11,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SearchRequest.ParamsEntry,
    map: true

  field :query_expansion_spec, 13,
    type: Google.Cloud.Discoveryengine.V1beta.SearchRequest.QueryExpansionSpec,
    json_name: "queryExpansionSpec"

  field :spell_correction_spec, 14,
    type: Google.Cloud.Discoveryengine.V1beta.SearchRequest.SpellCorrectionSpec,
    json_name: "spellCorrectionSpec"

  field :user_pseudo_id, 15, type: :string, json_name: "userPseudoId"

  field :content_search_spec, 24,
    type: Google.Cloud.Discoveryengine.V1beta.SearchRequest.ContentSearchSpec,
    json_name: "contentSearchSpec"

  field :embedding_spec, 23,
    type: Google.Cloud.Discoveryengine.V1beta.SearchRequest.EmbeddingSpec,
    json_name: "embeddingSpec"

  field :ranking_expression, 26, type: :string, json_name: "rankingExpression"
  field :safe_search, 20, type: :bool, json_name: "safeSearch"

  field :user_labels, 22,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SearchRequest.UserLabelsEntry,
    json_name: "userLabels",
    map: true
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchResponse.SearchResult.ModelScoresEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Discoveryengine.V1beta.DoubleList
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchResponse.SearchResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string
  field :document, 2, type: Google.Cloud.Discoveryengine.V1beta.Document
  field :chunk, 18, type: Google.Cloud.Discoveryengine.V1beta.Chunk

  field :model_scores, 4,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SearchResponse.SearchResult.ModelScoresEntry,
    json_name: "modelScores",
    map: true
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchResponse.Facet.FacetValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :facet_value, 0

  field :value, 1, type: :string, oneof: 0
  field :interval, 2, type: Google.Cloud.Discoveryengine.V1beta.Interval, oneof: 0
  field :count, 3, type: :int64
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchResponse.Facet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string

  field :values, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SearchResponse.Facet.FacetValue

  field :dynamic_facet, 3, type: :bool, json_name: "dynamicFacet"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchResponse.GuidedSearchResult.RefinementAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :attribute_key, 1, type: :string, json_name: "attributeKey"
  field :attribute_value, 2, type: :string, json_name: "attributeValue"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchResponse.GuidedSearchResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :refinement_attributes, 1,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1beta.SearchResponse.GuidedSearchResult.RefinementAttribute,
    json_name: "refinementAttributes"

  field :follow_up_questions, 2, repeated: true, type: :string, json_name: "followUpQuestions"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchResponse.Summary.SafetyAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :categories, 1, repeated: true, type: :string
  field :scores, 2, repeated: true, type: :float
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchResponse.Summary.CitationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :citations, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SearchResponse.Summary.Citation
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchResponse.Summary.Citation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_index, 1, type: :int64, json_name: "startIndex"
  field :end_index, 2, type: :int64, json_name: "endIndex"

  field :sources, 3,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SearchResponse.Summary.CitationSource
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchResponse.Summary.CitationSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :reference_index, 4, type: :int64, json_name: "referenceIndex"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchResponse.Summary.Reference.ChunkContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :content, 1, type: :string
  field :page_identifier, 2, type: :string, json_name: "pageIdentifier"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchResponse.Summary.Reference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :title, 1, type: :string
  field :document, 2, type: :string, deprecated: false
  field :uri, 3, type: :string

  field :chunk_contents, 4,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SearchResponse.Summary.Reference.ChunkContent,
    json_name: "chunkContents"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchResponse.Summary.SummaryWithMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :summary, 1, type: :string

  field :citation_metadata, 2,
    type: Google.Cloud.Discoveryengine.V1beta.SearchResponse.Summary.CitationMetadata,
    json_name: "citationMetadata"

  field :references, 3,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SearchResponse.Summary.Reference
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchResponse.Summary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :summary_text, 1, type: :string, json_name: "summaryText"

  field :summary_skipped_reasons, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SearchResponse.Summary.SummarySkippedReason,
    json_name: "summarySkippedReasons",
    enum: true

  field :safety_attributes, 3,
    type: Google.Cloud.Discoveryengine.V1beta.SearchResponse.Summary.SafetyAttributes,
    json_name: "safetyAttributes"

  field :summary_with_metadata, 4,
    type: Google.Cloud.Discoveryengine.V1beta.SearchResponse.Summary.SummaryWithMetadata,
    json_name: "summaryWithMetadata"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchResponse.GeoSearchDebugInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :original_address_query, 1, type: :string, json_name: "originalAddressQuery"
  field :error_message, 2, type: :string, json_name: "errorMessage"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchResponse.QueryExpansionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :expanded_query, 1, type: :bool, json_name: "expandedQuery"
  field :pinned_result_count, 2, type: :int64, json_name: "pinnedResultCount"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SearchResponse.SearchResult

  field :facets, 2, repeated: true, type: Google.Cloud.Discoveryengine.V1beta.SearchResponse.Facet

  field :guided_search_result, 8,
    type: Google.Cloud.Discoveryengine.V1beta.SearchResponse.GuidedSearchResult,
    json_name: "guidedSearchResult"

  field :total_size, 3, type: :int32, json_name: "totalSize"
  field :attribution_token, 4, type: :string, json_name: "attributionToken"
  field :redirect_uri, 12, type: :string, json_name: "redirectUri"
  field :next_page_token, 5, type: :string, json_name: "nextPageToken"
  field :corrected_query, 7, type: :string, json_name: "correctedQuery"
  field :summary, 9, type: Google.Cloud.Discoveryengine.V1beta.SearchResponse.Summary
  field :applied_controls, 10, repeated: true, type: :string, json_name: "appliedControls"

  field :geo_search_debug_info, 16,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SearchResponse.GeoSearchDebugInfo,
    json_name: "geoSearchDebugInfo"

  field :query_expansion_info, 14,
    type: Google.Cloud.Discoveryengine.V1beta.SearchResponse.QueryExpansionInfo,
    json_name: "queryExpansionInfo"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1beta.SearchService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :Search,
      Google.Cloud.Discoveryengine.V1beta.SearchRequest,
      Google.Cloud.Discoveryengine.V1beta.SearchResponse
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1beta.SearchService.Service
end