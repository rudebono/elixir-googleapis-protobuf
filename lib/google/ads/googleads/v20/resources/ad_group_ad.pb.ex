defmodule Google.Ads.Googleads.V20.Resources.AdGroupAd do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :status, 3,
    type: Google.Ads.Googleads.V20.Enums.AdGroupAdStatusEnum.AdGroupAdStatus,
    enum: true

  field :ad_group, 9,
    proto3_optional: true,
    type: :string,
    json_name: "adGroup",
    deprecated: false

  field :ad, 5, type: Google.Ads.Googleads.V20.Resources.Ad, deprecated: false

  field :policy_summary, 6,
    type: Google.Ads.Googleads.V20.Resources.AdGroupAdPolicySummary,
    json_name: "policySummary",
    deprecated: false

  field :ad_strength, 7,
    type: Google.Ads.Googleads.V20.Enums.AdStrengthEnum.AdStrength,
    json_name: "adStrength",
    enum: true,
    deprecated: false

  field :action_items, 13,
    repeated: true,
    type: :string,
    json_name: "actionItems",
    deprecated: false

  field :labels, 10, repeated: true, type: :string, deprecated: false

  field :primary_status, 16,
    type: Google.Ads.Googleads.V20.Enums.AdGroupAdPrimaryStatusEnum.AdGroupAdPrimaryStatus,
    json_name: "primaryStatus",
    enum: true,
    deprecated: false

  field :primary_status_reasons, 17,
    repeated: true,
    type:
      Google.Ads.Googleads.V20.Enums.AdGroupAdPrimaryStatusReasonEnum.AdGroupAdPrimaryStatusReason,
    json_name: "primaryStatusReasons",
    enum: true,
    deprecated: false

  field :ad_group_ad_asset_automation_settings, 18,
    repeated: true,
    type: Google.Ads.Googleads.V20.Resources.AdGroupAdAssetAutomationSetting,
    json_name: "adGroupAdAssetAutomationSettings"
end

defmodule Google.Ads.Googleads.V20.Resources.AdGroupAdPolicySummary do
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

defmodule Google.Ads.Googleads.V20.Resources.AdGroupAdAssetAutomationSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :asset_automation_type, 1,
    proto3_optional: true,
    type: Google.Ads.Googleads.V20.Enums.AssetAutomationTypeEnum.AssetAutomationType,
    json_name: "assetAutomationType",
    enum: true

  field :asset_automation_status, 2,
    proto3_optional: true,
    type: Google.Ads.Googleads.V20.Enums.AssetAutomationStatusEnum.AssetAutomationStatus,
    json_name: "assetAutomationStatus",
    enum: true
end
