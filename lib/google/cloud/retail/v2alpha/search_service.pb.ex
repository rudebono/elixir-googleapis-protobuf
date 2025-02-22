defmodule Google.Cloud.Retail.V2alpha.SearchRequest.RelevanceThreshold do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RELEVANCE_THRESHOLD_UNSPECIFIED, 0
  field :HIGH, 1
  field :MEDIUM, 2
  field :LOW, 3
  field :LOWEST, 4
end

defmodule Google.Cloud.Retail.V2alpha.SearchRequest.SearchMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SEARCH_MODE_UNSPECIFIED, 0
  field :PRODUCT_SEARCH_ONLY, 1
  field :FACETED_SEARCH_ONLY, 2
end

defmodule Google.Cloud.Retail.V2alpha.SearchRequest.DynamicFacetSpec.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :ENABLED, 2
end

defmodule Google.Cloud.Retail.V2alpha.SearchRequest.QueryExpansionSpec.Condition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONDITION_UNSPECIFIED, 0
  field :DISABLED, 1
  field :AUTO, 3
end

defmodule Google.Cloud.Retail.V2alpha.SearchRequest.PersonalizationSpec.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :AUTO, 1
  field :DISABLED, 2
end

defmodule Google.Cloud.Retail.V2alpha.SearchRequest.SpellCorrectionSpec.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :SUGGESTION_ONLY, 1
  field :AUTO, 2
end

defmodule Google.Cloud.Retail.V2alpha.ProductAttributeValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Retail.V2alpha.ProductAttributeInterval do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :interval, 2, type: Google.Cloud.Retail.V2alpha.Interval
end

defmodule Google.Cloud.Retail.V2alpha.Tile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :product_attribute, 0

  field :product_attribute_value, 1,
    type: Google.Cloud.Retail.V2alpha.ProductAttributeValue,
    json_name: "productAttributeValue",
    oneof: 0

  field :product_attribute_interval, 2,
    type: Google.Cloud.Retail.V2alpha.ProductAttributeInterval,
    json_name: "productAttributeInterval",
    oneof: 0

  field :representative_product_id, 3, type: :string, json_name: "representativeProductId"
end

defmodule Google.Cloud.Retail.V2alpha.SearchRequest.FacetSpec.FacetKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string, deprecated: false
  field :intervals, 2, repeated: true, type: Google.Cloud.Retail.V2alpha.Interval
  field :restricted_values, 3, repeated: true, type: :string, json_name: "restrictedValues"
  field :prefixes, 8, repeated: true, type: :string
  field :contains, 9, repeated: true, type: :string
  field :case_insensitive, 10, type: :bool, json_name: "caseInsensitive"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :query, 5, type: :string
  field :return_min_max, 11, type: :bool, json_name: "returnMinMax"
end

defmodule Google.Cloud.Retail.V2alpha.SearchRequest.FacetSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :facet_key, 1,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.FacetSpec.FacetKey,
    json_name: "facetKey",
    deprecated: false

  field :limit, 2, type: :int32
  field :excluded_filter_keys, 3, repeated: true, type: :string, json_name: "excludedFilterKeys"
  field :enable_dynamic_position, 4, type: :bool, json_name: "enableDynamicPosition"
end

defmodule Google.Cloud.Retail.V2alpha.SearchRequest.DynamicFacetSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :mode, 1,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.DynamicFacetSpec.Mode,
    enum: true
end

defmodule Google.Cloud.Retail.V2alpha.SearchRequest.BoostSpec.ConditionBoostSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :condition, 1, type: :string
  field :boost, 2, type: :float
end

defmodule Google.Cloud.Retail.V2alpha.SearchRequest.BoostSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :condition_boost_specs, 1,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.BoostSpec.ConditionBoostSpec,
    json_name: "conditionBoostSpecs"

  field :skip_boost_spec_validation, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "skipBoostSpecValidation"
end

defmodule Google.Cloud.Retail.V2alpha.SearchRequest.QueryExpansionSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :condition, 1,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.QueryExpansionSpec.Condition,
    enum: true

  field :pin_unexpanded_results, 2, type: :bool, json_name: "pinUnexpandedResults"
end

defmodule Google.Cloud.Retail.V2alpha.SearchRequest.PersonalizationSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :mode, 1,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.PersonalizationSpec.Mode,
    enum: true
end

defmodule Google.Cloud.Retail.V2alpha.SearchRequest.SpellCorrectionSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :mode, 1,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.SpellCorrectionSpec.Mode,
    enum: true
end

