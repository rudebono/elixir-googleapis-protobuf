defmodule Google.Ads.Googleads.V9.Resources.CampaignAssetSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign: String.t(),
          asset_set: String.t(),
          status: Google.Ads.Googleads.V9.Enums.AssetSetLinkStatusEnum.AssetSetLinkStatus.t()
        }

  defstruct [:resource_name, :campaign, :asset_set, :status]

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :campaign, 2, type: :string
  field :asset_set, 3, type: :string, json_name: "assetSet"

  field :status, 4,
    type: Google.Ads.Googleads.V9.Enums.AssetSetLinkStatusEnum.AssetSetLinkStatus,
    enum: true

  def transform_module(), do: nil
end
