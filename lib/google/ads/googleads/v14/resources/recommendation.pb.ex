defmodule Google.Ads.Googleads.V14.Resources.Recommendation.MerchantInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :int64, deprecated: false
  field :name, 2, type: :string, deprecated: false
  field :multi_client, 3, type: :bool, json_name: "multiClient", deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.RecommendationImpact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :base_metrics, 1,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.RecommendationMetrics,
    json_name: "baseMetrics",
    deprecated: false

  field :potential_metrics, 2,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.RecommendationMetrics,
    json_name: "potentialMetrics",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.RecommendationMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :impressions, 6, proto3_optional: true, type: :double, deprecated: false
  field :clicks, 7, proto3_optional: true, type: :double, deprecated: false

  field :cost_micros, 8,
    proto3_optional: true,
    type: :int64,
    json_name: "costMicros",
    deprecated: false

  field :conversions, 9, proto3_optional: true, type: :double, deprecated: false

  field :video_views, 10,
    proto3_optional: true,
    type: :double,
    json_name: "videoViews",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.CampaignBudgetRecommendation.CampaignBudgetRecommendationOption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :budget_amount_micros, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "budgetAmountMicros",
    deprecated: false

  field :impact, 2,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.RecommendationImpact,
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.CampaignBudgetRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :current_budget_amount_micros, 7,
    proto3_optional: true,
    type: :int64,
    json_name: "currentBudgetAmountMicros",
    deprecated: false

  field :recommended_budget_amount_micros, 8,
    proto3_optional: true,
    type: :int64,
    json_name: "recommendedBudgetAmountMicros",
    deprecated: false

  field :budget_options, 3,
    repeated: true,
    type:
      Google.Ads.Googleads.V14.Resources.Recommendation.CampaignBudgetRecommendation.CampaignBudgetRecommendationOption,
    json_name: "budgetOptions",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.KeywordRecommendation.SearchTerm do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text, 1, type: :string, deprecated: false

  field :estimated_weekly_search_count, 2,
    type: :int64,
    json_name: "estimatedWeeklySearchCount",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.KeywordRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :keyword, 1, type: Google.Ads.Googleads.V14.Common.KeywordInfo, deprecated: false

  field :search_terms, 4,
    repeated: true,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.KeywordRecommendation.SearchTerm,
    json_name: "searchTerms",
    deprecated: false

  field :recommended_cpc_bid_micros, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "recommendedCpcBidMicros",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.TextAdRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ad, 1, type: Google.Ads.Googleads.V14.Resources.Ad, deprecated: false

  field :creation_date, 4,
    proto3_optional: true,
    type: :string,
    json_name: "creationDate",
    deprecated: false

  field :auto_apply_date, 5,
    proto3_optional: true,
    type: :string,
    json_name: "autoApplyDate",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.TargetCpaOptInRecommendation.TargetCpaOptInRecommendationOption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :goal, 1,
    type:
      Google.Ads.Googleads.V14.Enums.TargetCpaOptInRecommendationGoalEnum.TargetCpaOptInRecommendationGoal,
    enum: true,
    deprecated: false

  field :target_cpa_micros, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "targetCpaMicros",
    deprecated: false

  field :required_campaign_budget_amount_micros, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "requiredCampaignBudgetAmountMicros",
    deprecated: false

  field :impact, 4,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.RecommendationImpact,
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.TargetCpaOptInRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :options, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V14.Resources.Recommendation.TargetCpaOptInRecommendation.TargetCpaOptInRecommendationOption,
    deprecated: false

  field :recommended_target_cpa_micros, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "recommendedTargetCpaMicros",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.MaximizeConversionsOptInRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :recommended_budget_amount_micros, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "recommendedBudgetAmountMicros",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.EnhancedCpcOptInRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.SearchPartnersOptInRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.MaximizeClicksOptInRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :recommended_budget_amount_micros, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "recommendedBudgetAmountMicros",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.OptimizeAdRotationRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.CalloutAssetRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :recommended_campaign_callout_assets, 1,
    repeated: true,
    type: Google.Ads.Googleads.V14.Resources.Asset,
    json_name: "recommendedCampaignCalloutAssets",
    deprecated: false

  field :recommended_customer_callout_assets, 2,
    repeated: true,
    type: Google.Ads.Googleads.V14.Resources.Asset,
    json_name: "recommendedCustomerCalloutAssets",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.SitelinkAssetRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :recommended_campaign_sitelink_assets, 1,
    repeated: true,
    type: Google.Ads.Googleads.V14.Resources.Asset,
    json_name: "recommendedCampaignSitelinkAssets",
    deprecated: false

  field :recommended_customer_sitelink_assets, 2,
    repeated: true,
    type: Google.Ads.Googleads.V14.Resources.Asset,
    json_name: "recommendedCustomerSitelinkAssets",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.CallAssetRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.KeywordMatchTypeRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :keyword, 1, type: Google.Ads.Googleads.V14.Common.KeywordInfo, deprecated: false

  field :recommended_match_type, 2,
    type: Google.Ads.Googleads.V14.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    json_name: "recommendedMatchType",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.MoveUnusedBudgetRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :excess_campaign_budget, 3,
    proto3_optional: true,
    type: :string,
    json_name: "excessCampaignBudget",
    deprecated: false

  field :budget_recommendation, 2,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.CampaignBudgetRecommendation,
    json_name: "budgetRecommendation",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.TargetRoasOptInRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :recommended_target_roas, 1,
    proto3_optional: true,
    type: :double,
    json_name: "recommendedTargetRoas",
    deprecated: false

  field :required_campaign_budget_amount_micros, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "requiredCampaignBudgetAmountMicros",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.ResponsiveSearchAdAssetRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :current_ad, 3,
    type: Google.Ads.Googleads.V14.Resources.Ad,
    json_name: "currentAd",
    deprecated: false

  field :recommended_assets, 2,
    type: Google.Ads.Googleads.V14.Resources.Ad,
    json_name: "recommendedAssets",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.ResponsiveSearchAdImproveAdStrengthRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :current_ad, 1,
    type: Google.Ads.Googleads.V14.Resources.Ad,
    json_name: "currentAd",
    deprecated: false

  field :recommended_ad, 2,
    type: Google.Ads.Googleads.V14.Resources.Ad,
    json_name: "recommendedAd",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.ResponsiveSearchAdRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ad, 1, type: Google.Ads.Googleads.V14.Resources.Ad, deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.UseBroadMatchKeywordRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :keyword, 1,
    repeated: true,
    type: Google.Ads.Googleads.V14.Common.KeywordInfo,
    deprecated: false

  field :suggested_keywords_count, 2,
    type: :int64,
    json_name: "suggestedKeywordsCount",
    deprecated: false

  field :campaign_keywords_count, 3,
    type: :int64,
    json_name: "campaignKeywordsCount",
    deprecated: false

  field :campaign_uses_shared_budget, 4,
    type: :bool,
    json_name: "campaignUsesSharedBudget",
    deprecated: false

  field :required_campaign_budget_amount_micros, 5,
    type: :int64,
    json_name: "requiredCampaignBudgetAmountMicros",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.UpgradeSmartShoppingCampaignToPerformanceMaxRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :merchant_id, 1, type: :int64, json_name: "merchantId", deprecated: false
  field :sales_country_code, 2, type: :string, json_name: "salesCountryCode", deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.RaiseTargetCpaBidTooLowRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :recommended_target_multiplier, 1,
    proto3_optional: true,
    type: :double,
    json_name: "recommendedTargetMultiplier",
    deprecated: false

  field :average_target_cpa_micros, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "averageTargetCpaMicros",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.DisplayExpansionOptInRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.UpgradeLocalCampaignToPerformanceMaxRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.ForecastingSetTargetRoasRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :recommended_target_roas, 1,
    type: :double,
    json_name: "recommendedTargetRoas",
    deprecated: false

  field :campaign_budget, 2,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.CampaignBudget,
    json_name: "campaignBudget",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.ShoppingOfferAttributeRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :merchant, 1,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.MerchantInfo,
    deprecated: false

  field :feed_label, 2, type: :string, json_name: "feedLabel", deprecated: false
  field :offers_count, 3, type: :int64, json_name: "offersCount", deprecated: false
  field :demoted_offers_count, 4, type: :int64, json_name: "demotedOffersCount", deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.ShoppingFixDisapprovedProductsRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :merchant, 1,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.MerchantInfo,
    deprecated: false

  field :feed_label, 2, type: :string, json_name: "feedLabel", deprecated: false
  field :products_count, 3, type: :int64, json_name: "productsCount", deprecated: false

  field :disapproved_products_count, 4,
    type: :int64,
    json_name: "disapprovedProductsCount",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.ShoppingTargetAllOffersRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :merchant, 1,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.MerchantInfo,
    deprecated: false

  field :untargeted_offers_count, 2,
    type: :int64,
    json_name: "untargetedOffersCount",
    deprecated: false

  field :feed_label, 3, type: :string, json_name: "feedLabel", deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.ShoppingAddProductsToCampaignRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :merchant, 1,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.MerchantInfo,
    deprecated: false

  field :feed_label, 2, type: :string, json_name: "feedLabel", deprecated: false

  field :reason, 3,
    type: Google.Ads.Googleads.V14.Enums.ShoppingAddProductsToCampaignRecommendationEnum.Reason,
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.ShoppingMerchantCenterAccountSuspensionRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :merchant, 1,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.MerchantInfo,
    deprecated: false

  field :feed_label, 2, type: :string, json_name: "feedLabel", deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.ShoppingMigrateRegularShoppingCampaignOffersToPerformanceMaxRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :merchant, 1,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.MerchantInfo,
    deprecated: false

  field :feed_label, 2, type: :string, json_name: "feedLabel", deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.TargetAdjustmentInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :shared_set, 1,
    proto3_optional: true,
    type: :string,
    json_name: "sharedSet",
    deprecated: false

  field :recommended_target_multiplier, 2,
    type: :double,
    json_name: "recommendedTargetMultiplier",
    deprecated: false

  field :current_average_target_micros, 3,
    type: :int64,
    json_name: "currentAverageTargetMicros",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.RaiseTargetCpaRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target_adjustment, 1,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.TargetAdjustmentInfo,
    json_name: "targetAdjustment",
    deprecated: false

  field :app_bidding_goal, 2,
    proto3_optional: true,
    type: Google.Ads.Googleads.V14.Enums.AppBiddingGoalEnum.AppBiddingGoal,
    json_name: "appBiddingGoal",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.LowerTargetRoasRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target_adjustment, 1,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.TargetAdjustmentInfo,
    json_name: "targetAdjustment",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.DynamicImageExtensionOptInRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.CampaignBudget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :current_amount_micros, 1,
    type: :int64,
    json_name: "currentAmountMicros",
    deprecated: false

  field :recommended_new_amount_micros, 2,
    type: :int64,
    json_name: "recommendedNewAmountMicros",
    deprecated: false

  field :new_start_date, 3, type: :string, json_name: "newStartDate", deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.PerformanceMaxOptInRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.ImprovePerformanceMaxAdStrengthRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :asset_group, 1, type: :string, json_name: "assetGroup", deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation.MigrateDynamicSearchAdsCampaignToPerformanceMaxRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :apply_link, 1, type: :string, json_name: "applyLink", deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Recommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :recommendation, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :type, 2,
    type: Google.Ads.Googleads.V14.Enums.RecommendationTypeEnum.RecommendationType,
    enum: true,
    deprecated: false

  field :impact, 3,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.RecommendationImpact,
    deprecated: false

  field :campaign_budget, 24,
    proto3_optional: true,
    type: :string,
    json_name: "campaignBudget",
    deprecated: false

  field :campaign, 25, proto3_optional: true, type: :string, deprecated: false

  field :ad_group, 26,
    proto3_optional: true,
    type: :string,
    json_name: "adGroup",
    deprecated: false

  field :dismissed, 27, proto3_optional: true, type: :bool, deprecated: false
  field :campaigns, 38, repeated: true, type: :string, deprecated: false

  field :campaign_budget_recommendation, 4,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.CampaignBudgetRecommendation,
    json_name: "campaignBudgetRecommendation",
    oneof: 0,
    deprecated: false

  field :forecasting_campaign_budget_recommendation, 22,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.CampaignBudgetRecommendation,
    json_name: "forecastingCampaignBudgetRecommendation",
    oneof: 0,
    deprecated: false

  field :keyword_recommendation, 8,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.KeywordRecommendation,
    json_name: "keywordRecommendation",
    oneof: 0,
    deprecated: false

  field :text_ad_recommendation, 9,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.TextAdRecommendation,
    json_name: "textAdRecommendation",
    oneof: 0,
    deprecated: false

  field :target_cpa_opt_in_recommendation, 10,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.TargetCpaOptInRecommendation,
    json_name: "targetCpaOptInRecommendation",
    oneof: 0,
    deprecated: false

  field :maximize_conversions_opt_in_recommendation, 11,
    type:
      Google.Ads.Googleads.V14.Resources.Recommendation.MaximizeConversionsOptInRecommendation,
    json_name: "maximizeConversionsOptInRecommendation",
    oneof: 0,
    deprecated: false

  field :enhanced_cpc_opt_in_recommendation, 12,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.EnhancedCpcOptInRecommendation,
    json_name: "enhancedCpcOptInRecommendation",
    oneof: 0,
    deprecated: false

  field :search_partners_opt_in_recommendation, 14,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.SearchPartnersOptInRecommendation,
    json_name: "searchPartnersOptInRecommendation",
    oneof: 0,
    deprecated: false

  field :maximize_clicks_opt_in_recommendation, 15,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.MaximizeClicksOptInRecommendation,
    json_name: "maximizeClicksOptInRecommendation",
    oneof: 0,
    deprecated: false

  field :optimize_ad_rotation_recommendation, 16,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.OptimizeAdRotationRecommendation,
    json_name: "optimizeAdRotationRecommendation",
    oneof: 0,
    deprecated: false

  field :keyword_match_type_recommendation, 20,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.KeywordMatchTypeRecommendation,
    json_name: "keywordMatchTypeRecommendation",
    oneof: 0,
    deprecated: false

  field :move_unused_budget_recommendation, 21,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.MoveUnusedBudgetRecommendation,
    json_name: "moveUnusedBudgetRecommendation",
    oneof: 0,
    deprecated: false

  field :target_roas_opt_in_recommendation, 23,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.TargetRoasOptInRecommendation,
    json_name: "targetRoasOptInRecommendation",
    oneof: 0,
    deprecated: false

  field :responsive_search_ad_recommendation, 28,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.ResponsiveSearchAdRecommendation,
    json_name: "responsiveSearchAdRecommendation",
    oneof: 0,
    deprecated: false

  field :marginal_roi_campaign_budget_recommendation, 29,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.CampaignBudgetRecommendation,
    json_name: "marginalRoiCampaignBudgetRecommendation",
    oneof: 0,
    deprecated: false

  field :use_broad_match_keyword_recommendation, 30,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.UseBroadMatchKeywordRecommendation,
    json_name: "useBroadMatchKeywordRecommendation",
    oneof: 0,
    deprecated: false

  field :responsive_search_ad_asset_recommendation, 31,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.ResponsiveSearchAdAssetRecommendation,
    json_name: "responsiveSearchAdAssetRecommendation",
    oneof: 0,
    deprecated: false

  field :upgrade_smart_shopping_campaign_to_performance_max_recommendation, 32,
    type:
      Google.Ads.Googleads.V14.Resources.Recommendation.UpgradeSmartShoppingCampaignToPerformanceMaxRecommendation,
    json_name: "upgradeSmartShoppingCampaignToPerformanceMaxRecommendation",
    oneof: 0,
    deprecated: false

  field :responsive_search_ad_improve_ad_strength_recommendation, 33,
    type:
      Google.Ads.Googleads.V14.Resources.Recommendation.ResponsiveSearchAdImproveAdStrengthRecommendation,
    json_name: "responsiveSearchAdImproveAdStrengthRecommendation",
    oneof: 0,
    deprecated: false

  field :display_expansion_opt_in_recommendation, 34,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.DisplayExpansionOptInRecommendation,
    json_name: "displayExpansionOptInRecommendation",
    oneof: 0,
    deprecated: false

  field :upgrade_local_campaign_to_performance_max_recommendation, 35,
    type:
      Google.Ads.Googleads.V14.Resources.Recommendation.UpgradeLocalCampaignToPerformanceMaxRecommendation,
    json_name: "upgradeLocalCampaignToPerformanceMaxRecommendation",
    oneof: 0,
    deprecated: false

  field :raise_target_cpa_bid_too_low_recommendation, 36,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.RaiseTargetCpaBidTooLowRecommendation,
    json_name: "raiseTargetCpaBidTooLowRecommendation",
    oneof: 0,
    deprecated: false

  field :forecasting_set_target_roas_recommendation, 37,
    type:
      Google.Ads.Googleads.V14.Resources.Recommendation.ForecastingSetTargetRoasRecommendation,
    json_name: "forecastingSetTargetRoasRecommendation",
    oneof: 0,
    deprecated: false

  field :callout_asset_recommendation, 39,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.CalloutAssetRecommendation,
    json_name: "calloutAssetRecommendation",
    oneof: 0,
    deprecated: false

  field :sitelink_asset_recommendation, 40,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.SitelinkAssetRecommendation,
    json_name: "sitelinkAssetRecommendation",
    oneof: 0,
    deprecated: false

  field :call_asset_recommendation, 41,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.CallAssetRecommendation,
    json_name: "callAssetRecommendation",
    oneof: 0,
    deprecated: false

  field :shopping_add_age_group_recommendation, 42,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.ShoppingOfferAttributeRecommendation,
    json_name: "shoppingAddAgeGroupRecommendation",
    oneof: 0,
    deprecated: false

  field :shopping_add_color_recommendation, 43,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.ShoppingOfferAttributeRecommendation,
    json_name: "shoppingAddColorRecommendation",
    oneof: 0,
    deprecated: false

  field :shopping_add_gender_recommendation, 44,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.ShoppingOfferAttributeRecommendation,
    json_name: "shoppingAddGenderRecommendation",
    oneof: 0,
    deprecated: false

  field :shopping_add_gtin_recommendation, 45,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.ShoppingOfferAttributeRecommendation,
    json_name: "shoppingAddGtinRecommendation",
    oneof: 0,
    deprecated: false

  field :shopping_add_more_identifiers_recommendation, 46,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.ShoppingOfferAttributeRecommendation,
    json_name: "shoppingAddMoreIdentifiersRecommendation",
    oneof: 0,
    deprecated: false

  field :shopping_add_size_recommendation, 47,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.ShoppingOfferAttributeRecommendation,
    json_name: "shoppingAddSizeRecommendation",
    oneof: 0,
    deprecated: false

  field :shopping_add_products_to_campaign_recommendation, 48,
    type:
      Google.Ads.Googleads.V14.Resources.Recommendation.ShoppingAddProductsToCampaignRecommendation,
    json_name: "shoppingAddProductsToCampaignRecommendation",
    oneof: 0,
    deprecated: false

  field :shopping_fix_disapproved_products_recommendation, 49,
    type:
      Google.Ads.Googleads.V14.Resources.Recommendation.ShoppingFixDisapprovedProductsRecommendation,
    json_name: "shoppingFixDisapprovedProductsRecommendation",
    oneof: 0,
    deprecated: false

  field :shopping_target_all_offers_recommendation, 50,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.ShoppingTargetAllOffersRecommendation,
    json_name: "shoppingTargetAllOffersRecommendation",
    oneof: 0,
    deprecated: false

  field :shopping_fix_suspended_merchant_center_account_recommendation, 51,
    type:
      Google.Ads.Googleads.V14.Resources.Recommendation.ShoppingMerchantCenterAccountSuspensionRecommendation,
    json_name: "shoppingFixSuspendedMerchantCenterAccountRecommendation",
    oneof: 0,
    deprecated: false

  field :shopping_fix_merchant_center_account_suspension_warning_recommendation, 52,
    type:
      Google.Ads.Googleads.V14.Resources.Recommendation.ShoppingMerchantCenterAccountSuspensionRecommendation,
    json_name: "shoppingFixMerchantCenterAccountSuspensionWarningRecommendation",
    oneof: 0,
    deprecated: false

  field :shopping_migrate_regular_shopping_campaign_offers_to_performance_max_recommendation, 53,
    type:
      Google.Ads.Googleads.V14.Resources.Recommendation.ShoppingMigrateRegularShoppingCampaignOffersToPerformanceMaxRecommendation,
    json_name: "shoppingMigrateRegularShoppingCampaignOffersToPerformanceMaxRecommendation",
    oneof: 0,
    deprecated: false

  field :dynamic_image_extension_opt_in_recommendation, 54,
    type:
      Google.Ads.Googleads.V14.Resources.Recommendation.DynamicImageExtensionOptInRecommendation,
    json_name: "dynamicImageExtensionOptInRecommendation",
    oneof: 0,
    deprecated: false

  field :raise_target_cpa_recommendation, 55,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.RaiseTargetCpaRecommendation,
    json_name: "raiseTargetCpaRecommendation",
    oneof: 0,
    deprecated: false

  field :lower_target_roas_recommendation, 56,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.LowerTargetRoasRecommendation,
    json_name: "lowerTargetRoasRecommendation",
    oneof: 0,
    deprecated: false

  field :performance_max_opt_in_recommendation, 57,
    type: Google.Ads.Googleads.V14.Resources.Recommendation.PerformanceMaxOptInRecommendation,
    json_name: "performanceMaxOptInRecommendation",
    oneof: 0,
    deprecated: false

  field :improve_performance_max_ad_strength_recommendation, 58,
    type:
      Google.Ads.Googleads.V14.Resources.Recommendation.ImprovePerformanceMaxAdStrengthRecommendation,
    json_name: "improvePerformanceMaxAdStrengthRecommendation",
    oneof: 0,
    deprecated: false

  field :migrate_dynamic_search_ads_campaign_to_performance_max_recommendation, 59,
    type:
      Google.Ads.Googleads.V14.Resources.Recommendation.MigrateDynamicSearchAdsCampaignToPerformanceMaxRecommendation,
    json_name: "migrateDynamicSearchAdsCampaignToPerformanceMaxRecommendation",
    oneof: 0,
    deprecated: false
end