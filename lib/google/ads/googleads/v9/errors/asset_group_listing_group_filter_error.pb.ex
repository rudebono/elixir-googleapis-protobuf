defmodule Google.Ads.Googleads.V9.Errors.AssetGroupListingGroupFilterErrorEnum.AssetGroupListingGroupFilterError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
end
defmodule Google.Ads.Googleads.V9.Errors.AssetGroupListingGroupFilterErrorEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
