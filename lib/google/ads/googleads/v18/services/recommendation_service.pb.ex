defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.AdAssetApplyParameters.ApplyScope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CUSTOMER, 2
  field :CAMPAIGN, 3
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.CampaignBudgetParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :new_budget_amount_micros, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "newBudgetAmountMicros"
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.ForecastingSetTargetRoasParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target_roas, 1, proto3_optional: true, type: :double, json_name: "targetRoas"

  field :campaign_budget_amount_micros, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "campaignBudgetAmountMicros"
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.TextAdParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ad, 1, type: Google.Ads.Googleads.V18.Resources.Ad
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.KeywordParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ad_group, 4, proto3_optional: true, type: :string, json_name: "adGroup"

  field :match_type, 2,
    type: Google.Ads.Googleads.V18.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    json_name: "matchType",
    enum: true

  field :cpc_bid_micros, 5, proto3_optional: true, type: :int64, json_name: "cpcBidMicros"
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.TargetCpaOptInParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target_cpa_micros, 3, proto3_optional: true, type: :int64, json_name: "targetCpaMicros"

  field :new_campaign_budget_amount_micros, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "newCampaignBudgetAmountMicros"
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.TargetRoasOptInParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target_roas, 1, proto3_optional: true, type: :double, json_name: "targetRoas"

  field :new_campaign_budget_amount_micros, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "newCampaignBudgetAmountMicros"
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.CalloutExtensionParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :callout_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.CalloutFeedItem,
    json_name: "calloutExtensions"
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.CallExtensionParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :call_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.CallFeedItem,
    json_name: "callExtensions"
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.SitelinkExtensionParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sitelink_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.SitelinkFeedItem,
    json_name: "sitelinkExtensions"
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.CalloutAssetParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ad_asset_apply_parameters, 1,
    type: Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.AdAssetApplyParameters,
    json_name: "adAssetApplyParameters",
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.CallAssetParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ad_asset_apply_parameters, 1,
    type: Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.AdAssetApplyParameters,
    json_name: "adAssetApplyParameters",
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.SitelinkAssetParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ad_asset_apply_parameters, 1,
    type: Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.AdAssetApplyParameters,
    json_name: "adAssetApplyParameters",
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.RaiseTargetCpaParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target_cpa_multiplier, 1,
    type: :double,
    json_name: "targetCpaMultiplier",
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.LowerTargetRoasParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target_roas_multiplier, 1,
    type: :double,
    json_name: "targetRoasMultiplier",
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.AdAssetApplyParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :new_assets, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Resources.Asset,
    json_name: "newAssets"

  field :existing_assets, 2, repeated: true, type: :string, json_name: "existingAssets"

  field :scope, 3,
    type:
      Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.AdAssetApplyParameters.ApplyScope,
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.MoveUnusedBudgetParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :budget_micros_to_move, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "budgetMicrosToMove"
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.ResponsiveSearchAdAssetParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :updated_ad, 1, type: Google.Ads.Googleads.V18.Resources.Ad, json_name: "updatedAd"
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.ResponsiveSearchAdImproveAdStrengthParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :updated_ad, 1, type: Google.Ads.Googleads.V18.Resources.Ad, json_name: "updatedAd"
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.ResponsiveSearchAdParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ad, 1, type: Google.Ads.Googleads.V18.Resources.Ad, deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.RaiseTargetCpaBidTooLowParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target_multiplier, 1, type: :double, json_name: "targetMultiplier", deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.UseBroadMatchKeywordParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :new_budget_amount_micros, 1,
    proto3_optional: true,
    type: :int64,
    json_name: "newBudgetAmountMicros"
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.ForecastingSetTargetCpaParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target_cpa_micros, 1, proto3_optional: true, type: :int64, json_name: "targetCpaMicros"

  field :campaign_budget_amount_micros, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "campaignBudgetAmountMicros"
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.LeadFormAssetParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ad_asset_apply_parameters, 1,
    type: Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.AdAssetApplyParameters,
    json_name: "adAssetApplyParameters",
    deprecated: false

  field :set_submit_lead_form_asset_campaign_goal, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "setSubmitLeadFormAssetCampaignGoal"
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :apply_parameters, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :campaign_budget, 2,
    type: Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.CampaignBudgetParameters,
    json_name: "campaignBudget",
    oneof: 0

  field :text_ad, 3,
    type: Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.TextAdParameters,
    json_name: "textAd",
    oneof: 0

  field :keyword, 4,
    type: Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.KeywordParameters,
    oneof: 0

  field :target_cpa_opt_in, 5,
    type: Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.TargetCpaOptInParameters,
    json_name: "targetCpaOptIn",
    oneof: 0

  field :target_roas_opt_in, 10,
    type:
      Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.TargetRoasOptInParameters,
    json_name: "targetRoasOptIn",
    oneof: 0

  field :callout_extension, 6,
    type:
      Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.CalloutExtensionParameters,
    json_name: "calloutExtension",
    oneof: 0

  field :call_extension, 7,
    type: Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.CallExtensionParameters,
    json_name: "callExtension",
    oneof: 0

  field :sitelink_extension, 8,
    type:
      Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.SitelinkExtensionParameters,
    json_name: "sitelinkExtension",
    oneof: 0

  field :move_unused_budget, 9,
    type:
      Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.MoveUnusedBudgetParameters,
    json_name: "moveUnusedBudget",
    oneof: 0

  field :responsive_search_ad, 11,
    type:
      Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.ResponsiveSearchAdParameters,
    json_name: "responsiveSearchAd",
    oneof: 0

  field :use_broad_match_keyword, 12,
    type:
      Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.UseBroadMatchKeywordParameters,
    json_name: "useBroadMatchKeyword",
    oneof: 0

  field :responsive_search_ad_asset, 13,
    type:
      Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.ResponsiveSearchAdAssetParameters,
    json_name: "responsiveSearchAdAsset",
    oneof: 0

  field :responsive_search_ad_improve_ad_strength, 14,
    type:
      Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.ResponsiveSearchAdImproveAdStrengthParameters,
    json_name: "responsiveSearchAdImproveAdStrength",
    oneof: 0

  field :raise_target_cpa_bid_too_low, 15,
    type:
      Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.RaiseTargetCpaBidTooLowParameters,
    json_name: "raiseTargetCpaBidTooLow",
    oneof: 0

  field :forecasting_set_target_roas, 16,
    type:
      Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.ForecastingSetTargetRoasParameters,
    json_name: "forecastingSetTargetRoas",
    oneof: 0

  field :callout_asset, 17,
    type: Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.CalloutAssetParameters,
    json_name: "calloutAsset",
    oneof: 0

  field :call_asset, 18,
    type: Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.CallAssetParameters,
    json_name: "callAsset",
    oneof: 0

  field :sitelink_asset, 19,
    type: Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.SitelinkAssetParameters,
    json_name: "sitelinkAsset",
    oneof: 0

  field :raise_target_cpa, 20,
    type: Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.RaiseTargetCpaParameters,
    json_name: "raiseTargetCpa",
    oneof: 0

  field :lower_target_roas, 21,
    type:
      Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.LowerTargetRoasParameters,
    json_name: "lowerTargetRoas",
    oneof: 0

  field :forecasting_set_target_cpa, 22,
    type:
      Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.ForecastingSetTargetCpaParameters,
    json_name: "forecastingSetTargetCpa",
    oneof: 0

  field :set_target_cpa, 23,
    type:
      Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.ForecastingSetTargetCpaParameters,
    json_name: "setTargetCpa",
    oneof: 0

  field :set_target_roas, 24,
    type:
      Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.ForecastingSetTargetRoasParameters,
    json_name: "setTargetRoas",
    oneof: 0

  field :lead_form_asset, 25,
    type: Google.Ads.Googleads.V18.Services.ApplyRecommendationOperation.LeadFormAssetParameters,
    json_name: "leadFormAsset",
    oneof: 0
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.ApplyRecommendationResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end

