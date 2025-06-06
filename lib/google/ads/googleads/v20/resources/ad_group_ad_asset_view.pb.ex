defmodule Google.Ads.Googleads.V20.Resources.AdGroupAdAssetView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :ad_group_ad, 9,
    proto3_optional: true,
    type: :string,
    json_name: "adGroupAd",
    deprecated: false

  field :asset, 10, proto3_optional: true, type: :string, deprecated: false

  field :field_type, 2,
    type: Google.Ads.Googleads.V20.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "fieldType",
    enum: true,
    deprecated: false

  field :enabled, 8, proto3_optional: true, type: :bool, deprecated: false

  field :policy_summary, 3,
    type: Google.Ads.Googleads.V20.Resources.AdGroupAdAssetPolicySummary,
    json_name: "policySummary",
    deprecated: false

  field :performance_label, 4,
    type: Google.Ads.Googleads.V20.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel,
    json_name: "performanceLabel",
    enum: true,
    deprecated: false

  field :pinned_field, 11,
    type: Google.Ads.Googleads.V20.Enums.ServedAssetFieldTypeEnum.ServedAssetFieldType,
    json_name: "pinnedField",
    enum: true,
    deprecated: false

  field :source, 12,
    type: Google.Ads.Googleads.V20.Enums.AssetSourceEnum.AssetSource,
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V20.Resources.AdGroupAdAssetPolicySummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V20.Common.PolicyTopicEntry,
    json_name: "policyTopicEntries",
    deprecated: false

  field :review_status, 2,
    type: Google.Ads.Googleads.V20.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    json_name: "reviewStatus",
    enum: true,
    deprecated: false

  field :approval_status, 3,
    type: Google.Ads.Googleads.V20.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    json_name: "approvalStatus",
    enum: true,
    deprecated: false
end
