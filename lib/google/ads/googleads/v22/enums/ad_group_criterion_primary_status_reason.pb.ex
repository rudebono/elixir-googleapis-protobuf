defmodule Google.Ads.Googleads.V22.Enums.AdGroupCriterionPrimaryStatusReasonEnum.AdGroupCriterionPrimaryStatusReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CAMPAIGN_PENDING, 2
  field :CAMPAIGN_CRITERION_NEGATIVE, 3
  field :CAMPAIGN_PAUSED, 4
  field :CAMPAIGN_REMOVED, 5
  field :CAMPAIGN_ENDED, 6
  field :AD_GROUP_PAUSED, 7
  field :AD_GROUP_REMOVED, 8
  field :AD_GROUP_CRITERION_DISAPPROVED, 9
  field :AD_GROUP_CRITERION_RARELY_SERVED, 10
  field :AD_GROUP_CRITERION_LOW_QUALITY, 11
  field :AD_GROUP_CRITERION_UNDER_REVIEW, 12
  field :AD_GROUP_CRITERION_PENDING_REVIEW, 13
  field :AD_GROUP_CRITERION_BELOW_FIRST_PAGE_BID, 14
  field :AD_GROUP_CRITERION_NEGATIVE, 15
  field :AD_GROUP_CRITERION_RESTRICTED, 16
  field :AD_GROUP_CRITERION_PAUSED, 17
  field :AD_GROUP_CRITERION_PAUSED_DUE_TO_LOW_ACTIVITY, 18
  field :AD_GROUP_CRITERION_REMOVED, 19
end

defmodule Google.Ads.Googleads.V22.Enums.AdGroupCriterionPrimaryStatusReasonEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
