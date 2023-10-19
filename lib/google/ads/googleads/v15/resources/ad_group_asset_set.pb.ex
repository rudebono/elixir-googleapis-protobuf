defmodule Google.Ads.Googleads.V15.Resources.AdGroupAssetSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :ad_group, 2, type: :string, json_name: "adGroup", deprecated: false
  field :asset_set, 3, type: :string, json_name: "assetSet", deprecated: false

  field :status, 4,
    type: Google.Ads.Googleads.V15.Enums.AssetSetLinkStatusEnum.AssetSetLinkStatus,
    enum: true,
    deprecated: false
end