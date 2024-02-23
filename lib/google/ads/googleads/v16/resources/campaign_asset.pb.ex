defmodule Google.Ads.Googleads.V16.Resources.CampaignAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 6, proto3_optional: true, type: :string, deprecated: false
  field :asset, 7, proto3_optional: true, type: :string, deprecated: false

  field :field_type, 4,
    type: Google.Ads.Googleads.V16.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "fieldType",
    enum: true,
    deprecated: false

  field :source, 8,
    type: Google.Ads.Googleads.V16.Enums.AssetSourceEnum.AssetSource,
    enum: true,
    deprecated: false

  field :status, 5,
    type: Google.Ads.Googleads.V16.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true

  field :primary_status, 9,
    type: Google.Ads.Googleads.V16.Enums.AssetLinkPrimaryStatusEnum.AssetLinkPrimaryStatus,
    json_name: "primaryStatus",
    enum: true,
    deprecated: false

  field :primary_status_details, 10,
    repeated: true,
    type: Google.Ads.Googleads.V16.Common.AssetLinkPrimaryStatusDetails,
    json_name: "primaryStatusDetails",
    deprecated: false

  field :primary_status_reasons, 11,
    repeated: true,
    type:
      Google.Ads.Googleads.V16.Enums.AssetLinkPrimaryStatusReasonEnum.AssetLinkPrimaryStatusReason,
    json_name: "primaryStatusReasons",
    enum: true,
    deprecated: false
end