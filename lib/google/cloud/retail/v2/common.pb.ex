defmodule Google.Cloud.Retail.V2.AttributeConfigLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ATTRIBUTE_CONFIG_LEVEL_UNSPECIFIED, 0
  field :PRODUCT_LEVEL_ATTRIBUTE_CONFIG, 1
  field :CATALOG_LEVEL_ATTRIBUTE_CONFIG, 2
end

defmodule Google.Cloud.Retail.V2.SolutionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SOLUTION_TYPE_UNSPECIFIED, 0
  field :SOLUTION_TYPE_RECOMMENDATION, 1
  field :SOLUTION_TYPE_SEARCH, 2
end

defmodule Google.Cloud.Retail.V2.RecommendationsFilteringOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RECOMMENDATIONS_FILTERING_OPTION_UNSPECIFIED, 0
  field :RECOMMENDATIONS_FILTERING_DISABLED, 1
  field :RECOMMENDATIONS_FILTERING_ENABLED, 3
end

defmodule Google.Cloud.Retail.V2.SearchSolutionUseCase do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SEARCH_SOLUTION_USE_CASE_UNSPECIFIED, 0
  field :SEARCH_SOLUTION_USE_CASE_SEARCH, 1
  field :SEARCH_SOLUTION_USE_CASE_BROWSE, 2
end

defmodule Google.Cloud.Retail.V2.Condition.QueryTerm do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :value, 1, type: :string
  field :full_match, 2, type: :bool, json_name: "fullMatch"
end

defmodule Google.Cloud.Retail.V2.Condition.TimeRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Retail.V2.Condition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :query_terms, 1,
    repeated: true,
    type: Google.Cloud.Retail.V2.Condition.QueryTerm,
    json_name: "queryTerms"

  field :active_time_range, 3,
    repeated: true,
    type: Google.Cloud.Retail.V2.Condition.TimeRange,
    json_name: "activeTimeRange"
end

defmodule Google.Cloud.Retail.V2.Rule.BoostAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :boost, 1, type: :float
  field :products_filter, 2, type: :string, json_name: "productsFilter"
end

defmodule Google.Cloud.Retail.V2.Rule.FilterAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :filter, 1, type: :string
end

defmodule Google.Cloud.Retail.V2.Rule.RedirectAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :redirect_uri, 1, type: :string, json_name: "redirectUri"
end

defmodule Google.Cloud.Retail.V2.Rule.TwowaySynonymsAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :synonyms, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Retail.V2.Rule.OnewaySynonymsAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :query_terms, 3, repeated: true, type: :string, json_name: "queryTerms"
  field :synonyms, 4, repeated: true, type: :string
  field :oneway_terms, 2, repeated: true, type: :string, json_name: "onewayTerms"
end

defmodule Google.Cloud.Retail.V2.Rule.DoNotAssociateAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :query_terms, 2, repeated: true, type: :string, json_name: "queryTerms"

  field :do_not_associate_terms, 3,
    repeated: true,
    type: :string,
    json_name: "doNotAssociateTerms"

  field :terms, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Retail.V2.Rule.ReplacementAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :query_terms, 2, repeated: true, type: :string, json_name: "queryTerms"
  field :replacement_term, 3, type: :string, json_name: "replacementTerm"
  field :term, 1, type: :string
end

defmodule Google.Cloud.Retail.V2.Rule.IgnoreAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ignore_terms, 1, repeated: true, type: :string, json_name: "ignoreTerms"
end

defmodule Google.Cloud.Retail.V2.Rule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :action, 0

  field :boost_action, 2,
    type: Google.Cloud.Retail.V2.Rule.BoostAction,
    json_name: "boostAction",
    oneof: 0

  field :redirect_action, 3,
    type: Google.Cloud.Retail.V2.Rule.RedirectAction,
    json_name: "redirectAction",
    oneof: 0

  field :oneway_synonyms_action, 6,
    type: Google.Cloud.Retail.V2.Rule.OnewaySynonymsAction,
    json_name: "onewaySynonymsAction",
    oneof: 0

  field :do_not_associate_action, 7,
    type: Google.Cloud.Retail.V2.Rule.DoNotAssociateAction,
    json_name: "doNotAssociateAction",
    oneof: 0

  field :replacement_action, 8,
    type: Google.Cloud.Retail.V2.Rule.ReplacementAction,
    json_name: "replacementAction",
    oneof: 0

  field :ignore_action, 9,
    type: Google.Cloud.Retail.V2.Rule.IgnoreAction,
    json_name: "ignoreAction",
    oneof: 0

  field :filter_action, 10,
    type: Google.Cloud.Retail.V2.Rule.FilterAction,
    json_name: "filterAction",
    oneof: 0

  field :twoway_synonyms_action, 11,
    type: Google.Cloud.Retail.V2.Rule.TwowaySynonymsAction,
    json_name: "twowaySynonymsAction",
    oneof: 0

  field :condition, 1, type: Google.Cloud.Retail.V2.Condition, deprecated: false
