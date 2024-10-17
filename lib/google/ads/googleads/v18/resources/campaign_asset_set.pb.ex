defmodule Google.Ads.Googleads.V18.Resources.CampaignAssetSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 2, type: :string, deprecated: false
  field :asset_set, 3, type: :string, json_name: "assetSet", deprecated: false

  field :status, 4,
    type: Google.Ads.Googleads.V18.Enums.AssetSetLinkStatusEnum.AssetSetLinkStatus,
    enum: true,
    deprecated: false
end