defmodule Google.Cloud.Retail.V2alpha.SearchRequest.ConversationalSearchSpec.UserAnswer.SelectedAnswer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :product_attribute_values, 1,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.ProductAttributeValue,
    json_name: "productAttributeValues",
    deprecated: true

  field :product_attribute_value, 2,
    type: Google.Cloud.Retail.V2alpha.ProductAttributeValue,
    json_name: "productAttributeValue"
end

defmodule Google.Cloud.Retail.V2alpha.SearchRequest.ConversationalSearchSpec.UserAnswer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :type, 0

  field :text_answer, 1, type: :string, json_name: "textAnswer", oneof: 0

  field :selected_answer, 2,
    type:
      Google.Cloud.Retail.V2alpha.SearchRequest.ConversationalSearchSpec.UserAnswer.SelectedAnswer,
    json_name: "selectedAnswer",
    oneof: 0
end

defmodule Google.Cloud.Retail.V2alpha.SearchRequest.ConversationalSearchSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :followup_conversation_requested, 1,
    type: :bool,
    json_name: "followupConversationRequested"

  field :conversation_id, 2, type: :string, json_name: "conversationId"

  field :user_answer, 3,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.ConversationalSearchSpec.UserAnswer,
    json_name: "userAnswer"
end

defmodule Google.Cloud.Retail.V2alpha.SearchRequest.TileNavigationSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tile_navigation_requested, 1, type: :bool, json_name: "tileNavigationRequested"

  field :applied_tiles, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.Tile,
    json_name: "appliedTiles"
end

defmodule Google.Cloud.Retail.V2alpha.SearchRequest.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Retail.V2alpha.SearchRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :placement, 1, type: :string, deprecated: false
  field :branch, 2, type: :string, deprecated: false
  field :query, 3, type: :string
  field :visitor_id, 4, type: :string, json_name: "visitorId", deprecated: false
  field :user_info, 5, type: Google.Cloud.Retail.V2alpha.UserInfo, json_name: "userInfo"
  field :page_size, 7, type: :int32, json_name: "pageSize"
  field :page_token, 8, type: :string, json_name: "pageToken"
  field :offset, 9, type: :int32
  field :filter, 10, type: :string
  field :canonical_filter, 28, type: :string, json_name: "canonicalFilter"
  field :order_by, 11, type: :string, json_name: "orderBy"

  field :facet_specs, 12,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.FacetSpec,
    json_name: "facetSpecs"

  field :dynamic_facet_spec, 21,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.DynamicFacetSpec,
    json_name: "dynamicFacetSpec",
    deprecated: true

  field :boost_spec, 13,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.BoostSpec,
    json_name: "boostSpec"

  field :query_expansion_spec, 14,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.QueryExpansionSpec,
    json_name: "queryExpansionSpec"

  field :relevance_threshold, 15,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.RelevanceThreshold,
    json_name: "relevanceThreshold",
    enum: true

  field :variant_rollup_keys, 17, repeated: true, type: :string, json_name: "variantRollupKeys"
  field :page_categories, 23, repeated: true, type: :string, json_name: "pageCategories"

  field :search_mode, 31,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.SearchMode,
    json_name: "searchMode",
    enum: true

  field :personalization_spec, 32,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.PersonalizationSpec,
    json_name: "personalizationSpec"

  field :labels, 34,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.LabelsEntry,
    map: true

  field :spell_correction_spec, 35,
    proto3_optional: true,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.SpellCorrectionSpec,
    json_name: "spellCorrectionSpec"

  field :entity, 38, type: :string

  field :conversational_search_spec, 40,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.ConversationalSearchSpec,
    json_name: "conversationalSearchSpec",
    deprecated: false

  field :tile_navigation_spec, 41,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.TileNavigationSpec,
    json_name: "tileNavigationSpec",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.SearchResponse.SearchResult.MatchingVariantFieldsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Retail.V2alpha.SearchResponse.SearchResult.VariantRollupValuesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Retail.V2alpha.SearchResponse.SearchResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string
  field :product, 2, type: Google.Cloud.Retail.V2alpha.Product
  field :matching_variant_count, 3, type: :int32, json_name: "matchingVariantCount"

  field :matching_variant_fields, 4,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.SearchResponse.SearchResult.MatchingVariantFieldsEntry,
    json_name: "matchingVariantFields",
    map: true

  field :variant_rollup_values, 5,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.SearchResponse.SearchResult.VariantRollupValuesEntry,
    json_name: "variantRollupValues",
    map: true

  field :personal_labels, 7, repeated: true, type: :string, json_name: "personalLabels"
end

defmodule Google.Cloud.Retail.V2alpha.SearchResponse.Facet.FacetValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :facet_value, 0

  field :value, 1, type: :string, oneof: 0
  field :interval, 2, type: Google.Cloud.Retail.V2alpha.Interval, oneof: 0
  field :count, 3, type: :int64
  field :min_value, 5, type: :double, json_name: "minValue"
  field :max_value, 6, type: :double, json_name: "maxValue"
