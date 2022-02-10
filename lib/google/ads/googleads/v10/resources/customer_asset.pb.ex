defmodule Google.Ads.Googleads.V10.Resources.CustomerAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          asset: String.t(),
          field_type: Google.Ads.Googleads.V10.Enums.AssetFieldTypeEnum.AssetFieldType.t(),
          status: Google.Ads.Googleads.V10.Enums.AssetLinkStatusEnum.AssetLinkStatus.t()
        }

  defstruct resource_name: "",
            asset: "",
            field_type: :UNSPECIFIED,
            status: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :asset, 2, type: :string, deprecated: false

  field :field_type, 3,
    type: Google.Ads.Googleads.V10.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "fieldType",
    enum: true,
    deprecated: false

  field :status, 4,
    type: Google.Ads.Googleads.V10.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true
end
