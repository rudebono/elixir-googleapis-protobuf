defmodule Google.Ads.Googleads.V18.Errors.CampaignLifecycleGoalErrorEnum.CampaignLifecycleGoalError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CAMPAIGN_MISSING, 2
  field :INVALID_CAMPAIGN, 3
  field :CUSTOMER_ACQUISITION_INVALID_OPTIMIZATION_MODE, 4
  field :INCOMPATIBLE_BIDDING_STRATEGY, 5
  field :MISSING_PURCHASE_GOAL, 6
  field :CUSTOMER_ACQUISITION_INVALID_HIGH_LIFETIME_VALUE, 7
  field :CUSTOMER_ACQUISITION_UNSUPPORTED_CAMPAIGN_TYPE, 8
  field :CUSTOMER_ACQUISITION_INVALID_VALUE, 9
  field :CUSTOMER_ACQUISITION_VALUE_MISSING, 10
  field :CUSTOMER_ACQUISITION_MISSING_EXISTING_CUSTOMER_DEFINITION, 11
  field :CUSTOMER_ACQUISITION_MISSING_HIGH_VALUE_CUSTOMER_DEFINITION, 12
end

defmodule Google.Ads.Googleads.V18.Errors.CampaignLifecycleGoalErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end