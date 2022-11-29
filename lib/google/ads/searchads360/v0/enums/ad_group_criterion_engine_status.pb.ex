defmodule Google.Ads.Searchads360.V0.Enums.AdGroupCriterionEngineStatusEnum.AdGroupCriterionEngineStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :AD_GROUP_CRITERION_ELIGIBLE, 2
  field :AD_GROUP_CRITERION_INAPPROPRIATE_FOR_CAMPAIGN, 3
  field :AD_GROUP_CRITERION_INVALID_MOBILE_SEARCH, 4
  field :AD_GROUP_CRITERION_INVALID_PC_SEARCH, 5
  field :AD_GROUP_CRITERION_INVALID_SEARCH, 6
  field :AD_GROUP_CRITERION_LOW_SEARCH_VOLUME, 7
  field :AD_GROUP_CRITERION_MOBILE_URL_UNDER_REVIEW, 8
  field :AD_GROUP_CRITERION_PARTIALLY_INVALID, 9
  field :AD_GROUP_CRITERION_TO_BE_ACTIVATED, 10
  field :AD_GROUP_CRITERION_UNDER_REVIEW, 11
  field :AD_GROUP_CRITERION_NOT_REVIEWED, 12
  field :AD_GROUP_CRITERION_ON_HOLD, 13
  field :AD_GROUP_CRITERION_PENDING_REVIEW, 14
  field :AD_GROUP_CRITERION_PAUSED, 15
  field :AD_GROUP_CRITERION_REMOVED, 16
  field :AD_GROUP_CRITERION_APPROVED, 17
  field :AD_GROUP_CRITERION_DISAPPROVED, 18
  field :AD_GROUP_CRITERION_SERVING, 19
  field :AD_GROUP_CRITERION_ACCOUNT_PAUSED, 20
end

defmodule Google.Ads.Searchads360.V0.Enums.AdGroupCriterionEngineStatusEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end