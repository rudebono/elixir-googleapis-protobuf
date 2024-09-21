defmodule Google.Ads.Googleads.V17.Errors.AssetGroupErrorEnum.AssetGroupError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DUPLICATE_NAME, 2
  field :CANNOT_ADD_ASSET_GROUP_FOR_CAMPAIGN_TYPE, 3
  field :NOT_ENOUGH_HEADLINE_ASSET, 4
  field :NOT_ENOUGH_LONG_HEADLINE_ASSET, 5
  field :NOT_ENOUGH_DESCRIPTION_ASSET, 6
  field :NOT_ENOUGH_BUSINESS_NAME_ASSET, 7
  field :NOT_ENOUGH_MARKETING_IMAGE_ASSET, 8
  field :NOT_ENOUGH_SQUARE_MARKETING_IMAGE_ASSET, 9
  field :NOT_ENOUGH_LOGO_ASSET, 10
  field :FINAL_URL_SHOPPING_MERCHANT_HOME_PAGE_URL_DOMAINS_DIFFER, 11
  field :PATH1_REQUIRED_WHEN_PATH2_IS_SET, 12
  field :SHORT_DESCRIPTION_REQUIRED, 13
  field :FINAL_URL_REQUIRED, 14
  field :FINAL_URL_CONTAINS_INVALID_DOMAIN_NAME, 15
  field :AD_CUSTOMIZER_NOT_SUPPORTED, 16
  field :CANNOT_MUTATE_ASSET_GROUP_FOR_REMOVED_CAMPAIGN, 17
end

defmodule Google.Ads.Googleads.V17.Errors.AssetGroupErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end