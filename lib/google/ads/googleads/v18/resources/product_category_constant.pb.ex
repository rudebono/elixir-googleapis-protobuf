defmodule Google.Ads.Googleads.V18.Resources.ProductCategoryConstant.ProductCategoryLocalization do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :region_code, 1, type: :string, json_name: "regionCode", deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false
  field :value, 3, type: :string, deprecated: false
end

defmodule Google.Ads.Googleads.V18.Resources.ProductCategoryConstant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :category_id, 2, type: :int64, json_name: "categoryId", deprecated: false

  field :product_category_constant_parent, 3,
    proto3_optional: true,
    type: :string,
    json_name: "productCategoryConstantParent",
    deprecated: false

  field :level, 4,
    type: Google.Ads.Googleads.V18.Enums.ProductCategoryLevelEnum.ProductCategoryLevel,
    enum: true,
    deprecated: false

  field :state, 5,
    type: Google.Ads.Googleads.V18.Enums.ProductCategoryStateEnum.ProductCategoryState,
    enum: true,
    deprecated: false

  field :localizations, 6,
    repeated: true,
    type: Google.Ads.Googleads.V18.Resources.ProductCategoryConstant.ProductCategoryLocalization,
    deprecated: false
end