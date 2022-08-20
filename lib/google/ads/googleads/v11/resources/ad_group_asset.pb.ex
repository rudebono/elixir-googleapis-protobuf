defmodule Google.Ads.Googleads.V11.Resources.AdGroupAsset do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :ad_group, 2, type: :string, json_name: "adGroup", deprecated: false
  field :asset, 3, type: :string, deprecated: false

  field :field_type, 4,
    type: Google.Ads.Googleads.V11.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "fieldType",
    enum: true,
    deprecated: false

  field :source, 6,
    type: Google.Ads.Googleads.V11.Enums.AssetSourceEnum.AssetSource,
    enum: true,
    deprecated: false

  field :status, 5,
    type: Google.Ads.Googleads.V11.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true
end