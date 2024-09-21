defmodule Google.Ads.Googleads.V16.Resources.AdGroupAdAssetCombinationView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :served_assets, 2,
    repeated: true,
    type: Google.Ads.Googleads.V16.Common.AssetUsage,
    json_name: "servedAssets",
    deprecated: false

  field :enabled, 3, proto3_optional: true, type: :bool, deprecated: false
end