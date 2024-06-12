defmodule Google.Ads.Googleads.V17.Common.AssetUsage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :asset, 1, type: :string

  field :served_asset_field_type, 2,
    type: Google.Ads.Googleads.V17.Enums.ServedAssetFieldTypeEnum.ServedAssetFieldType,
    json_name: "servedAssetFieldType",
    enum: true
end