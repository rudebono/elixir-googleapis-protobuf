defmodule Google.Ads.Googleads.V9.Resources.Recommendation.RecommendationImpact do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :base_metrics, 1,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.RecommendationMetrics,
    json_name: "baseMetrics",
    deprecated: false

  field :potential_metrics, 2,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.RecommendationMetrics,
    json_name: "potentialMetrics",
    deprecated: false
end

defmodule Google.Ads.Googleads.V9.Resources.Recommendation.RecommendationMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

defmodule Google.Ads.Googleads.V9.Resources.Recommendation.CampaignBudgetRecommendation.CampaignBudgetRecommendationOption do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :budget_amount_micros, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "budgetAmountMicros",
    deprecated: false

  field :impact, 2,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.RecommendationImpact,
    deprecated: false
end

defmodule Google.Ads.Googleads.V9.Resources.Recommendation.CampaignBudgetRecommendation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
      Google.Ads.Googleads.V9.Resources.Recommendation.CampaignBudgetRecommendation.CampaignBudgetRecommendationOption,
    json_name: "budgetOptions",
    deprecated: false
end

defmodule Google.Ads.Googleads.V9.Resources.Recommendation.KeywordRecommendation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :keyword, 1, type: Google.Ads.Googleads.V9.Common.KeywordInfo, deprecated: false

  field :recommended_cpc_bid_micros, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "recommendedCpcBidMicros",
    deprecated: false
end

defmodule Google.Ads.Googleads.V9.Resources.Recommendation.TargetRoasOptInRecommendation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

defmodule Google.Ads.Googleads.V9.Resources.Recommendation.TextAdRecommendation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ad, 1, type: Google.Ads.Googleads.V9.Resources.Ad, deprecated: false

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

defmodule Google.Ads.Googleads.V9.Resources.Recommendation.MaximizeClicksOptInRecommendation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :recommended_budget_amount_micros, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "recommendedBudgetAmountMicros",
    deprecated: false
end

defmodule Google.Ads.Googleads.V9.Resources.Recommendation.TargetCpaOptInRecommendation.TargetCpaOptInRecommendationOption do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :goal, 1,
    type:
      Google.Ads.Googleads.V9.Enums.TargetCpaOptInRecommendationGoalEnum.TargetCpaOptInRecommendationGoal,
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
    type: Google.Ads.Googleads.V9.Resources.Recommendation.RecommendationImpact,
    deprecated: false
end

defmodule Google.Ads.Googleads.V9.Resources.Recommendation.TargetCpaOptInRecommendation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :options, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V9.Resources.Recommendation.TargetCpaOptInRecommendation.TargetCpaOptInRecommendationOption,
    deprecated: false

  field :recommended_target_cpa_micros, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "recommendedTargetCpaMicros",
    deprecated: false
end

defmodule Google.Ads.Googleads.V9.Resources.Recommendation.MaximizeConversionsOptInRecommendation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :recommended_budget_amount_micros, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "recommendedBudgetAmountMicros",
    deprecated: false
end

defmodule Google.Ads.Googleads.V9.Resources.Recommendation.SearchPartnersOptInRecommendation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V9.Resources.Recommendation.MoveUnusedBudgetRecommendation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :excess_campaign_budget, 3,
    proto3_optional: true,
    type: :string,
    json_name: "excessCampaignBudget",
    deprecated: false

  field :budget_recommendation, 2,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.CampaignBudgetRecommendation,
    json_name: "budgetRecommendation",
    deprecated: false
end

defmodule Google.Ads.Googleads.V9.Resources.Recommendation.EnhancedCpcOptInRecommendation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V9.Resources.Recommendation.OptimizeAdRotationRecommendation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V9.Resources.Recommendation.CalloutExtensionRecommendation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :recommended_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V9.Common.CalloutFeedItem,
    json_name: "recommendedExtensions",
    deprecated: false
end

defmodule Google.Ads.Googleads.V9.Resources.Recommendation.SitelinkExtensionRecommendation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :recommended_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V9.Common.SitelinkFeedItem,
    json_name: "recommendedExtensions",
    deprecated: false
end

defmodule Google.Ads.Googleads.V9.Resources.Recommendation.CallExtensionRecommendation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :recommended_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V9.Common.CallFeedItem,
    json_name: "recommendedExtensions",
    deprecated: false
end