defmodule Google.Ads.Googleads.V18.Services.ApplyRecommendationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.DismissRecommendationRequest.DismissRecommendationOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
end

defmodule Google.Ads.Googleads.V18.Services.DismissRecommendationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 3,
    repeated: true,
    type:
      Google.Ads.Googleads.V18.Services.DismissRecommendationRequest.DismissRecommendationOperation,
    deprecated: false

  field :partial_failure, 2, type: :bool, json_name: "partialFailure"
end

defmodule Google.Ads.Googleads.V18.Services.DismissRecommendationResponse.DismissRecommendationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
end

defmodule Google.Ads.Googleads.V18.Services.DismissRecommendationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V18.Services.DismissRecommendationResponse.DismissRecommendationResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end

defmodule Google.Ads.Googleads.V18.Services.GenerateRecommendationsRequest.BiddingInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :bidding_strategy_target_info, 0

  field :bidding_strategy_type, 1,
    proto3_optional: true,
    type: Google.Ads.Googleads.V18.Enums.BiddingStrategyTypeEnum.BiddingStrategyType,
    json_name: "biddingStrategyType",
    enum: true

  field :target_cpa_micros, 2, type: :int64, json_name: "targetCpaMicros", oneof: 0
  field :target_roas, 3, type: :double, json_name: "targetRoas", oneof: 0

  field :target_impression_share_info, 4,
    type:
      Google.Ads.Googleads.V18.Services.GenerateRecommendationsRequest.TargetImpressionShareInfo,
    json_name: "targetImpressionShareInfo",
    oneof: 0,
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.GenerateRecommendationsRequest.AdGroupInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ad_group_type, 1,
    proto3_optional: true,
    type: Google.Ads.Googleads.V18.Enums.AdGroupTypeEnum.AdGroupType,
    json_name: "adGroupType",
    enum: true,
    deprecated: false

  field :keywords, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.KeywordInfo,
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.GenerateRecommendationsRequest.SeedInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :url_seed, 2, proto3_optional: true, type: :string, json_name: "urlSeed"

  field :keyword_seeds, 3,
    repeated: true,
    type: :string,
    json_name: "keywordSeeds",
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.GenerateRecommendationsRequest.BudgetInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :current_budget, 1,
    proto3_optional: true,
    type: :int64,
    json_name: "currentBudget",
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.GenerateRecommendationsRequest.AssetGroupInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :final_url, 1,
    proto3_optional: true,
    type: :string,
    json_name: "finalUrl",
    deprecated: false

  field :headline, 2, repeated: true, type: :string, deprecated: false
  field :description, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.GenerateRecommendationsRequest.TargetImpressionShareInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location, 1,
    proto3_optional: true,
    type:
      Google.Ads.Googleads.V18.Enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation,
    enum: true,
    deprecated: false

  field :target_impression_share_micros, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "targetImpressionShareMicros",
    deprecated: false

  field :max_cpc_bid_ceiling, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "maxCpcBidCeiling",
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.GenerateRecommendationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :recommendation_types, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Enums.RecommendationTypeEnum.RecommendationType,
    json_name: "recommendationTypes",
    enum: true,
    deprecated: false

  field :advertising_channel_type, 3,
    type: Google.Ads.Googleads.V18.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType,
    json_name: "advertisingChannelType",
    enum: true,
    deprecated: false

  field :campaign_sitelink_count, 4,
    proto3_optional: true,
    type: :int32,
    json_name: "campaignSitelinkCount",
    deprecated: false

  field :conversion_tracking_status, 5,
    proto3_optional: true,
    type: Google.Ads.Googleads.V18.Enums.ConversionTrackingStatusEnum.ConversionTrackingStatus,
    json_name: "conversionTrackingStatus",
    enum: true,
    deprecated: false

  field :bidding_info, 6,
    proto3_optional: true,
    type: Google.Ads.Googleads.V18.Services.GenerateRecommendationsRequest.BiddingInfo,
    json_name: "biddingInfo",
    deprecated: false

  field :ad_group_info, 7,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.GenerateRecommendationsRequest.AdGroupInfo,
    json_name: "adGroupInfo",
    deprecated: false

  field :seed_info, 8,
    proto3_optional: true,
    type: Google.Ads.Googleads.V18.Services.GenerateRecommendationsRequest.SeedInfo,
    json_name: "seedInfo",
    deprecated: false

  field :budget_info, 9,
    proto3_optional: true,
    type: Google.Ads.Googleads.V18.Services.GenerateRecommendationsRequest.BudgetInfo,
    json_name: "budgetInfo",
    deprecated: false

  field :campaign_image_asset_count, 10,
    proto3_optional: true,
    type: :int32,
    json_name: "campaignImageAssetCount",
    deprecated: false

  field :campaign_call_asset_count, 11,
    proto3_optional: true,
    type: :int32,
    json_name: "campaignCallAssetCount",
    deprecated: false

  field :country_codes, 13,
    repeated: true,
    type: :string,
    json_name: "countryCodes",
    deprecated: false

  field :language_codes, 14,
    repeated: true,
    type: :string,
    json_name: "languageCodes",
    deprecated: false

  field :positive_locations_ids, 15,
    repeated: true,
    type: :int64,
    json_name: "positiveLocationsIds",
    deprecated: false

  field :negative_locations_ids, 16,
    repeated: true,
    type: :int64,
    json_name: "negativeLocationsIds",
    deprecated: false

  field :asset_group_info, 17,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.GenerateRecommendationsRequest.AssetGroupInfo,
    json_name: "assetGroupInfo",
    deprecated: false

  field :target_partner_search_network, 18,
    proto3_optional: true,
    type: :bool,
    json_name: "targetPartnerSearchNetwork",
    deprecated: false

  field :target_content_network, 19,
    proto3_optional: true,
    type: :bool,
    json_name: "targetContentNetwork",
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.GenerateRecommendationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :recommendations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Resources.Recommendation
end

defmodule Google.Ads.Googleads.V18.Services.RecommendationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v18.services.RecommendationService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ApplyRecommendation,
      Google.Ads.Googleads.V18.Services.ApplyRecommendationRequest,
      Google.Ads.Googleads.V18.Services.ApplyRecommendationResponse

  rpc :DismissRecommendation,
      Google.Ads.Googleads.V18.Services.DismissRecommendationRequest,
      Google.Ads.Googleads.V18.Services.DismissRecommendationResponse

  rpc :GenerateRecommendations,
      Google.Ads.Googleads.V18.Services.GenerateRecommendationsRequest,
      Google.Ads.Googleads.V18.Services.GenerateRecommendationsResponse
end

defmodule Google.Ads.Googleads.V18.Services.RecommendationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V18.Services.RecommendationService.Service
end
