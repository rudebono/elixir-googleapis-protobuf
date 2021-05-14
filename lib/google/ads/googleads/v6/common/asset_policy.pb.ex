defmodule Google.Ads.Googleads.V6.Common.AdAssetPolicySummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy_topic_entries: [Google.Ads.Googleads.V6.Common.PolicyTopicEntry.t()],
          review_status:
            Google.Ads.Googleads.V6.Enums.PolicyReviewStatusEnum.PolicyReviewStatus.t(),
          approval_status:
            Google.Ads.Googleads.V6.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus.t()
        }

  defstruct [:policy_topic_entries, :review_status, :approval_status]

  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V6.Common.PolicyTopicEntry

  field :review_status, 2,
    type: Google.Ads.Googleads.V6.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    enum: true

  field :approval_status, 3,
    type: Google.Ads.Googleads.V6.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    enum: true
end
