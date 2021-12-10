defmodule Google.Cloud.Retail.V2alpha.SearchRequest.RelevanceThreshold do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :RELEVANCE_THRESHOLD_UNSPECIFIED | :HIGH | :MEDIUM | :LOW | :LOWEST

  field :RELEVANCE_THRESHOLD_UNSPECIFIED, 0
  field :HIGH, 1
  field :MEDIUM, 2
  field :LOW, 3
  field :LOWEST, 4
end
defmodule Google.Cloud.Retail.V2alpha.SearchRequest.SearchMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SEARCH_MODE_UNSPECIFIED | :PRODUCT_SEARCH_ONLY | :FACETED_SEARCH_ONLY

  field :SEARCH_MODE_UNSPECIFIED, 0
  field :PRODUCT_SEARCH_ONLY, 1
  field :FACETED_SEARCH_ONLY, 2
end
defmodule Google.Cloud.Retail.V2alpha.SearchRequest.DynamicFacetSpec.Mode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :MODE_UNSPECIFIED | :DISABLED | :ENABLED

  field :MODE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :ENABLED, 2
end
defmodule Google.Cloud.Retail.V2alpha.SearchRequest.QueryExpansionSpec.Condition do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :CONDITION_UNSPECIFIED | :DISABLED | :AUTO

  field :CONDITION_UNSPECIFIED, 0
  field :DISABLED, 1
  field :AUTO, 3
end
defmodule Google.Cloud.Retail.V2alpha.SearchRequest.FacetSpec.FacetKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          intervals: [Google.Cloud.Retail.V2alpha.Interval.t()],
          restricted_values: [String.t()],
          prefixes: [String.t()],
          contains: [String.t()],
          order_by: String.t(),
          query: String.t()
        }

  defstruct key: "",
            intervals: [],
            restricted_values: [],
            prefixes: [],
            contains: [],
            order_by: "",
            query: ""

  field :key, 1, type: :string, deprecated: false
  field :intervals, 2, repeated: true, type: Google.Cloud.Retail.V2alpha.Interval
  field :restricted_values, 3, repeated: true, type: :string, json_name: "restrictedValues"
  field :prefixes, 8, repeated: true, type: :string
  field :contains, 9, repeated: true, type: :string
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :query, 5, type: :string
end
defmodule Google.Cloud.Retail.V2alpha.SearchRequest.FacetSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          facet_key: Google.Cloud.Retail.V2alpha.SearchRequest.FacetSpec.FacetKey.t() | nil,
          limit: integer,
          excluded_filter_keys: [String.t()],
          enable_dynamic_position: boolean
        }

  defstruct facet_key: nil,
            limit: 0,
            excluded_filter_keys: [],
            enable_dynamic_position: false

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mode: Google.Cloud.Retail.V2alpha.SearchRequest.DynamicFacetSpec.Mode.t()
        }

  defstruct mode: :MODE_UNSPECIFIED

  field :mode, 1,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.DynamicFacetSpec.Mode,
    enum: true
end
defmodule Google.Cloud.Retail.V2alpha.SearchRequest.BoostSpec.ConditionBoostSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          condition: String.t(),
          boost: float | :infinity | :negative_infinity | :nan
        }

  defstruct condition: "",
            boost: 0.0

  field :condition, 1, type: :string
  field :boost, 2, type: :float
end
defmodule Google.Cloud.Retail.V2alpha.SearchRequest.BoostSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          condition_boost_specs: [
            Google.Cloud.Retail.V2alpha.SearchRequest.BoostSpec.ConditionBoostSpec.t()
          ]
        }

  defstruct condition_boost_specs: []

  field :condition_boost_specs, 1,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.BoostSpec.ConditionBoostSpec,
    json_name: "conditionBoostSpecs"
end
defmodule Google.Cloud.Retail.V2alpha.SearchRequest.QueryExpansionSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          condition: Google.Cloud.Retail.V2alpha.SearchRequest.QueryExpansionSpec.Condition.t(),
          pin_unexpanded_results: boolean
        }

  defstruct condition: :CONDITION_UNSPECIFIED,
            pin_unexpanded_results: false

  field :condition, 1,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.QueryExpansionSpec.Condition,
    enum: true

  field :pin_unexpanded_results, 2, type: :bool, json_name: "pinUnexpandedResults"
