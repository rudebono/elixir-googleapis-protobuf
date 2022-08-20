defmodule Google.Ads.Googleads.V9.Resources.AssetSet.MerchantCenterFeed do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :merchant_id, 1, type: :int64, json_name: "merchantId", deprecated: false

  field :feed_label, 2,
    proto3_optional: true,
    type: :string,
    json_name: "feedLabel",
    deprecated: false
end

defmodule Google.Ads.Googleads.V9.Resources.AssetSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :name, 2, type: :string, deprecated: false

  field :type, 3,
    type: Google.Ads.Googleads.V9.Enums.AssetSetTypeEnum.AssetSetType,
    enum: true,
    deprecated: false

  field :status, 4,
    type: Google.Ads.Googleads.V9.Enums.AssetSetStatusEnum.AssetSetStatus,
    enum: true,
    deprecated: false

  field :merchant_center_feed, 5,
    type: Google.Ads.Googleads.V9.Resources.AssetSet.MerchantCenterFeed,
    json_name: "merchantCenterFeed"
end