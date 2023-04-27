defmodule Google.Ads.Googleads.V12.Enums.CampaignPrimaryStatusReasonEnum.CampaignPrimaryStatusReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CAMPAIGN_REMOVED, 2
  field :CAMPAIGN_PAUSED, 3
  field :CAMPAIGN_PENDING, 4
  field :CAMPAIGN_ENDED, 5
  field :CAMPAIGN_DRAFT, 6
  field :BIDDING_STRATEGY_MISCONFIGURED, 7
  field :BIDDING_STRATEGY_LIMITED, 8
  field :BIDDING_STRATEGY_LEARNING, 9
  field :BIDDING_STRATEGY_CONSTRAINED, 10
  field :BUDGET_CONSTRAINED, 11
  field :BUDGET_MISCONFIGURED, 12
  field :SEARCH_VOLUME_LIMITED, 13
  field :AD_GROUPS_PAUSED, 14
  field :NO_AD_GROUPS, 15
  field :KEYWORDS_PAUSED, 16
  field :NO_KEYWORDS, 17
  field :AD_GROUP_ADS_PAUSED, 18
  field :NO_AD_GROUP_ADS, 19
  field :HAS_ADS_LIMITED_BY_POLICY, 20
  field :HAS_ADS_DISAPPROVED, 21
  field :MOST_ADS_UNDER_REVIEW, 22
  field :MISSING_LEAD_FORM_EXTENSION, 23
  field :MISSING_CALL_EXTENSION, 24
  field :LEAD_FORM_EXTENSION_UNDER_REVIEW, 25
  field :LEAD_FORM_EXTENSION_DISAPPROVED, 26
  field :CALL_EXTENSION_UNDER_REVIEW, 27
  field :CALL_EXTENSION_DISAPPROVED, 28
  field :NO_MOBILE_APPLICATION_AD_GROUP_CRITERIA, 29
  field :CAMPAIGN_GROUP_PAUSED, 30
  field :CAMPAIGN_GROUP_ALL_GROUP_BUDGETS_ENDED, 31
  field :APP_NOT_RELEASED, 32
  field :APP_PARTIALLY_RELEASED, 33
end

defmodule Google.Ads.Googleads.V12.Enums.CampaignPrimaryStatusReasonEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end