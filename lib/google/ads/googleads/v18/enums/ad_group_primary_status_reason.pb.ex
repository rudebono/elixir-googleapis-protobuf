defmodule Google.Ads.Googleads.V18.Enums.AdGroupPrimaryStatusReasonEnum.AdGroupPrimaryStatusReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CAMPAIGN_REMOVED, 2
  field :CAMPAIGN_PAUSED, 3
  field :CAMPAIGN_PENDING, 4
  field :CAMPAIGN_ENDED, 5
  field :AD_GROUP_PAUSED, 6
  field :AD_GROUP_REMOVED, 7
  field :AD_GROUP_INCOMPLETE, 8
  field :KEYWORDS_PAUSED, 9
  field :NO_KEYWORDS, 10
  field :AD_GROUP_ADS_PAUSED, 11
  field :NO_AD_GROUP_ADS, 12
  field :HAS_ADS_DISAPPROVED, 13
  field :HAS_ADS_LIMITED_BY_POLICY, 14
  field :MOST_ADS_UNDER_REVIEW, 15
  field :CAMPAIGN_DRAFT, 16
  field :AD_GROUP_PAUSED_DUE_TO_LOW_ACTIVITY, 19
end

defmodule Google.Ads.Googleads.V18.Enums.AdGroupPrimaryStatusReasonEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
