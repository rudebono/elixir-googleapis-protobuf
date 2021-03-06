defmodule Google.Ads.Googleads.V10.Resources.AssetGroupAsset do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :asset_group, 2, type: :string, json_name: "assetGroup", deprecated: false
  field :asset, 3, type: :string, deprecated: false

  field :field_type, 4,
    type: Google.Ads.Googleads.V10.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "fieldType",
    enum: true

  field :status, 5,
    type: Google.Ads.Googleads.V10.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true

  field :performance_label, 6,
    type: Google.Ads.Googleads.V10.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel,
    json_name: "performanceLabel",
    enum: true,
    deprecated: false

  field :policy_summary, 7,
    type: Google.Ads.Googleads.V10.Common.PolicySummary,
    json_name: "policySummary",
    deprecated: false
end
