defmodule Google.Ads.Googleads.V17.Resources.AssetSetTypeView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :asset_set_type, 3,
    type: Google.Ads.Googleads.V17.Enums.AssetSetTypeEnum.AssetSetType,
    json_name: "assetSetType",
    enum: true,
    deprecated: false
end