end

defmodule Google.Cloud.Retail.V2alpha.SearchResponse.Facet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string

  field :values, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.SearchResponse.Facet.FacetValue

  field :dynamic_facet, 3, type: :bool, json_name: "dynamicFacet"
end

defmodule Google.Cloud.Retail.V2alpha.SearchResponse.QueryExpansionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :expanded_query, 1, type: :bool, json_name: "expandedQuery"
  field :pinned_result_count, 2, type: :int64, json_name: "pinnedResultCount"
end

defmodule Google.Cloud.Retail.V2alpha.SearchResponse.ConversationalSearchResult.SuggestedAnswer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :product_attribute_value, 1,
    type: Google.Cloud.Retail.V2alpha.ProductAttributeValue,
    json_name: "productAttributeValue"
end

defmodule Google.Cloud.Retail.V2alpha.SearchResponse.ConversationalSearchResult.AdditionalFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :product_attribute_value, 1,
    type: Google.Cloud.Retail.V2alpha.ProductAttributeValue,
    json_name: "productAttributeValue"
end

defmodule Google.Cloud.Retail.V2alpha.SearchResponse.ConversationalSearchResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :conversation_id, 1, type: :string, json_name: "conversationId"
  field :refined_query, 2, type: :string, json_name: "refinedQuery"

  field :additional_filters, 3,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.SearchResponse.ConversationalSearchResult.AdditionalFilter,
    json_name: "additionalFilters",
    deprecated: true

  field :followup_question, 4, type: :string, json_name: "followupQuestion"

  field :suggested_answers, 5,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.SearchResponse.ConversationalSearchResult.SuggestedAnswer,
    json_name: "suggestedAnswers"

  field :additional_filter, 6,
    type: Google.Cloud.Retail.V2alpha.SearchResponse.ConversationalSearchResult.AdditionalFilter,
    json_name: "additionalFilter"
end

defmodule Google.Cloud.Retail.V2alpha.SearchResponse.TileNavigationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tiles, 1, repeated: true, type: Google.Cloud.Retail.V2alpha.Tile
end

defmodule Google.Cloud.Retail.V2alpha.SearchResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Cloud.Retail.V2alpha.SearchResponse.SearchResult
  field :facets, 2, repeated: true, type: Google.Cloud.Retail.V2alpha.SearchResponse.Facet
  field :total_size, 3, type: :int32, json_name: "totalSize"
  field :corrected_query, 4, type: :string, json_name: "correctedQuery"
  field :attribution_token, 5, type: :string, json_name: "attributionToken"
  field :next_page_token, 6, type: :string, json_name: "nextPageToken"

  field :query_expansion_info, 7,
    type: Google.Cloud.Retail.V2alpha.SearchResponse.QueryExpansionInfo,
    json_name: "queryExpansionInfo"

  field :redirect_uri, 10, type: :string, json_name: "redirectUri"
  field :applied_controls, 12, repeated: true, type: :string, json_name: "appliedControls"

  field :invalid_condition_boost_specs, 14,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.BoostSpec.ConditionBoostSpec,
    json_name: "invalidConditionBoostSpecs"

  field :experiment_info, 17,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.ExperimentInfo,
    json_name: "experimentInfo"

  field :conversational_search_result, 18,
    type: Google.Cloud.Retail.V2alpha.SearchResponse.ConversationalSearchResult,
    json_name: "conversationalSearchResult"

  field :tile_navigation_result, 19,
    type: Google.Cloud.Retail.V2alpha.SearchResponse.TileNavigationResult,
    json_name: "tileNavigationResult"
end

defmodule Google.Cloud.Retail.V2alpha.ExperimentInfo.ServingConfigExperiment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :original_serving_config, 1,
    type: :string,
    json_name: "originalServingConfig",
    deprecated: false

  field :experiment_serving_config, 2,
    type: :string,
    json_name: "experimentServingConfig",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.ExperimentInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :experiment_metadata, 0

  field :serving_config_experiment, 2,
    type: Google.Cloud.Retail.V2alpha.ExperimentInfo.ServingConfigExperiment,
    json_name: "servingConfigExperiment",
    oneof: 0

  field :experiment, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.SearchService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.retail.v2alpha.SearchService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :Search,
      Google.Cloud.Retail.V2alpha.SearchRequest,
      Google.Cloud.Retail.V2alpha.SearchResponse
end

defmodule Google.Cloud.Retail.V2alpha.SearchService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Retail.V2alpha.SearchService.Service
end
