defmodule Google.Ads.Googleads.V9.Resources.AssetSetAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          asset_set: String.t(),
          asset: String.t(),
          status: Google.Ads.Googleads.V9.Enums.AssetSetAssetStatusEnum.AssetSetAssetStatus.t()
        }

  defstruct [:resource_name, :asset_set, :asset, :status]

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :asset_set, 2, type: :string, json_name: "assetSet"
  field :asset, 3, type: :string

  field :status, 4,
    type: Google.Ads.Googleads.V9.Enums.AssetSetAssetStatusEnum.AssetSetAssetStatus,
    enum: true

  def transform_module(), do: nil
end
