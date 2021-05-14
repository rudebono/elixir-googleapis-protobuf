defmodule Google.Ads.Googleads.V4.Resources.AdGroupAdAssetView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group_ad: Google.Protobuf.StringValue.t() | nil,
          asset: Google.Protobuf.StringValue.t() | nil,
          field_type: Google.Ads.Googleads.V4.Enums.AssetFieldTypeEnum.AssetFieldType.t(),
          policy_summary: Google.Ads.Googleads.V4.Resources.AdGroupAdAssetPolicySummary.t() | nil,
          performance_label:
            Google.Ads.Googleads.V4.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel.t()
        }

  defstruct [
    :resource_name,
    :ad_group_ad,
    :asset,
    :field_type,
    :policy_summary,
    :performance_label
  ]

  field :resource_name, 1, type: :string
  field :ad_group_ad, 5, type: Google.Protobuf.StringValue
  field :asset, 6, type: Google.Protobuf.StringValue

  field :field_type, 2,
    type: Google.Ads.Googleads.V4.Enums.AssetFieldTypeEnum.AssetFieldType,
    enum: true

  field :policy_summary, 3, type: Google.Ads.Googleads.V4.Resources.AdGroupAdAssetPolicySummary

  field :performance_label, 4,
    type: Google.Ads.Googleads.V4.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Resources.AdGroupAdAssetPolicySummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy_topic_entries: [Google.Ads.Googleads.V4.Common.PolicyTopicEntry.t()],
          review_status:
            Google.Ads.Googleads.V4.Enums.PolicyReviewStatusEnum.PolicyReviewStatus.t(),
          approval_status:
            Google.Ads.Googleads.V4.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus.t()
        }

  defstruct [:policy_topic_entries, :review_status, :approval_status]

  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.PolicyTopicEntry

  field :review_status, 2,
    type: Google.Ads.Googleads.V4.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    enum: true

  field :approval_status, 3,
    type: Google.Ads.Googleads.V4.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    enum: true
end
