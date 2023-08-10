defmodule Google.Ads.Googleads.V14.Resources.AssetGroupAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :asset_group, 2, type: :string, json_name: "assetGroup", deprecated: false
  field :asset, 3, type: :string, deprecated: false

  field :field_type, 4,
    type: Google.Ads.Googleads.V14.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "fieldType",
    enum: true

  field :status, 5,
    type: Google.Ads.Googleads.V14.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true

  field :primary_status, 8,
    type: Google.Ads.Googleads.V14.Enums.AssetLinkPrimaryStatusEnum.AssetLinkPrimaryStatus,
    json_name: "primaryStatus",
    enum: true,
    deprecated: false

  field :primary_status_reasons, 9,
    repeated: true,
    type:
      Google.Ads.Googleads.V14.Enums.AssetLinkPrimaryStatusReasonEnum.AssetLinkPrimaryStatusReason,
    json_name: "primaryStatusReasons",
    enum: true,
    deprecated: false

  field :primary_status_details, 10,
    repeated: true,
    type: Google.Ads.Googleads.V14.Common.AssetLinkPrimaryStatusDetails,
    json_name: "primaryStatusDetails",
    deprecated: false

  field :performance_label, 6,
    type: Google.Ads.Googleads.V14.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel,
    json_name: "performanceLabel",
    enum: true,
    deprecated: false

  field :policy_summary, 7,
    type: Google.Ads.Googleads.V14.Common.PolicySummary,
    json_name: "policySummary",
    deprecated: false
end