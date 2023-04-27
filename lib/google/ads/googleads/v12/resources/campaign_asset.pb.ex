defmodule Google.Ads.Googleads.V12.Resources.CampaignAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 6, proto3_optional: true, type: :string, deprecated: false
  field :asset, 7, proto3_optional: true, type: :string, deprecated: false

  field :field_type, 4,
    type: Google.Ads.Googleads.V12.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "fieldType",
    enum: true,
    deprecated: false

  field :source, 8,
    type: Google.Ads.Googleads.V12.Enums.AssetSourceEnum.AssetSource,
    enum: true,
    deprecated: false

  field :status, 5,
    type: Google.Ads.Googleads.V12.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true
end