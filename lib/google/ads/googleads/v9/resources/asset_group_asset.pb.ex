defmodule Google.Ads.Googleads.V9.Resources.AssetGroupAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          asset_group: String.t(),
          asset: String.t(),
          field_type: Google.Ads.Googleads.V9.Enums.AssetFieldTypeEnum.AssetFieldType.t(),
          status: Google.Ads.Googleads.V9.Enums.AssetLinkStatusEnum.AssetLinkStatus.t(),
          performance_label:
            Google.Ads.Googleads.V9.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel.t(),
          policy_summary: Google.Ads.Googleads.V9.Common.PolicySummary.t() | nil
        }

  defstruct resource_name: "",
            asset_group: "",
            asset: "",
            field_type: :UNSPECIFIED,
            status: :UNSPECIFIED,
            performance_label: :UNSPECIFIED,
            policy_summary: nil

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :asset_group, 2, type: :string, json_name: "assetGroup", deprecated: false
  field :asset, 3, type: :string, deprecated: false

  field :field_type, 4,
    type: Google.Ads.Googleads.V9.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "fieldType",
    enum: true

  field :status, 5,
    type: Google.Ads.Googleads.V9.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true

  field :performance_label, 6,
    type: Google.Ads.Googleads.V9.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel,
    json_name: "performanceLabel",
    enum: true,
    deprecated: false

  field :policy_summary, 7,
    type: Google.Ads.Googleads.V9.Common.PolicySummary,
    json_name: "policySummary",
    deprecated: false
end
