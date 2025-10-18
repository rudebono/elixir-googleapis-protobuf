defmodule Google.Ads.Googleads.V22.Errors.CampaignGoalConfigErrorEnum.CampaignGoalConfigError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :GOAL_NOT_FOUND, 3
  field :CAMPAIGN_NOT_FOUND, 4
  field :HIGH_LIFETIME_VALUE_PRESENT_BUT_VALUE_ABSENT, 9
  field :HIGH_LIFETIME_VALUE_LESS_THAN_OR_EQUAL_TO_VALUE, 10
  field :CUSTOMER_LIFECYCLE_OPTIMIZATION_CAMPAIGN_TYPE_NOT_SUPPORTED, 11
  field :CUSTOMER_NOT_ALLOWLISTED_FOR_RETENTION_ONLY, 12
end

defmodule Google.Ads.Googleads.V22.Errors.CampaignGoalConfigErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
