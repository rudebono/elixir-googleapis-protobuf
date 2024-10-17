defmodule Google.Ads.Googleads.V18.Resources.CustomerAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :asset, 2, type: :string, deprecated: false

  field :field_type, 3,
    type: Google.Ads.Googleads.V18.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "fieldType",
    enum: true,
    deprecated: false

  field :source, 5,
    type: Google.Ads.Googleads.V18.Enums.AssetSourceEnum.AssetSource,
    enum: true,
    deprecated: false

  field :status, 4,
    type: Google.Ads.Googleads.V18.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true

  field :primary_status, 6,
    type: Google.Ads.Googleads.V18.Enums.AssetLinkPrimaryStatusEnum.AssetLinkPrimaryStatus,
    json_name: "primaryStatus",
    enum: true,
    deprecated: false

  field :primary_status_details, 7,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.AssetLinkPrimaryStatusDetails,
    json_name: "primaryStatusDetails",
    deprecated: false

  field :primary_status_reasons, 8,
    repeated: true,
    type:
      Google.Ads.Googleads.V18.Enums.AssetLinkPrimaryStatusReasonEnum.AssetLinkPrimaryStatusReason,
    json_name: "primaryStatusReasons",
    enum: true,
    deprecated: false
end