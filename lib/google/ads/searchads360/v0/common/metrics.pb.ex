defmodule Google.Ads.Searchads360.V0.Common.Metrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :absolute_top_impression_percentage, 183,
    proto3_optional: true,
    type: :double,
    json_name: "absoluteTopImpressionPercentage"

  field :all_conversions_from_interactions_rate, 191,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsFromInteractionsRate"

  field :all_conversions_value, 192,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsValue"

  field :all_conversions_value_by_conversion_date, 240,
    type: :double,
    json_name: "allConversionsValueByConversionDate"

  field :all_conversions, 193, proto3_optional: true, type: :double, json_name: "allConversions"

  field :all_conversions_by_conversion_date, 241,
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

  field :visits, 289, proto3_optional: true, type: :double

  field :all_conversions_from_store_website, 202,
    proto3_optional: true,
    type: :double,
    json_name: "allConversionsFromStoreWebsite"

  field :average_cost, 203, proto3_optional: true, type: :double, json_name: "averageCost"
  field :average_cpc, 204, proto3_optional: true, type: :double, json_name: "averageCpc"
  field :average_cpm, 206, proto3_optional: true, type: :double, json_name: "averageCpm"
  field :clicks, 131, proto3_optional: true, type: :int64

  field :content_budget_lost_impression_share, 159,
    proto3_optional: true,
    type: :double,
    json_name: "contentBudgetLostImpressionShare"

  field :content_impression_share, 160,
    proto3_optional: true,
    type: :double,
    json_name: "contentImpressionShare"

  field :content_rank_lost_impression_share, 163,
    proto3_optional: true,
    type: :double,
    json_name: "contentRankLostImpressionShare"

  field :conversions_from_interactions_rate, 284,
    proto3_optional: true,
    type: :double,
    json_name: "conversionsFromInteractionsRate"

  field :client_account_conversions_value, 165,
    proto3_optional: true,
    type: :double,
    json_name: "clientAccountConversionsValue"

  field :conversions_value_by_conversion_date, 283,
    type: :double,
    json_name: "conversionsValueByConversionDate"

  field :conversions_value_per_cost, 288,
    proto3_optional: true,
    type: :double,
    json_name: "conversionsValuePerCost"

  field :conversions_from_interactions_value_per_interaction, 167,
    proto3_optional: true,
    type: :double,
    json_name: "conversionsFromInteractionsValuePerInteraction"

  field :client_account_conversions, 168,
    proto3_optional: true,
    type: :double,
    json_name: "clientAccountConversions"

  field :conversions_by_conversion_date, 282,
    type: :double,
    json_name: "conversionsByConversionDate"

  field :cost_micros, 169, proto3_optional: true, type: :int64, json_name: "costMicros"

  field :cost_per_all_conversions, 170,
    proto3_optional: true,
    type: :double,
    json_name: "costPerAllConversions"

  field :cost_per_conversion, 286,
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

  field :cross_device_conversions_value, 253,
    proto3_optional: true,
    type: :double,
    json_name: "crossDeviceConversionsValue"

  field :ctr, 174, proto3_optional: true, type: :double
  field :conversions, 251, proto3_optional: true, type: :double

  field :conversions_value, 252,
    proto3_optional: true,
    type: :double,
    json_name: "conversionsValue"

  field :historical_creative_quality_score, 80,
    type: Google.Ads.Searchads360.V0.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    json_name: "historicalCreativeQualityScore",
    enum: true

  field :historical_landing_page_quality_score, 81,
    type: Google.Ads.Searchads360.V0.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    json_name: "historicalLandingPageQualityScore",
    enum: true

  field :historical_quality_score, 216,
    proto3_optional: true,
    type: :int64,
    json_name: "historicalQualityScore"

  field :historical_search_predicted_ctr, 83,
    type: Google.Ads.Searchads360.V0.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    json_name: "historicalSearchPredictedCtr",
    enum: true

  field :impressions, 221, proto3_optional: true, type: :int64
  field :interaction_rate, 222, proto3_optional: true, type: :double, json_name: "interactionRate"
  field :interactions, 223, proto3_optional: true, type: :int64

  field :interaction_event_types, 100,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Enums.InteractionEventTypeEnum.InteractionEventType,
    json_name: "interactionEventTypes",
    enum: true

  field :invalid_click_rate, 224,
    proto3_optional: true,
    type: :double,
    json_name: "invalidClickRate"

  field :invalid_clicks, 225, proto3_optional: true, type: :int64, json_name: "invalidClicks"

  field :mobile_friendly_clicks_percentage, 229,
    proto3_optional: true,
    type: :double,
    json_name: "mobileFriendlyClicksPercentage"

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

  field :top_impression_percentage, 148,
    proto3_optional: true,
    type: :double,
    json_name: "topImpressionPercentage"

  field :value_per_all_conversions, 150,
    proto3_optional: true,
    type: :double,
    json_name: "valuePerAllConversions"

  field :value_per_all_conversions_by_conversion_date, 244,
    proto3_optional: true,
    type: :double,
    json_name: "valuePerAllConversionsByConversionDate"

  field :value_per_conversion, 287,
    proto3_optional: true,
    type: :double,
    json_name: "valuePerConversion"

  field :value_per_conversions_by_conversion_date, 285,
    proto3_optional: true,
    type: :double,
    json_name: "valuePerConversionsByConversionDate"

  field :client_account_view_through_conversions, 155,
    proto3_optional: true,
    type: :int64,
    json_name: "clientAccountViewThroughConversions"
end