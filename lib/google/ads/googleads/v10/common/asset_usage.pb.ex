defmodule Google.Ads.Googleads.V10.Common.AssetUsage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset: String.t(),
          served_asset_field_type:
            Google.Ads.Googleads.V10.Enums.ServedAssetFieldTypeEnum.ServedAssetFieldType.t()
        }

  defstruct asset: "",
            served_asset_field_type: :UNSPECIFIED

  field :asset, 1, type: :string

  field :served_asset_field_type, 2,
    type: Google.Ads.Googleads.V10.Enums.ServedAssetFieldTypeEnum.ServedAssetFieldType,
    json_name: "servedAssetFieldType",
    enum: true
end
