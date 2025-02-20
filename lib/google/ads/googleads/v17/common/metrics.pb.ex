defmodule Google.Ads.Googleads.V17.Common.Metrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :absolute_top_impression_percentage, 183,
    proto3_optional: true,
    type: :double,
    json_name: "absoluteTopImpressionPercentage"

  field :active_view_cpm, 184, proto3_optional: true, type: :double, json_name: "activeViewCpm"
  field :active_view_ctr, 185, proto3_optional: true, type: :double, json_name: "activeViewCtr"

  field :active_view_impressions, 186,
    proto3_optional: true,
    type: :int64,
    json_name: "activeViewImpressions"

  field :active_view_measurability, 187,
    proto3_optional: true,
    type: :double,
    json_name: "activeViewMeasurability"

  field :active_view_measurable_cost_micros, 188,
    proto3_optional: true,
    type: :int64,
    json_name: "activeViewMeasurableCostMicros"

  field :active_view_measurable_impressions, 189,
    proto3_optional: true,
    type: :int64,
    json_name: "activeViewMeasurableImpressions"

  field :active_view_viewability, 190,
    proto3_optional: true,
    type: :double,
    json_name: "activeViewViewability"

  field :all_conversions_from_interactions_rate, 191,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsFromInteractionsRate"

  field :all_conversions_value, 192,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsValue"

  field :all_conversions_value_by_conversion_date, 240,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsValueByConversionDate"

  field :all_new_customer_lifetime_value, 294,
    proto3_optional: true,
    type: :double,
    json_name: "allNewCustomerLifetimeValue"

  field :all_conversions, 193, proto3_optional: true, type: :double, json_name: "allConversions"

  field :all_conversions_by_conversion_date, 241,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsByConversionDate"

  field :all_conversions_value_per_cost, 194,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsValuePerCost"

  field :all_conversions_from_click_to_call, 195,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsFromClickToCall"

  field :all_conversions_from_directions, 196,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsFromDirections"

  field :all_conversions_from_interactions_value_per_interaction, 197,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsFromInteractionsValuePerInteraction"

  field :all_conversions_from_menu, 198,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsFromMenu"

  field :all_conversions_from_order, 199,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsFromOrder"

  field :all_conversions_from_other_engagement, 200,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsFromOtherEngagement"

  field :all_conversions_from_store_visit, 201,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsFromStoreVisit"

  field :all_conversions_from_store_website, 202,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsFromStoreWebsite"

  field :auction_insight_search_absolute_top_impression_percentage, 258,
    proto3_optional: true,
    type: :double,
    json_name: "auctionInsightSearchAbsoluteTopImpressionPercentage"

  field :auction_insight_search_impression_share, 259,
    proto3_optional: true,
    type: :double,
    json_name: "auctionInsightSearchImpressionShare"

  field :auction_insight_search_outranking_share, 260,
    proto3_optional: true,
    type: :double,
    json_name: "auctionInsightSearchOutrankingShare"

  field :auction_insight_search_overlap_rate, 261,
    proto3_optional: true,
    type: :double,
    json_name: "auctionInsightSearchOverlapRate"

  field :auction_insight_search_position_above_rate, 262,
    proto3_optional: true,
    type: :double,
    json_name: "auctionInsightSearchPositionAboveRate"

  field :auction_insight_search_top_impression_percentage, 263,
    proto3_optional: true,
    type: :double,
    json_name: "auctionInsightSearchTopImpressionPercentage"

  field :average_cost, 203, proto3_optional: true, type: :double, json_name: "averageCost"
  field :average_cpc, 204, proto3_optional: true, type: :double, json_name: "averageCpc"
  field :average_cpe, 205, proto3_optional: true, type: :double, json_name: "averageCpe"
  field :average_cpm, 206, proto3_optional: true, type: :double, json_name: "averageCpm"
  field :average_cpv, 207, proto3_optional: true, type: :double, json_name: "averageCpv"

  field :average_page_views, 208,
    proto3_optional: true,
    type: :double,
    json_name: "averagePageViews"

  field :average_time_on_site, 209,
    proto3_optional: true,
    type: :double,
    json_name: "averageTimeOnSite"

  field :benchmark_average_max_cpc, 210,
    proto3_optional: true,
    type: :double,
    json_name: "benchmarkAverageMaxCpc"

  field :biddable_app_install_conversions, 254,
    proto3_optional: true,
    type: :double,
    json_name: "biddableAppInstallConversions"

  field :biddable_app_post_install_conversions, 255,
    proto3_optional: true,
    type: :double,
    json_name: "biddableAppPostInstallConversions"

  field :benchmark_ctr, 211, proto3_optional: true, type: :double, json_name: "benchmarkCtr"
  field :bounce_rate, 212, proto3_optional: true, type: :double, json_name: "bounceRate"
  field :clicks, 131, proto3_optional: true, type: :int64
  field :combined_clicks, 156, proto3_optional: true, type: :int64, json_name: "combinedClicks"

  field :combined_clicks_per_query, 157,
    proto3_optional: true,
    type: :double,
    json_name: "combinedClicksPerQuery"

  field :combined_queries, 158, proto3_optional: true, type: :int64, json_name: "combinedQueries"

  field :content_budget_lost_impression_share, 159,
    proto3_optional: true,
    type: :double,
    json_name: "contentBudgetLostImpressionShare"

  field :content_impression_share, 160,
    proto3_optional: true,
    type: :double,
    json_name: "contentImpressionShare"

  field :conversion_last_received_request_date_time, 161,
    proto3_optional: true,
    type: :string,
    json_name: "conversionLastReceivedRequestDateTime"

  field :conversion_last_conversion_date, 162,
    proto3_optional: true,
    type: :string,
    json_name: "conversionLastConversionDate"

  field :content_rank_lost_impression_share, 163,
    proto3_optional: true,
    type: :double,
    json_name: "contentRankLostImpressionShare"

  field :conversions_from_interactions_rate, 164,
    proto3_optional: true,
    type: :double,
    json_name: "conversionsFromInteractionsRate"

  field :conversions_value, 165,
    proto3_optional: true,
    type: :double,
    json_name: "conversionsValue"

  field :conversions_value_by_conversion_date, 242,
    proto3_optional: true,
    type: :double,
    json_name: "conversionsValueByConversionDate"

  field :new_customer_lifetime_value, 293,
    proto3_optional: true,
    type: :double,
    json_name: "newCustomerLifetimeValue"

  field :conversions_value_per_cost, 166,
    proto3_optional: true,
    type: :double,
    json_name: "conversionsValuePerCost"

  field :conversions_from_interactions_value_per_interaction, 167,
    proto3_optional: true,
    type: :double,
    json_name: "conversionsFromInteractionsValuePerInteraction"

  field :conversions, 168, proto3_optional: true, type: :double

  field :conversions_by_conversion_date, 243,
    proto3_optional: true,
    type: :double,
    json_name: "conversionsByConversionDate"

  field :cost_micros, 169, proto3_optional: true, type: :int64, json_name: "costMicros"

  field :cost_per_all_conversions, 170,
    proto3_optional: true,
    type: :double,
    json_name: "costPerAllConversions"

  field :cost_per_conversion, 171,
    proto3_optional: true,
    type: :double,
    json_name: "costPerConversion"

  field :cost_per_current_model_attributed_conversion, 172,
    proto3_optional: true,
    type: :double,
    json_name: "costPerCurrentModelAttributedConversion"

  field :cross_device_conversions, 173,
    proto3_optional: true,
    type: :double,
    json_name: "crossDeviceConversions"

  field :cross_device_conversions_value_micros, 312,
    proto3_optional: true,
    type: :int64,
    json_name: "crossDeviceConversionsValueMicros"

  field :ctr, 174, proto3_optional: true, type: :double

  field :current_model_attributed_conversions, 175,
    proto3_optional: true,
    type: :double,
    json_name: "currentModelAttributedConversions"

  field :current_model_attributed_conversions_from_interactions_rate, 176,
    proto3_optional: true,
    type: :double,
    json_name: "currentModelAttributedConversionsFromInteractionsRate"

  field :current_model_attributed_conversions_from_interactions_value_per_interaction, 177,
    proto3_optional: true,
    type: :double,
    json_name: "currentModelAttributedConversionsFromInteractionsValuePerInteraction"

  field :current_model_attributed_conversions_value, 178,
    proto3_optional: true,
    type: :double,
    json_name: "currentModelAttributedConversionsValue"

  field :current_model_attributed_conversions_value_per_cost, 179,
    proto3_optional: true,
    type: :double,
    json_name: "currentModelAttributedConversionsValuePerCost"

  field :engagement_rate, 180, proto3_optional: true, type: :double, json_name: "engagementRate"
  field :engagements, 181, proto3_optional: true, type: :int64

  field :hotel_average_lead_value_micros, 213,
    proto3_optional: true,
    type: :double,
    json_name: "hotelAverageLeadValueMicros"

  field :hotel_commission_rate_micros, 256,
    proto3_optional: true,
    type: :int64,
    json_name: "hotelCommissionRateMicros"

  field :hotel_expected_commission_cost, 257,
    proto3_optional: true,
    type: :double,
    json_name: "hotelExpectedCommissionCost"

  field :hotel_price_difference_percentage, 214,
    proto3_optional: true,
    type: :double,
    json_name: "hotelPriceDifferencePercentage"

  field :hotel_eligible_impressions, 215,
    proto3_optional: true,
    type: :int64,
    json_name: "hotelEligibleImpressions"

  field :historical_creative_quality_score, 80,
    type: Google.Ads.Googleads.V17.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    json_name: "historicalCreativeQualityScore",
    enum: true

  field :historical_landing_page_quality_score, 81,
    type: Google.Ads.Googleads.V17.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    json_name: "historicalLandingPageQualityScore",
    enum: true

  field :historical_quality_score, 216,
    proto3_optional: true,
    type: :int64,
    json_name: "historicalQualityScore"

  field :historical_search_predicted_ctr, 83,
    type: Google.Ads.Googleads.V17.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    json_name: "historicalSearchPredictedCtr",
    enum: true

  field :gmail_forwards, 217, proto3_optional: true, type: :int64, json_name: "gmailForwards"
  field :gmail_saves, 218, proto3_optional: true, type: :int64, json_name: "gmailSaves"

  field :gmail_secondary_clicks, 219,
    proto3_optional: true,
    type: :int64,
    json_name: "gmailSecondaryClicks"

  field :impressions_from_store_reach, 220,
    proto3_optional: true,
    type: :int64,
    json_name: "impressionsFromStoreReach"

  field :impressions, 221, proto3_optional: true, type: :int64
  field :interaction_rate, 222, proto3_optional: true, type: :double, json_name: "interactionRate"
  field :interactions, 223, proto3_optional: true, type: :int64

  field :interaction_event_types, 100,
    repeated: true,
    type: Google.Ads.Googleads.V17.Enums.InteractionEventTypeEnum.InteractionEventType,
    json_name: "interactionEventTypes",
    enum: true

  field :invalid_click_rate, 224,
    proto3_optional: true,
    type: :double,
    json_name: "invalidClickRate"

  field :invalid_clicks, 225, proto3_optional: true, type: :int64, json_name: "invalidClicks"
  field :message_chats, 226, proto3_optional: true, type: :int64, json_name: "messageChats"

  field :message_impressions, 227,
    proto3_optional: true,
    type: :int64,
    json_name: "messageImpressions"

  field :message_chat_rate, 228,
    proto3_optional: true,
    type: :double,
    json_name: "messageChatRate"

  field :mobile_friendly_clicks_percentage, 229,
    proto3_optional: true,
    type: :double,
    json_name: "mobileFriendlyClicksPercentage"

  field :optimization_score_uplift, 247,
    proto3_optional: true,
    type: :double,
    json_name: "optimizationScoreUplift"

  field :optimization_score_url, 248,
    proto3_optional: true,
    type: :string,
    json_name: "optimizationScoreUrl"

  field :organic_clicks, 230, proto3_optional: true, type: :int64, json_name: "organicClicks"

  field :organic_clicks_per_query, 231,
    proto3_optional: true,
    type: :double,
    json_name: "organicClicksPerQuery"

  field :organic_impressions, 232,
    proto3_optional: true,
    type: :int64,
    json_name: "organicImpressions"

  field :organic_impressions_per_query, 233,
    proto3_optional: true,
    type: :double,
    json_name: "organicImpressionsPerQuery"

  field :organic_queries, 234, proto3_optional: true, type: :int64, json_name: "organicQueries"

  field :percent_new_visitors, 235,
    proto3_optional: true,
    type: :double,
    json_name: "percentNewVisitors"

  field :phone_calls, 236, proto3_optional: true, type: :int64, json_name: "phoneCalls"

  field :phone_impressions, 237,
    proto3_optional: true,
    type: :int64,
    json_name: "phoneImpressions"

  field :phone_through_rate, 238,
    proto3_optional: true,
    type: :double,
    json_name: "phoneThroughRate"

  field :relative_ctr, 239, proto3_optional: true, type: :double, json_name: "relativeCtr"

  field :search_absolute_top_impression_share, 136,
    proto3_optional: true,
    type: :double,
    json_name: "searchAbsoluteTopImpressionShare"

  field :search_budget_lost_absolute_top_impression_share, 137,
    proto3_optional: true,
    type: :double,
    json_name: "searchBudgetLostAbsoluteTopImpressionShare"

  field :search_budget_lost_impression_share, 138,
    proto3_optional: true,
    type: :double,
    json_name: "searchBudgetLostImpressionShare"

  field :search_budget_lost_top_impression_share, 139,
    proto3_optional: true,
    type: :double,
    json_name: "searchBudgetLostTopImpressionShare"

  field :search_click_share, 140,
    proto3_optional: true,
    type: :double,
    json_name: "searchClickShare"

  field :search_exact_match_impression_share, 141,
    proto3_optional: true,
    type: :double,
    json_name: "searchExactMatchImpressionShare"

  field :search_impression_share, 142,
    proto3_optional: true,
    type: :double,
    json_name: "searchImpressionShare"

  field :search_rank_lost_absolute_top_impression_share, 143,
    proto3_optional: true,
    type: :double,
    json_name: "searchRankLostAbsoluteTopImpressionShare"

  field :search_rank_lost_impression_share, 144,
    proto3_optional: true,
    type: :double,
    json_name: "searchRankLostImpressionShare"

  field :search_rank_lost_top_impression_share, 145,
    proto3_optional: true,
    type: :double,
    json_name: "searchRankLostTopImpressionShare"

  field :search_top_impression_share, 146,
    proto3_optional: true,
    type: :double,
    json_name: "searchTopImpressionShare"

  field :search_volume, 295,
    proto3_optional: true,
    type: Google.Ads.Googleads.V17.Common.SearchVolumeRange,
    json_name: "searchVolume"

  field :speed_score, 147, proto3_optional: true, type: :int64, json_name: "speedScore"

  field :average_target_cpa_micros, 290,
    proto3_optional: true,
    type: :int64,
    json_name: "averageTargetCpaMicros"

  field :average_target_roas, 250,
    proto3_optional: true,
    type: :double,
    json_name: "averageTargetRoas"

  field :top_impression_percentage, 148,
    proto3_optional: true,
    type: :double,
    json_name: "topImpressionPercentage"

  field :valid_accelerated_mobile_pages_clicks_percentage, 149,
    proto3_optional: true,
    type: :double,
    json_name: "validAcceleratedMobilePagesClicksPercentage"

  field :value_per_all_conversions, 150,
    proto3_optional: true,
    type: :double,
    json_name: "valuePerAllConversions"

  field :value_per_all_conversions_by_conversion_date, 244,
    proto3_optional: true,
    type: :double,
    json_name: "valuePerAllConversionsByConversionDate"

  field :value_per_conversion, 151,
    proto3_optional: true,
    type: :double,
    json_name: "valuePerConversion"

  field :value_per_conversions_by_conversion_date, 245,
    proto3_optional: true,
    type: :double,
    json_name: "valuePerConversionsByConversionDate"

  field :value_per_current_model_attributed_conversion, 152,
    proto3_optional: true,
    type: :double,
    json_name: "valuePerCurrentModelAttributedConversion"

  field :video_quartile_p100_rate, 132,
    proto3_optional: true,
    type: :double,
    json_name: "videoQuartileP100Rate"

  field :video_quartile_p25_rate, 133,
    proto3_optional: true,
    type: :double,
    json_name: "videoQuartileP25Rate"

  field :video_quartile_p50_rate, 134,
    proto3_optional: true,
    type: :double,
    json_name: "videoQuartileP50Rate"

  field :video_quartile_p75_rate, 135,
    proto3_optional: true,
    type: :double,
    json_name: "videoQuartileP75Rate"

  field :video_view_rate, 153, proto3_optional: true, type: :double, json_name: "videoViewRate"
  field :video_views, 154, proto3_optional: true, type: :int64, json_name: "videoViews"

  field :view_through_conversions, 155,
    proto3_optional: true,
    type: :int64,
    json_name: "viewThroughConversions"

  field :sk_ad_network_installs, 246, type: :int64, json_name: "skAdNetworkInstalls"

  field :sk_ad_network_total_conversions, 292,
    type: :int64,
    json_name: "skAdNetworkTotalConversions"

  field :publisher_purchased_clicks, 264, type: :int64, json_name: "publisherPurchasedClicks"
  field :publisher_organic_clicks, 265, type: :int64, json_name: "publisherOrganicClicks"
  field :publisher_unknown_clicks, 266, type: :int64, json_name: "publisherUnknownClicks"

  field :all_conversions_from_location_asset_click_to_call, 267,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsFromLocationAssetClickToCall"

  field :all_conversions_from_location_asset_directions, 268,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsFromLocationAssetDirections"

  field :all_conversions_from_location_asset_menu, 269,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsFromLocationAssetMenu"

  field :all_conversions_from_location_asset_order, 270,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsFromLocationAssetOrder"

  field :all_conversions_from_location_asset_other_engagement, 271,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsFromLocationAssetOtherEngagement"

  field :all_conversions_from_location_asset_store_visits, 272,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsFromLocationAssetStoreVisits"

  field :all_conversions_from_location_asset_website, 273,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsFromLocationAssetWebsite"

  field :eligible_impressions_from_location_asset_store_reach, 274,
    proto3_optional: true,
    type: :int64,
    json_name: "eligibleImpressionsFromLocationAssetStoreReach"

  field :view_through_conversions_from_location_asset_click_to_call, 275,
    proto3_optional: true,
    type: :double,
    json_name: "viewThroughConversionsFromLocationAssetClickToCall"

  field :view_through_conversions_from_location_asset_directions, 276,
    proto3_optional: true,
    type: :double,
    json_name: "viewThroughConversionsFromLocationAssetDirections"

  field :view_through_conversions_from_location_asset_menu, 277,
    proto3_optional: true,
    type: :double,
    json_name: "viewThroughConversionsFromLocationAssetMenu"

  field :view_through_conversions_from_location_asset_order, 278,
    proto3_optional: true,
    type: :double,
    json_name: "viewThroughConversionsFromLocationAssetOrder"

  field :view_through_conversions_from_location_asset_other_engagement, 279,
    proto3_optional: true,
    type: :double,
    json_name: "viewThroughConversionsFromLocationAssetOtherEngagement"

  field :view_through_conversions_from_location_asset_store_visits, 280,
    proto3_optional: true,
    type: :double,
    json_name: "viewThroughConversionsFromLocationAssetStoreVisits"

  field :view_through_conversions_from_location_asset_website, 281,
    proto3_optional: true,
    type: :double,
    json_name: "viewThroughConversionsFromLocationAssetWebsite"

  field :orders, 296, proto3_optional: true, type: :double

  field :average_order_value_micros, 297,
    proto3_optional: true,
    type: :int64,
    json_name: "averageOrderValueMicros"

  field :average_cart_size, 298,
    proto3_optional: true,
    type: :double,
    json_name: "averageCartSize"

  field :cost_of_goods_sold_micros, 299,
    proto3_optional: true,
    type: :int64,
    json_name: "costOfGoodsSoldMicros"

  field :gross_profit_micros, 300,
    proto3_optional: true,
    type: :int64,
    json_name: "grossProfitMicros"

  field :gross_profit_margin, 301,
    proto3_optional: true,
    type: :double,
    json_name: "grossProfitMargin"

  field :revenue_micros, 302, proto3_optional: true, type: :int64, json_name: "revenueMicros"
  field :units_sold, 303, proto3_optional: true, type: :double, json_name: "unitsSold"

  field :cross_sell_cost_of_goods_sold_micros, 304,
    proto3_optional: true,
    type: :int64,
    json_name: "crossSellCostOfGoodsSoldMicros"

  field :cross_sell_gross_profit_micros, 305,
    proto3_optional: true,
    type: :int64,
    json_name: "crossSellGrossProfitMicros"

  field :cross_sell_revenue_micros, 306,
    proto3_optional: true,
    type: :int64,
    json_name: "crossSellRevenueMicros"

  field :cross_sell_units_sold, 307,
    proto3_optional: true,
    type: :double,
    json_name: "crossSellUnitsSold"

  field :lead_cost_of_goods_sold_micros, 308,
    proto3_optional: true,
    type: :int64,
    json_name: "leadCostOfGoodsSoldMicros"

  field :lead_gross_profit_micros, 309,
    proto3_optional: true,
    type: :int64,
    json_name: "leadGrossProfitMicros"

  field :lead_revenue_micros, 310,
    proto3_optional: true,
    type: :int64,
    json_name: "leadRevenueMicros"

  field :lead_units_sold, 311, proto3_optional: true, type: :double, json_name: "leadUnitsSold"
  field :unique_users, 319, proto3_optional: true, type: :int64, json_name: "uniqueUsers"

  field :average_impression_frequency_per_user, 320,
    proto3_optional: true,
    type: :double,
    json_name: "averageImpressionFrequencyPerUser"

  field :linked_entities_count, 341,
    proto3_optional: true,
    type: :int64,
    json_name: "linkedEntitiesCount"

  field :linked_sample_entities, 342,
    repeated: true,
    type: :string,
    json_name: "linkedSampleEntities"

  field :sample_best_performance_entities, 343,
    repeated: true,
    type: :string,
    json_name: "sampleBestPerformanceEntities"

  field :sample_good_performance_entities, 344,
    repeated: true,
    type: :string,
    json_name: "sampleGoodPerformanceEntities"

  field :sample_low_performance_entities, 345,
    repeated: true,
    type: :string,
    json_name: "sampleLowPerformanceEntities"

  field :sample_learning_performance_entities, 346,
    repeated: true,
    type: :string,
    json_name: "sampleLearningPerformanceEntities"

  field :sample_unrated_performance_entities, 347,
    repeated: true,
    type: :string,
    json_name: "sampleUnratedPerformanceEntities"

  field :asset_pinned_total_count, 348,
    proto3_optional: true,
    type: :int64,
    json_name: "assetPinnedTotalCount"

  field :asset_pinned_as_headline_position_one_count, 349,
    proto3_optional: true,
    type: :int64,
    json_name: "assetPinnedAsHeadlinePositionOneCount"

  field :asset_pinned_as_headline_position_two_count, 350,
    proto3_optional: true,
    type: :int64,
    json_name: "assetPinnedAsHeadlinePositionTwoCount"

  field :asset_pinned_as_headline_position_three_count, 351,
    proto3_optional: true,
    type: :int64,
    json_name: "assetPinnedAsHeadlinePositionThreeCount"

  field :asset_pinned_as_description_position_one_count, 352,
    proto3_optional: true,
    type: :int64,
    json_name: "assetPinnedAsDescriptionPositionOneCount"

  field :asset_pinned_as_description_position_two_count, 353,
    proto3_optional: true,
    type: :int64,
    json_name: "assetPinnedAsDescriptionPositionTwoCount"

  field :asset_best_performance_impression_percentage, 354,
    proto3_optional: true,
    type: :double,
    json_name: "assetBestPerformanceImpressionPercentage"

  field :asset_good_performance_impression_percentage, 355,
    proto3_optional: true,
    type: :double,
    json_name: "assetGoodPerformanceImpressionPercentage"

  field :asset_low_performance_impression_percentage, 356,
    proto3_optional: true,
    type: :double,
    json_name: "assetLowPerformanceImpressionPercentage"

  field :asset_learning_performance_impression_percentage, 357,
    proto3_optional: true,
    type: :double,
    json_name: "assetLearningPerformanceImpressionPercentage"

  field :asset_unrated_performance_impression_percentage, 358,
    proto3_optional: true,
    type: :double,
    json_name: "assetUnratedPerformanceImpressionPercentage"

  field :asset_best_performance_cost_percentage, 359,
    proto3_optional: true,
    type: :double,
    json_name: "assetBestPerformanceCostPercentage"

  field :asset_good_performance_cost_percentage, 360,
    proto3_optional: true,
    type: :double,
    json_name: "assetGoodPerformanceCostPercentage"

  field :asset_low_performance_cost_percentage, 361,
    proto3_optional: true,
    type: :double,
    json_name: "assetLowPerformanceCostPercentage"

  field :asset_learning_performance_cost_percentage, 362,
    proto3_optional: true,
    type: :double,
    json_name: "assetLearningPerformanceCostPercentage"

  field :asset_unrated_performance_cost_percentage, 363,
    proto3_optional: true,
    type: :double,
    json_name: "assetUnratedPerformanceCostPercentage"
end

defmodule Google.Ads.Googleads.V17.Common.SearchVolumeRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :min, 1, proto3_optional: true, type: :int64
  field :max, 2, proto3_optional: true, type: :int64
end