defmodule Google.Ads.Googleads.V9.Resources.Recommendation.KeywordMatchTypeRecommendation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :keyword, 1, type: Google.Ads.Googleads.V9.Common.KeywordInfo, deprecated: false

  field :recommended_match_type, 2,
    type: Google.Ads.Googleads.V9.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    json_name: "recommendedMatchType",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V9.Resources.Recommendation.ResponsiveSearchAdRecommendation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ad, 1, type: Google.Ads.Googleads.V9.Resources.Ad, deprecated: false
end

defmodule Google.Ads.Googleads.V9.Resources.Recommendation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :recommendation, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :type, 2,
    type: Google.Ads.Googleads.V9.Enums.RecommendationTypeEnum.RecommendationType,
    enum: true,
    deprecated: false

  field :impact, 3,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.RecommendationImpact,
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

  field :campaign_budget_recommendation, 4,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.CampaignBudgetRecommendation,
    json_name: "campaignBudgetRecommendation",
    oneof: 0,
    deprecated: false

  field :forecasting_campaign_budget_recommendation, 22,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.CampaignBudgetRecommendation,
    json_name: "forecastingCampaignBudgetRecommendation",
    oneof: 0,
    deprecated: false

  field :keyword_recommendation, 8,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.KeywordRecommendation,
    json_name: "keywordRecommendation",
    oneof: 0,
    deprecated: false

  field :text_ad_recommendation, 9,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.TextAdRecommendation,
    json_name: "textAdRecommendation",
    oneof: 0,
    deprecated: false

  field :target_cpa_opt_in_recommendation, 10,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.TargetCpaOptInRecommendation,
    json_name: "targetCpaOptInRecommendation",
    oneof: 0,
    deprecated: false

  field :maximize_conversions_opt_in_recommendation, 11,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.MaximizeConversionsOptInRecommendation,
    json_name: "maximizeConversionsOptInRecommendation",
    oneof: 0,
    deprecated: false

  field :enhanced_cpc_opt_in_recommendation, 12,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.EnhancedCpcOptInRecommendation,
    json_name: "enhancedCpcOptInRecommendation",
    oneof: 0,
    deprecated: false

  field :search_partners_opt_in_recommendation, 14,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.SearchPartnersOptInRecommendation,
    json_name: "searchPartnersOptInRecommendation",
    oneof: 0,
    deprecated: false

  field :maximize_clicks_opt_in_recommendation, 15,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.MaximizeClicksOptInRecommendation,
    json_name: "maximizeClicksOptInRecommendation",
    oneof: 0,
    deprecated: false

  field :optimize_ad_rotation_recommendation, 16,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.OptimizeAdRotationRecommendation,
    json_name: "optimizeAdRotationRecommendation",
    oneof: 0,
    deprecated: false

  field :callout_extension_recommendation, 17,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.CalloutExtensionRecommendation,
    json_name: "calloutExtensionRecommendation",
    oneof: 0,
    deprecated: false

  field :sitelink_extension_recommendation, 18,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.SitelinkExtensionRecommendation,
    json_name: "sitelinkExtensionRecommendation",
    oneof: 0,
    deprecated: false

  field :call_extension_recommendation, 19,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.CallExtensionRecommendation,
    json_name: "callExtensionRecommendation",
    oneof: 0,
    deprecated: false

  field :keyword_match_type_recommendation, 20,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.KeywordMatchTypeRecommendation,
    json_name: "keywordMatchTypeRecommendation",
    oneof: 0,
    deprecated: false

  field :move_unused_budget_recommendation, 21,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.MoveUnusedBudgetRecommendation,
    json_name: "moveUnusedBudgetRecommendation",
    oneof: 0,
    deprecated: false

  field :target_roas_opt_in_recommendation, 23,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.TargetRoasOptInRecommendation,
    json_name: "targetRoasOptInRecommendation",
    oneof: 0,
    deprecated: false

  field :responsive_search_ad_recommendation, 28,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.ResponsiveSearchAdRecommendation,
    json_name: "responsiveSearchAdRecommendation",
    oneof: 0,
    deprecated: false

  field :marginal_roi_campaign_budget_recommendation, 29,
    type: Google.Ads.Googleads.V9.Resources.Recommendation.CampaignBudgetRecommendation,
    json_name: "marginalRoiCampaignBudgetRecommendation",
    oneof: 0,
    deprecated: false
end