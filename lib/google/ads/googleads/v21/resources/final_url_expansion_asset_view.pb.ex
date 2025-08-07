defmodule Google.Ads.Googleads.V21.Resources.FinalUrlExpansionAssetView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :level, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 2, proto3_optional: true, type: :string, deprecated: false
  field :asset, 3, proto3_optional: true, type: :string, deprecated: false

  field :field_type, 4,
    type: Google.Ads.Googleads.V21.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "fieldType",
    enum: true,
    deprecated: false

  field :status, 5,
    proto3_optional: true,
    type: Google.Ads.Googleads.V21.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true,
    deprecated: false

  field :final_url, 6, type: :string, json_name: "finalUrl", deprecated: false
  field :ad_group, 7, type: :string, json_name: "adGroup", oneof: 0, deprecated: false
  field :asset_group, 8, type: :string, json_name: "assetGroup", oneof: 0, deprecated: false
end
