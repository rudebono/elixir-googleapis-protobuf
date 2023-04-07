defmodule Google.Ads.Searchads360.V0.Enums.AdGroupAdEngineStatusEnum.AdGroupAdEngineStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :AD_GROUP_AD_ELIGIBLE, 2
  field :AD_GROUP_AD_INAPPROPRIATE_FOR_CAMPAIGN, 3
  field :AD_GROUP_AD_MOBILE_URL_UNDER_REVIEW, 4
  field :AD_GROUP_AD_PARTIALLY_INVALID, 5
  field :AD_GROUP_AD_TO_BE_ACTIVATED, 6
  field :AD_GROUP_AD_NOT_REVIEWED, 7
  field :AD_GROUP_AD_ON_HOLD, 8
  field :AD_GROUP_AD_PAUSED, 9
  field :AD_GROUP_AD_REMOVED, 10
  field :AD_GROUP_AD_PENDING_REVIEW, 11
  field :AD_GROUP_AD_UNDER_REVIEW, 12
  field :AD_GROUP_AD_APPROVED, 13
  field :AD_GROUP_AD_DISAPPROVED, 14
  field :AD_GROUP_AD_SERVING, 15
  field :AD_GROUP_AD_ACCOUNT_PAUSED, 16
  field :AD_GROUP_AD_CAMPAIGN_PAUSED, 17
  field :AD_GROUP_AD_AD_GROUP_PAUSED, 18
end

defmodule Google.Ads.Searchads360.V0.Enums.AdGroupAdEngineStatusEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end