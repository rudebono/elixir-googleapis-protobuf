defmodule Google.Ads.Googleads.V17.Common.PolicySummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V17.Common.PolicyTopicEntry,
    json_name: "policyTopicEntries"

  field :review_status, 2,
    type: Google.Ads.Googleads.V17.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    json_name: "reviewStatus",
    enum: true

  field :approval_status, 3,
    type: Google.Ads.Googleads.V17.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    json_name: "approvalStatus",
    enum: true
end