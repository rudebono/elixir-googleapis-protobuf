defmodule Google.Ads.Googleads.V17.Errors.AssetGroupListingGroupFilterErrorEnum.AssetGroupListingGroupFilterError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :TREE_TOO_DEEP, 2
  field :UNIT_CANNOT_HAVE_CHILDREN, 3
  field :SUBDIVISION_MUST_HAVE_EVERYTHING_ELSE_CHILD, 4
  field :DIFFERENT_DIMENSION_TYPE_BETWEEN_SIBLINGS, 5
  field :SAME_DIMENSION_VALUE_BETWEEN_SIBLINGS, 6
  field :SAME_DIMENSION_TYPE_BETWEEN_ANCESTORS, 7
  field :MULTIPLE_ROOTS, 8
  field :INVALID_DIMENSION_VALUE, 9
  field :MUST_REFINE_HIERARCHICAL_PARENT_TYPE, 10
  field :INVALID_PRODUCT_BIDDING_CATEGORY, 11
  field :CHANGING_CASE_VALUE_WITH_CHILDREN, 12
  field :SUBDIVISION_HAS_CHILDREN, 13
  field :CANNOT_REFINE_HIERARCHICAL_EVERYTHING_ELSE, 14
  field :DIMENSION_TYPE_NOT_ALLOWED, 15
  field :DUPLICATE_WEBPAGE_FILTER_UNDER_ASSET_GROUP, 16
  field :LISTING_SOURCE_NOT_ALLOWED, 17
  field :FILTER_EXCLUSION_NOT_ALLOWED, 18
  field :MULTIPLE_LISTING_SOURCES, 19
  field :MULTIPLE_WEBPAGE_CONDITION_TYPES_NOT_ALLOWED, 20
  field :MULTIPLE_WEBPAGE_TYPES_PER_ASSET_GROUP, 21
  field :PAGE_FEED_FILTER_HAS_PARENT, 22
  field :MULTIPLE_OPERATIONS_ON_ONE_NODE, 23
end

defmodule Google.Ads.Googleads.V17.Errors.AssetGroupListingGroupFilterErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end