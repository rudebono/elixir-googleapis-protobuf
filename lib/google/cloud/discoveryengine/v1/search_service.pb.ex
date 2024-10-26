defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.BoostSpec.ConditionBoostSpec.BoostControlSpec.AttributeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ATTRIBUTE_TYPE_UNSPECIFIED, 0
  field :NUMERICAL, 1
  field :FRESHNESS, 2
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.BoostSpec.ConditionBoostSpec.BoostControlSpec.InterpolationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :INTERPOLATION_TYPE_UNSPECIFIED, 0
  field :LINEAR, 1
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.QueryExpansionSpec.Condition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CONDITION_UNSPECIFIED, 0
  field :DISABLED, 1
  field :AUTO, 2
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.SpellCorrectionSpec.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :SUGGESTION_ONLY, 1
  field :AUTO, 2
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec.SearchResultMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SEARCH_RESULT_MODE_UNSPECIFIED, 0
  field :DOCUMENTS, 1
  field :CHUNKS, 2
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.SearchAsYouTypeSpec.Condition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CONDITION_UNSPECIFIED, 0
  field :DISABLED, 1
  field :ENABLED, 2
end

defmodule Google.Cloud.Discoveryengine.V1.SearchResponse.Summary.SummarySkippedReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SUMMARY_SKIPPED_REASON_UNSPECIFIED, 0
  field :ADVERSARIAL_QUERY_IGNORED, 1
  field :NON_SUMMARY_SEEKING_QUERY_IGNORED, 2
  field :OUT_OF_DOMAIN_QUERY_IGNORED, 3
  field :POTENTIAL_POLICY_VIOLATION, 4
  field :LLM_ADDON_NOT_ENABLED, 5
  field :NO_RELEVANT_CONTENT, 6
  field :JAIL_BREAKING_QUERY_IGNORED, 7
  field :CUSTOMER_POLICY_VIOLATION, 8
  field :NON_SUMMARY_SEEKING_QUERY_IGNORED_V2, 9
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.ImageQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :image, 0

  field :image_bytes, 1, type: :string, json_name: "imageBytes", oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.DataStoreSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :data_store, 1, type: :string, json_name: "dataStore", deprecated: false
  field :filter, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.FacetSpec.FacetKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string, deprecated: false
  field :intervals, 2, repeated: true, type: Google.Cloud.Discoveryengine.V1.Interval
  field :restricted_values, 3, repeated: true, type: :string, json_name: "restrictedValues"
  field :prefixes, 4, repeated: true, type: :string
  field :contains, 5, repeated: true, type: :string
  field :case_insensitive, 6, type: :bool, json_name: "caseInsensitive"
  field :order_by, 7, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.FacetSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :facet_key, 1,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.FacetSpec.FacetKey,
    json_name: "facetKey",
    deprecated: false

  field :limit, 2, type: :int32
  field :excluded_filter_keys, 3, repeated: true, type: :string, json_name: "excludedFilterKeys"
  field :enable_dynamic_position, 4, type: :bool, json_name: "enableDynamicPosition"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.BoostSpec.ConditionBoostSpec.BoostControlSpec.ControlPoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :attribute_value, 1, type: :string, json_name: "attributeValue"
  field :boost_amount, 2, type: :float, json_name: "boostAmount"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.BoostSpec.ConditionBoostSpec.BoostControlSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :field_name, 1, type: :string, json_name: "fieldName"

  field :attribute_type, 2,
    type:
      Google.Cloud.Discoveryengine.V1.SearchRequest.BoostSpec.ConditionBoostSpec.BoostControlSpec.AttributeType,
    json_name: "attributeType",
    enum: true

  field :interpolation_type, 3,
    type:
      Google.Cloud.Discoveryengine.V1.SearchRequest.BoostSpec.ConditionBoostSpec.BoostControlSpec.InterpolationType,
    json_name: "interpolationType",
    enum: true

  field :control_points, 4,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1.SearchRequest.BoostSpec.ConditionBoostSpec.BoostControlSpec.ControlPoint,
    json_name: "controlPoints"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.BoostSpec.ConditionBoostSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :condition, 1, type: :string
  field :boost, 2, type: :float

  field :boost_control_spec, 3,
    type:
      Google.Cloud.Discoveryengine.V1.SearchRequest.BoostSpec.ConditionBoostSpec.BoostControlSpec,
    json_name: "boostControlSpec"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.BoostSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :condition_boost_specs, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.BoostSpec.ConditionBoostSpec,
    json_name: "conditionBoostSpecs"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.QueryExpansionSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :condition, 1,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.QueryExpansionSpec.Condition,
    enum: true

  field :pin_unexpanded_results, 2, type: :bool, json_name: "pinUnexpandedResults"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.SpellCorrectionSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :mode, 1,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.SpellCorrectionSpec.Mode,
    enum: true
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec.SnippetSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :max_snippet_count, 1, type: :int32, json_name: "maxSnippetCount", deprecated: true
  field :reference_only, 2, type: :bool, json_name: "referenceOnly", deprecated: true
  field :return_snippet, 3, type: :bool, json_name: "returnSnippet"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec.SummarySpec.ModelPromptSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :preamble, 1, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec.SummarySpec.ModelSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :version, 1, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec.SummarySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :summary_result_count, 1, type: :int32, json_name: "summaryResultCount"
  field :include_citations, 2, type: :bool, json_name: "includeCitations"
  field :ignore_adversarial_query, 3, type: :bool, json_name: "ignoreAdversarialQuery"

  field :ignore_non_summary_seeking_query, 4,
    type: :bool,
    json_name: "ignoreNonSummarySeekingQuery"

  field :ignore_low_relevant_content, 9, type: :bool, json_name: "ignoreLowRelevantContent"

  field :ignore_jail_breaking_query, 10,
    type: :bool,
    json_name: "ignoreJailBreakingQuery",
    deprecated: false

  field :model_prompt_spec, 5,
    type:
      Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec.SummarySpec.ModelPromptSpec,
    json_name: "modelPromptSpec"

  field :language_code, 6, type: :string, json_name: "languageCode"

  field :model_spec, 7,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec.SummarySpec.ModelSpec,
    json_name: "modelSpec"

  field :use_semantic_chunks, 8, type: :bool, json_name: "useSemanticChunks"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec.ExtractiveContentSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :max_extractive_answer_count, 1, type: :int32, json_name: "maxExtractiveAnswerCount"
  field :max_extractive_segment_count, 2, type: :int32, json_name: "maxExtractiveSegmentCount"

  field :return_extractive_segment_score, 3,
    type: :bool,
    json_name: "returnExtractiveSegmentScore"

  field :num_previous_segments, 4, type: :int32, json_name: "numPreviousSegments"
  field :num_next_segments, 5, type: :int32, json_name: "numNextSegments"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec.ChunkSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :num_previous_chunks, 1, type: :int32, json_name: "numPreviousChunks"
  field :num_next_chunks, 2, type: :int32, json_name: "numNextChunks"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :snippet_spec, 1,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec.SnippetSpec,
    json_name: "snippetSpec"

  field :summary_spec, 2,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec.SummarySpec,
    json_name: "summarySpec"

  field :extractive_content_spec, 3,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec.ExtractiveContentSpec,
    json_name: "extractiveContentSpec"

  field :search_result_mode, 4,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec.SearchResultMode,
    json_name: "searchResultMode",
    enum: true

  field :chunk_spec, 5,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec.ChunkSpec,
    json_name: "chunkSpec"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.SearchAsYouTypeSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :condition, 1,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.SearchAsYouTypeSpec.Condition,
    enum: true
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.SessionSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :query_id, 1, type: :string, json_name: "queryId"

  field :search_result_persistence_count, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "searchResultPersistenceCount"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.ParamsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest.UserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.SearchRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :serving_config, 1, type: :string, json_name: "servingConfig", deprecated: false
  field :branch, 2, type: :string, deprecated: false
  field :query, 3, type: :string

  field :image_query, 19,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.ImageQuery,
    json_name: "imageQuery"

  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
  field :offset, 6, type: :int32
  field :one_box_page_size, 47, type: :int32, json_name: "oneBoxPageSize"

  field :data_store_specs, 32,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.DataStoreSpec,
    json_name: "dataStoreSpecs"

  field :filter, 7, type: :string
  field :canonical_filter, 29, type: :string, json_name: "canonicalFilter"
  field :order_by, 8, type: :string, json_name: "orderBy"
  field :user_info, 21, type: Google.Cloud.Discoveryengine.V1.UserInfo, json_name: "userInfo"
  field :language_code, 35, type: :string, json_name: "languageCode"

  field :facet_specs, 9,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.FacetSpec,
    json_name: "facetSpecs"

  field :boost_spec, 10,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.BoostSpec,
    json_name: "boostSpec"

  field :params, 11,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.ParamsEntry,
    map: true

  field :query_expansion_spec, 13,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.QueryExpansionSpec,
    json_name: "queryExpansionSpec"

  field :spell_correction_spec, 14,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.SpellCorrectionSpec,
    json_name: "spellCorrectionSpec"

  field :user_pseudo_id, 15, type: :string, json_name: "userPseudoId"

  field :content_search_spec, 24,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec,
    json_name: "contentSearchSpec"

  field :safe_search, 20, type: :bool, json_name: "safeSearch"

  field :user_labels, 22,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.UserLabelsEntry,
    json_name: "userLabels",
    map: true

  field :search_as_you_type_spec, 31,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.SearchAsYouTypeSpec,
    json_name: "searchAsYouTypeSpec"

  field :session, 41, type: :string, deprecated: false

  field :session_spec, 42,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.SessionSpec,
    json_name: "sessionSpec"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchResponse.SearchResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
  field :document, 2, type: Google.Cloud.Discoveryengine.V1.Document
  field :chunk, 18, type: Google.Cloud.Discoveryengine.V1.Chunk
