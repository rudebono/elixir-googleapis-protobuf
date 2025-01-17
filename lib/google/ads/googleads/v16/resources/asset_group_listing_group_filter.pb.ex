defmodule Google.Ads.Googleads.V16.Resources.AssetGroupListingGroupFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :asset_group, 2, type: :string, json_name: "assetGroup", deprecated: false
  field :id, 3, type: :int64, deprecated: false

  field :type, 4,
    type: Google.Ads.Googleads.V16.Enums.ListingGroupFilterTypeEnum.ListingGroupFilterType,
    enum: true,
    deprecated: false

  field :listing_source, 9,
    type:
      Google.Ads.Googleads.V16.Enums.ListingGroupFilterListingSourceEnum.ListingGroupFilterListingSource,
    json_name: "listingSource",
    enum: true,
    deprecated: false

  field :case_value, 6,
    type: Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimension,
    json_name: "caseValue"

  field :parent_listing_group_filter, 7,
    type: :string,
    json_name: "parentListingGroupFilter",
    deprecated: false

  field :path, 8,
    type: Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimensionPath,
    deprecated: false
end

defmodule Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimensionPath do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :dimensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimension,
    deprecated: false
end

defmodule Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimension.ProductCategory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :category_id, 1, proto3_optional: true, type: :int64, json_name: "categoryId"

  field :level, 2,
    type:
      Google.Ads.Googleads.V16.Enums.ListingGroupFilterProductCategoryLevelEnum.ListingGroupFilterProductCategoryLevel,
    enum: true
end

defmodule Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimension.ProductBrand do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :value, 1, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimension.ProductChannel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :channel, 1,
    type:
      Google.Ads.Googleads.V16.Enums.ListingGroupFilterProductChannelEnum.ListingGroupFilterProductChannel,
    enum: true
end

defmodule Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimension.ProductCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :condition, 1,
    type:
      Google.Ads.Googleads.V16.Enums.ListingGroupFilterProductConditionEnum.ListingGroupFilterProductCondition,
    enum: true
end

defmodule Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimension.ProductCustomAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :value, 1, proto3_optional: true, type: :string

  field :index, 2,
    type:
      Google.Ads.Googleads.V16.Enums.ListingGroupFilterCustomAttributeIndexEnum.ListingGroupFilterCustomAttributeIndex,
    enum: true
end

defmodule Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimension.ProductItemId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :value, 1, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimension.ProductType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :value, 1, proto3_optional: true, type: :string

  field :level, 2,
    type:
      Google.Ads.Googleads.V16.Enums.ListingGroupFilterProductTypeLevelEnum.ListingGroupFilterProductTypeLevel,
    enum: true
end

defmodule Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimension.Webpage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :conditions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimension.WebpageCondition
end

defmodule Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimension.WebpageCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :condition, 0

  field :custom_label, 1, type: :string, json_name: "customLabel", oneof: 0
  field :url_contains, 2, type: :string, json_name: "urlContains", oneof: 0
end

defmodule Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :dimension, 0

  field :product_category, 10,
    type: Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimension.ProductCategory,
    json_name: "productCategory",
    oneof: 0

  field :product_brand, 2,
    type: Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimension.ProductBrand,
    json_name: "productBrand",
    oneof: 0

  field :product_channel, 3,
    type: Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimension.ProductChannel,
    json_name: "productChannel",
    oneof: 0

  field :product_condition, 4,
    type: Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimension.ProductCondition,
    json_name: "productCondition",
    oneof: 0

  field :product_custom_attribute, 5,
    type: Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimension.ProductCustomAttribute,
    json_name: "productCustomAttribute",
    oneof: 0

  field :product_item_id, 6,
    type: Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimension.ProductItemId,
    json_name: "productItemId",
    oneof: 0

  field :product_type, 7,
    type: Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimension.ProductType,
    json_name: "productType",
    oneof: 0

  field :webpage, 9,
    type: Google.Ads.Googleads.V16.Resources.ListingGroupFilterDimension.Webpage,
    oneof: 0
end
