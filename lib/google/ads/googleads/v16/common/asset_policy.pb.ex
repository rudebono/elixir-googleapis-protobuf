defmodule Google.Ads.Googleads.V16.Common.AdAssetPolicySummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V16.Common.PolicyTopicEntry,
    json_name: "policyTopicEntries"

  field :review_status, 2,
    type: Google.Ads.Googleads.V16.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    json_name: "reviewStatus",
    enum: true

  field :approval_status, 3,
    type: Google.Ads.Googleads.V16.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    json_name: "approvalStatus",
    enum: true
end

defmodule Google.Ads.Googleads.V16.Common.AssetLinkPrimaryStatusDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :details, 0

  field :reason, 1,
    proto3_optional: true,
    type:
      Google.Ads.Googleads.V16.Enums.AssetLinkPrimaryStatusReasonEnum.AssetLinkPrimaryStatusReason,
    enum: true

  field :status, 2,
    proto3_optional: true,
    type: Google.Ads.Googleads.V16.Enums.AssetLinkPrimaryStatusEnum.AssetLinkPrimaryStatus,
    enum: true

  field :asset_disapproved, 3,
    type: Google.Ads.Googleads.V16.Common.AssetDisapproved,
    json_name: "assetDisapproved",
    oneof: 0
end

defmodule Google.Ads.Googleads.V16.Common.AssetDisapproved do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :offline_evaluation_error_reasons, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V16.Enums.AssetOfflineEvaluationErrorReasonsEnum.AssetOfflineEvaluationErrorReasons,
    json_name: "offlineEvaluationErrorReasons",
    enum: true
end