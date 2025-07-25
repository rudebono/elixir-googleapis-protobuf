defmodule Google.Ads.Googleads.V18.Resources.ChannelAggregateAssetView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :advertising_channel_type, 2,
    proto3_optional: true,
    type: Google.Ads.Googleads.V18.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType,
    json_name: "advertisingChannelType",
    enum: true,
    deprecated: false

  field :asset, 3, proto3_optional: true, type: :string, deprecated: false

  field :asset_source, 4,
    proto3_optional: true,
    type: Google.Ads.Googleads.V18.Enums.AssetSourceEnum.AssetSource,
    json_name: "assetSource",
    enum: true,
    deprecated: false

  field :field_type, 5,
    proto3_optional: true,
    type: Google.Ads.Googleads.V18.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "fieldType",
    enum: true,
    deprecated: false
end