end

defmodule Google.Cloud.Discoveryengine.V1.SearchResponse.Facet.FacetValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :facet_value, 0

  field :value, 1, type: :string, oneof: 0
  field :interval, 2, type: Google.Cloud.Discoveryengine.V1.Interval, oneof: 0
  field :count, 3, type: :int64
end

defmodule Google.Cloud.Discoveryengine.V1.SearchResponse.Facet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string

  field :values, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SearchResponse.Facet.FacetValue

  field :dynamic_facet, 3, type: :bool, json_name: "dynamicFacet"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchResponse.Summary.SafetyAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :categories, 1, repeated: true, type: :string
  field :scores, 2, repeated: true, type: :float
end

defmodule Google.Cloud.Discoveryengine.V1.SearchResponse.Summary.CitationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :citations, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SearchResponse.Summary.Citation
end

defmodule Google.Cloud.Discoveryengine.V1.SearchResponse.Summary.Citation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :start_index, 1, type: :int64, json_name: "startIndex"
  field :end_index, 2, type: :int64, json_name: "endIndex"

  field :sources, 3,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SearchResponse.Summary.CitationSource
end

defmodule Google.Cloud.Discoveryengine.V1.SearchResponse.Summary.CitationSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :reference_index, 4, type: :int64, json_name: "referenceIndex"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchResponse.Summary.Reference.ChunkContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :content, 1, type: :string
  field :page_identifier, 2, type: :string, json_name: "pageIdentifier"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchResponse.Summary.Reference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :title, 1, type: :string
  field :document, 2, type: :string, deprecated: false
  field :uri, 3, type: :string

  field :chunk_contents, 4,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SearchResponse.Summary.Reference.ChunkContent,
    json_name: "chunkContents"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchResponse.Summary.SummaryWithMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :summary, 1, type: :string

  field :citation_metadata, 2,
    type: Google.Cloud.Discoveryengine.V1.SearchResponse.Summary.CitationMetadata,
    json_name: "citationMetadata"

  field :references, 3,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SearchResponse.Summary.Reference
