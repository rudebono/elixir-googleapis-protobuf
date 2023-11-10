defmodule Google.Ads.Searchads360.V0.Resources.AssetGroupTopCombinationView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :asset_group_top_combinations, 2,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Resources.AssetGroupAssetCombinationData,
    json_name: "assetGroupTopCombinations",
    deprecated: false
end

defmodule Google.Ads.Searchads360.V0.Resources.AssetGroupAssetCombinationData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :asset_combination_served_assets, 1,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Common.AssetUsage,
    json_name: "assetCombinationServedAssets",
    deprecated: false
end