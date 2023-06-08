defmodule Google.Ads.Googleads.V14.Resources.CampaignBudget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 19, proto3_optional: true, type: :int64, deprecated: false
  field :name, 20, proto3_optional: true, type: :string
  field :amount_micros, 21, proto3_optional: true, type: :int64, json_name: "amountMicros"

  field :total_amount_micros, 22,
    proto3_optional: true,
    type: :int64,
    json_name: "totalAmountMicros"

  field :status, 6,
    type: Google.Ads.Googleads.V14.Enums.BudgetStatusEnum.BudgetStatus,
    enum: true,
    deprecated: false

  field :delivery_method, 7,
    type: Google.Ads.Googleads.V14.Enums.BudgetDeliveryMethodEnum.BudgetDeliveryMethod,
    json_name: "deliveryMethod",
    enum: true

  field :explicitly_shared, 23, proto3_optional: true, type: :bool, json_name: "explicitlyShared"

  field :reference_count, 24,
    proto3_optional: true,
    type: :int64,
    json_name: "referenceCount",
    deprecated: false

  field :has_recommended_budget, 25,
    proto3_optional: true,
    type: :bool,
    json_name: "hasRecommendedBudget",
    deprecated: false

  field :recommended_budget_amount_micros, 26,
    proto3_optional: true,
    type: :int64,
    json_name: "recommendedBudgetAmountMicros",
    deprecated: false

  field :period, 13,
    type: Google.Ads.Googleads.V14.Enums.BudgetPeriodEnum.BudgetPeriod,
    enum: true,
    deprecated: false

  field :recommended_budget_estimated_change_weekly_clicks, 27,
    proto3_optional: true,
    type: :int64,
    json_name: "recommendedBudgetEstimatedChangeWeeklyClicks",
    deprecated: false

  field :recommended_budget_estimated_change_weekly_cost_micros, 28,
    proto3_optional: true,
    type: :int64,
    json_name: "recommendedBudgetEstimatedChangeWeeklyCostMicros",
    deprecated: false

  field :recommended_budget_estimated_change_weekly_interactions, 29,
    proto3_optional: true,
    type: :int64,
    json_name: "recommendedBudgetEstimatedChangeWeeklyInteractions",
    deprecated: false

  field :recommended_budget_estimated_change_weekly_views, 30,
    proto3_optional: true,
    type: :int64,
    json_name: "recommendedBudgetEstimatedChangeWeeklyViews",
    deprecated: false

  field :type, 18,
    type: Google.Ads.Googleads.V14.Enums.BudgetTypeEnum.BudgetType,
    enum: true,
    deprecated: false

  field :aligned_bidding_strategy_id, 31, type: :int64, json_name: "alignedBiddingStrategyId"
end