end

defmodule Google.Cloud.Discoveryengine.V1.SearchResponse.Summary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :summary_text, 1, type: :string, json_name: "summaryText"

  field :summary_skipped_reasons, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SearchResponse.Summary.SummarySkippedReason,
    json_name: "summarySkippedReasons",
    enum: true

  field :safety_attributes, 3,
    type: Google.Cloud.Discoveryengine.V1.SearchResponse.Summary.SafetyAttributes,
    json_name: "safetyAttributes"

  field :summary_with_metadata, 4,
    type: Google.Cloud.Discoveryengine.V1.SearchResponse.Summary.SummaryWithMetadata,
    json_name: "summaryWithMetadata"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchResponse.QueryExpansionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :expanded_query, 1, type: :bool, json_name: "expandedQuery"
  field :pinned_result_count, 2, type: :int64, json_name: "pinnedResultCount"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchResponse.SessionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :query_id, 2, type: :string, json_name: "queryId"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SearchResponse.SearchResult

  field :facets, 2, repeated: true, type: Google.Cloud.Discoveryengine.V1.SearchResponse.Facet
  field :total_size, 3, type: :int32, json_name: "totalSize"
  field :attribution_token, 4, type: :string, json_name: "attributionToken"
  field :redirect_uri, 12, type: :string, json_name: "redirectUri"
  field :next_page_token, 5, type: :string, json_name: "nextPageToken"
  field :corrected_query, 7, type: :string, json_name: "correctedQuery"
  field :summary, 9, type: Google.Cloud.Discoveryengine.V1.SearchResponse.Summary

  field :query_expansion_info, 14,
    type: Google.Cloud.Discoveryengine.V1.SearchResponse.QueryExpansionInfo,
    json_name: "queryExpansionInfo"

  field :session_info, 19,
    type: Google.Cloud.Discoveryengine.V1.SearchResponse.SessionInfo,
    json_name: "sessionInfo"
end

defmodule Google.Cloud.Discoveryengine.V1.SearchService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.SearchService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :Search,
      Google.Cloud.Discoveryengine.V1.SearchRequest,
      Google.Cloud.Discoveryengine.V1.SearchResponse

  rpc :SearchLite,
      Google.Cloud.Discoveryengine.V1.SearchRequest,
      Google.Cloud.Discoveryengine.V1.SearchResponse
end

defmodule Google.Cloud.Discoveryengine.V1.SearchService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.SearchService.Service
end