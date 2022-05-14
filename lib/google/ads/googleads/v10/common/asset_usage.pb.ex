defmodule Google.Ads.Googleads.V10.Common.AssetUsage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :asset, 1, type: :string

  field :served_asset_field_type, 2,
    type: Google.Ads.Googleads.V10.Enums.ServedAssetFieldTypeEnum.ServedAssetFieldType,
    json_name: "servedAssetFieldType",
    enum: true
end
