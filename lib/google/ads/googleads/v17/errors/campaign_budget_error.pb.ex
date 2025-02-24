defmodule Google.Ads.Googleads.V17.Errors.CampaignBudgetErrorEnum.CampaignBudgetError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CAMPAIGN_BUDGET_CANNOT_BE_SHARED, 17
  field :CAMPAIGN_BUDGET_REMOVED, 2
  field :CAMPAIGN_BUDGET_IN_USE, 3
  field :CAMPAIGN_BUDGET_PERIOD_NOT_AVAILABLE, 4
  field :CANNOT_MODIFY_FIELD_OF_IMPLICITLY_SHARED_CAMPAIGN_BUDGET, 6
  field :CANNOT_UPDATE_CAMPAIGN_BUDGET_TO_IMPLICITLY_SHARED, 7
  field :CANNOT_UPDATE_CAMPAIGN_BUDGET_TO_EXPLICITLY_SHARED_WITHOUT_NAME, 8
  field :CANNOT_UPDATE_CAMPAIGN_BUDGET_TO_EXPLICITLY_SHARED, 9
  field :CANNOT_USE_IMPLICITLY_SHARED_CAMPAIGN_BUDGET_WITH_MULTIPLE_CAMPAIGNS, 10
  field :DUPLICATE_NAME, 11
  field :MONEY_AMOUNT_IN_WRONG_CURRENCY, 12
  field :MONEY_AMOUNT_LESS_THAN_CURRENCY_MINIMUM_CPC, 13
  field :MONEY_AMOUNT_TOO_LARGE, 14
  field :NEGATIVE_MONEY_AMOUNT, 15
  field :NON_MULTIPLE_OF_MINIMUM_CURRENCY_UNIT, 16
  field :TOTAL_BUDGET_AMOUNT_MUST_BE_UNSET_FOR_BUDGET_PERIOD_DAILY, 18
  field :INVALID_PERIOD, 19
  field :CANNOT_USE_ACCELERATED_DELIVERY_MODE, 20
  field :BUDGET_AMOUNT_MUST_BE_UNSET_FOR_CUSTOM_BUDGET_PERIOD, 21
end

defmodule Google.Ads.Googleads.V17.Errors.CampaignBudgetErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
