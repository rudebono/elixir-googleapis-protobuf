defmodule Google.Ads.Googleads.V9.Resources.CustomerAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          asset: String.t(),
          field_type: Google.Ads.Googleads.V9.Enums.AssetFieldTypeEnum.AssetFieldType.t(),
          status: Google.Ads.Googleads.V9.Enums.AssetLinkStatusEnum.AssetLinkStatus.t()
        }

  defstruct [:resource_name, :asset, :field_type, :status]

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :asset, 2, type: :string

  field :field_type, 3,
    type: Google.Ads.Googleads.V9.Enums.AssetFieldTypeEnum.AssetFieldType,
    enum: true,
    json_name: "fieldType"

  field :status, 4,
    type: Google.Ads.Googleads.V9.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true

  def transform_module(), do: nil
end