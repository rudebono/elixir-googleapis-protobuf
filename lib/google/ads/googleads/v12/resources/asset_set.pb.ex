defmodule Google.Ads.Googleads.V12.Resources.AssetSet.MerchantCenterFeed do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :merchant_id, 1, type: :int64, json_name: "merchantId", deprecated: false

  field :feed_label, 2,
    proto3_optional: true,
    type: :string,
    json_name: "feedLabel",
    deprecated: false
end

defmodule Google.Ads.Googleads.V12.Resources.AssetSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :asset_set_source, 0

  field :id, 6, type: :int64, deprecated: false
  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :name, 2, type: :string, deprecated: false

  field :type, 3,
    type: Google.Ads.Googleads.V12.Enums.AssetSetTypeEnum.AssetSetType,
    enum: true,
    deprecated: false

  field :status, 4,
    type: Google.Ads.Googleads.V12.Enums.AssetSetStatusEnum.AssetSetStatus,
    enum: true,
    deprecated: false

  field :merchant_center_feed, 5,
    type: Google.Ads.Googleads.V12.Resources.AssetSet.MerchantCenterFeed,
    json_name: "merchantCenterFeed"

  field :location_group_parent_asset_set_id, 10,
    type: :int64,
    json_name: "locationGroupParentAssetSetId",
    deprecated: false

  field :location_set, 7,
    type: Google.Ads.Googleads.V12.Common.LocationSet,
    json_name: "locationSet",
    oneof: 0

  field :business_profile_location_group, 8,
    type: Google.Ads.Googleads.V12.Common.BusinessProfileLocationGroup,
    json_name: "businessProfileLocationGroup",
    oneof: 0

  field :chain_location_group, 9,
    type: Google.Ads.Googleads.V12.Common.ChainLocationGroup,
    json_name: "chainLocationGroup",
    oneof: 0
end