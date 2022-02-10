defmodule Google.Ads.Googleads.V10.Common.AdAssetPolicySummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy_topic_entries: [Google.Ads.Googleads.V10.Common.PolicyTopicEntry.t()],
          review_status:
            Google.Ads.Googleads.V10.Enums.PolicyReviewStatusEnum.PolicyReviewStatus.t(),
          approval_status:
            Google.Ads.Googleads.V10.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus.t()
        }

  defstruct policy_topic_entries: [],
            review_status: :UNSPECIFIED,
            approval_status: :UNSPECIFIED

  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.PolicyTopicEntry,
    json_name: "policyTopicEntries"

  field :review_status, 2,
    type: Google.Ads.Googleads.V10.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    json_name: "reviewStatus",
    enum: true

  field :approval_status, 3,
    type: Google.Ads.Googleads.V10.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    json_name: "approvalStatus",
    enum: true
end
