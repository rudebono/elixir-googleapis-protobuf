defmodule Google.Ads.Googleads.V10.Errors.AssetGroupErrorEnum.AssetGroupError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :DUPLICATE_NAME
          | :CANNOT_ADD_ASSET_GROUP_FOR_CAMPAIGN_TYPE
          | :NOT_ENOUGH_HEADLINE_ASSET
          | :NOT_ENOUGH_LONG_HEADLINE_ASSET
          | :NOT_ENOUGH_DESCRIPTION_ASSET
          | :NOT_ENOUGH_BUSINESS_NAME_ASSET
          | :NOT_ENOUGH_MARKETING_IMAGE_ASSET
          | :NOT_ENOUGH_SQUARE_MARKETING_IMAGE_ASSET
          | :NOT_ENOUGH_LOGO_ASSET
          | :FINAL_URL_SHOPPING_MERCHANT_HOME_PAGE_URL_DOMAINS_DIFFER

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
end
defmodule Google.Ads.Googleads.V10.Errors.AssetGroupErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
