defmodule Google.Ads.Googleads.V11.Resources.AssetSetAsset do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :asset_set, 2, type: :string, json_name: "assetSet", deprecated: false
  field :asset, 3, type: :string, deprecated: false

  field :status, 4,
    type: Google.Ads.Googleads.V11.Enums.AssetSetAssetStatusEnum.AssetSetAssetStatus,
    enum: true,
    deprecated: false
end