end

defmodule Google.Cloud.Retail.V2.Audience do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :genders, 1, repeated: true, type: :string
  field :age_groups, 2, repeated: true, type: :string, json_name: "ageGroups"
end

defmodule Google.Cloud.Retail.V2.ColorInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :color_families, 1, repeated: true, type: :string, json_name: "colorFamilies"
  field :colors, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Retail.V2.CustomAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text, 1, repeated: true, type: :string
  field :numbers, 2, repeated: true, type: :double
  field :searchable, 3, proto3_optional: true, type: :bool, deprecated: true
  field :indexable, 4, proto3_optional: true, type: :bool, deprecated: true
end

defmodule Google.Cloud.Retail.V2.FulfillmentInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: :string
  field :place_ids, 2, repeated: true, type: :string, json_name: "placeIds"
end

defmodule Google.Cloud.Retail.V2.Image do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
  field :height, 2, type: :int32
  field :width, 3, type: :int32
end

defmodule Google.Cloud.Retail.V2.Interval do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :min, 0

  oneof :max, 1

  field :minimum, 1, type: :double, oneof: 0
  field :exclusive_minimum, 2, type: :double, json_name: "exclusiveMinimum", oneof: 0
  field :maximum, 3, type: :double, oneof: 1
  field :exclusive_maximum, 4, type: :double, json_name: "exclusiveMaximum", oneof: 1
end

defmodule Google.Cloud.Retail.V2.PriceInfo.PriceRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :price, 1, type: Google.Cloud.Retail.V2.Interval
  field :original_price, 2, type: Google.Cloud.Retail.V2.Interval, json_name: "originalPrice"
end

defmodule Google.Cloud.Retail.V2.PriceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :currency_code, 1, type: :string, json_name: "currencyCode"
  field :price, 2, type: :float
  field :original_price, 3, type: :float, json_name: "originalPrice"
  field :cost, 4, type: :float
  field :price_effective_time, 5, type: Google.Protobuf.Timestamp, json_name: "priceEffectiveTime"
  field :price_expire_time, 6, type: Google.Protobuf.Timestamp, json_name: "priceExpireTime"

  field :price_range, 7,
    type: Google.Cloud.Retail.V2.PriceInfo.PriceRange,
    json_name: "priceRange",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2.Rating do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rating_count, 1, type: :int32, json_name: "ratingCount"
  field :average_rating, 2, type: :float, json_name: "averageRating"
  field :rating_histogram, 3, repeated: true, type: :int32, json_name: "ratingHistogram"
end

defmodule Google.Cloud.Retail.V2.UserInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :user_id, 1, type: :string, json_name: "userId"
  field :ip_address, 2, type: :string, json_name: "ipAddress"
  field :user_agent, 3, type: :string, json_name: "userAgent"
  field :direct_user_request, 4, type: :bool, json_name: "directUserRequest"
end

defmodule Google.Cloud.Retail.V2.LocalInventory.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Retail.V2.CustomAttribute
end

defmodule Google.Cloud.Retail.V2.LocalInventory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :place_id, 1, type: :string, json_name: "placeId"
  field :price_info, 2, type: Google.Cloud.Retail.V2.PriceInfo, json_name: "priceInfo"

  field :attributes, 3,
    repeated: true,
    type: Google.Cloud.Retail.V2.LocalInventory.AttributesEntry,
    map: true

  field :fulfillment_types, 4,
    repeated: true,
    type: :string,
    json_name: "fulfillmentTypes",
    deprecated: false
end