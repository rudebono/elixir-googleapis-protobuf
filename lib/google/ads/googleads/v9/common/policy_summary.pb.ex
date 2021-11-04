defmodule Google.Ads.Googleads.V9.Common.PolicySummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy_topic_entries: [Google.Ads.Googleads.V9.Common.PolicyTopicEntry.t()],
          review_status:
            Google.Ads.Googleads.V9.Enums.PolicyReviewStatusEnum.PolicyReviewStatus.t(),
          approval_status:
            Google.Ads.Googleads.V9.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus.t()
        }

  defstruct [:policy_topic_entries, :review_status, :approval_status]

  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V9.Common.PolicyTopicEntry,
    json_name: "policyTopicEntries"

  field :review_status, 2,
    type: Google.Ads.Googleads.V9.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    enum: true,
    json_name: "reviewStatus"

  field :approval_status, 3,
    type: Google.Ads.Googleads.V9.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    enum: true,
    json_name: "approvalStatus"

  def transform_module(), do: nil
end
