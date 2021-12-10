defmodule Google.Ads.Googleads.V8.Resources.AdGroupAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group: String.t(),
          asset: String.t(),
          field_type: Google.Ads.Googleads.V8.Enums.AssetFieldTypeEnum.AssetFieldType.t(),
          status: Google.Ads.Googleads.V8.Enums.AssetLinkStatusEnum.AssetLinkStatus.t()
        }

  defstruct resource_name: "",
            ad_group: "",
            asset: "",
            field_type: :UNSPECIFIED,
            status: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :ad_group, 2, type: :string, json_name: "adGroup", deprecated: false
  field :asset, 3, type: :string, deprecated: false

  field :field_type, 4,
    type: Google.Ads.Googleads.V8.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "fieldType",
    enum: true,
    deprecated: false

  field :status, 5,
    type: Google.Ads.Googleads.V8.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true
end