end
defmodule Google.Cloud.Retail.V2alpha.SearchRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          placement: String.t(),
          branch: String.t(),
          query: String.t(),
          visitor_id: String.t(),
          user_info: Google.Cloud.Retail.V2alpha.UserInfo.t() | nil,
          page_size: integer,
          page_token: String.t(),
          offset: integer,
          filter: String.t(),
          canonical_filter: String.t(),
          order_by: String.t(),
          facet_specs: [Google.Cloud.Retail.V2alpha.SearchRequest.FacetSpec.t()],
          dynamic_facet_spec:
            Google.Cloud.Retail.V2alpha.SearchRequest.DynamicFacetSpec.t() | nil,
          boost_spec: Google.Cloud.Retail.V2alpha.SearchRequest.BoostSpec.t() | nil,
          query_expansion_spec:
            Google.Cloud.Retail.V2alpha.SearchRequest.QueryExpansionSpec.t() | nil,
          relevance_threshold: Google.Cloud.Retail.V2alpha.SearchRequest.RelevanceThreshold.t(),
          variant_rollup_keys: [String.t()],
          page_categories: [String.t()],
          search_mode: Google.Cloud.Retail.V2alpha.SearchRequest.SearchMode.t()
        }

  defstruct placement: "",
            branch: "",
            query: "",
            visitor_id: "",
            user_info: nil,
            page_size: 0,
            page_token: "",
            offset: 0,
            filter: "",
            canonical_filter: "",
            order_by: "",
            facet_specs: [],
            dynamic_facet_spec: nil,
            boost_spec: nil,
            query_expansion_spec: nil,
            relevance_threshold: :RELEVANCE_THRESHOLD_UNSPECIFIED,
            variant_rollup_keys: [],
            page_categories: [],
            search_mode: :SEARCH_MODE_UNSPECIFIED

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
    json_name: "dynamicFacetSpec"

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
end
defmodule Google.Cloud.Retail.V2alpha.SearchResponse.SearchResult.MatchingVariantFieldsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.FieldMask
end
defmodule Google.Cloud.Retail.V2alpha.SearchResponse.SearchResult.VariantRollupValuesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end
defmodule Google.Cloud.Retail.V2alpha.SearchResponse.SearchResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          product: Google.Cloud.Retail.V2alpha.Product.t() | nil,
          matching_variant_count: integer,
          matching_variant_fields: %{String.t() => Google.Protobuf.FieldMask.t() | nil},
          variant_rollup_values: %{String.t() => Google.Protobuf.Value.t() | nil}
        }

  defstruct id: "",
            product: nil,
            matching_variant_count: 0,
            matching_variant_fields: %{},
            variant_rollup_values: %{}

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
end
defmodule Google.Cloud.Retail.V2alpha.SearchResponse.Facet.FacetValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          facet_value:
            {:value, String.t()} | {:interval, Google.Cloud.Retail.V2alpha.Interval.t() | nil},
          count: integer
        }

  defstruct facet_value: nil,
            count: 0

  oneof :facet_value, 0

  field :value, 1, type: :string, oneof: 0
  field :interval, 2, type: Google.Cloud.Retail.V2alpha.Interval, oneof: 0
  field :count, 3, type: :int64
end
defmodule Google.Cloud.Retail.V2alpha.SearchResponse.Facet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          values: [Google.Cloud.Retail.V2alpha.SearchResponse.Facet.FacetValue.t()],
          dynamic_facet: boolean
        }

  defstruct key: "",
            values: [],
            dynamic_facet: false

  field :key, 1, type: :string

  field :values, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.SearchResponse.Facet.FacetValue

  field :dynamic_facet, 3, type: :bool, json_name: "dynamicFacet"
end
defmodule Google.Cloud.Retail.V2alpha.SearchResponse.QueryExpansionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          expanded_query: boolean,
          pinned_result_count: integer
        }

  defstruct expanded_query: false,
            pinned_result_count: 0

  field :expanded_query, 1, type: :bool, json_name: "expandedQuery"
  field :pinned_result_count, 2, type: :int64, json_name: "pinnedResultCount"
end
defmodule Google.Cloud.Retail.V2alpha.SearchResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Cloud.Retail.V2alpha.SearchResponse.SearchResult.t()],
          facets: [Google.Cloud.Retail.V2alpha.SearchResponse.Facet.t()],
          total_size: integer,
          corrected_query: String.t(),
          attribution_token: String.t(),
          next_page_token: String.t(),
          query_expansion_info:
            Google.Cloud.Retail.V2alpha.SearchResponse.QueryExpansionInfo.t() | nil,
          redirect_uri: String.t()
        }

  defstruct results: [],
            facets: [],
            total_size: 0,
            corrected_query: "",
            attribution_token: "",
            next_page_token: "",
            query_expansion_info: nil,
            redirect_uri: ""

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
end
defmodule Google.Cloud.Retail.V2alpha.SearchService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.retail.v2alpha.SearchService"

  rpc :Search,
      Google.Cloud.Retail.V2alpha.SearchRequest,
      Google.Cloud.Retail.V2alpha.SearchResponse
end

defmodule Google.Cloud.Retail.V2alpha.SearchService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Retail.V2alpha.SearchService.Service
end
