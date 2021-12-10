defmodule Google.Ads.Googleads.V9.Resources.AssetSetAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          asset_set: String.t(),
          asset: String.t(),
          status: Google.Ads.Googleads.V9.Enums.AssetSetAssetStatusEnum.AssetSetAssetStatus.t()
        }

  defstruct resource_name: "",
            asset_set: "",
            asset: "",
            status: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :asset_set, 2, type: :string, json_name: "assetSet", deprecated: false
  field :asset, 3, type: :string, deprecated: false

  field :status, 4,
    type: Google.Ads.Googleads.V9.Enums.AssetSetAssetStatusEnum.AssetSetAssetStatus,
    enum: true,
    deprecated: false
end
