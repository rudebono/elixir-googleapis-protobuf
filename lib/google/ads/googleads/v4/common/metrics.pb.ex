defmodule Google.Ads.Googleads.V4.Common.Metrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          absolute_top_impression_percentage: Google.Protobuf.DoubleValue.t() | nil,
          active_view_cpm: Google.Protobuf.DoubleValue.t() | nil,
          active_view_ctr: Google.Protobuf.DoubleValue.t() | nil,
          active_view_impressions: Google.Protobuf.Int64Value.t() | nil,
          active_view_measurability: Google.Protobuf.DoubleValue.t() | nil,
          active_view_measurable_cost_micros: Google.Protobuf.Int64Value.t() | nil,
          active_view_measurable_impressions: Google.Protobuf.Int64Value.t() | nil,
          active_view_viewability: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_from_interactions_rate: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_value: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_value_per_cost: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_from_click_to_call: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_from_directions: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_from_interactions_value_per_interaction:
            Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_from_menu: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_from_order: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_from_other_engagement: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_from_store_visit: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_from_store_website: Google.Protobuf.DoubleValue.t() | nil,
          average_cost: Google.Protobuf.DoubleValue.t() | nil,
          average_cpc: Google.Protobuf.DoubleValue.t() | nil,
          average_cpe: Google.Protobuf.DoubleValue.t() | nil,
          average_cpm: Google.Protobuf.DoubleValue.t() | nil,
          average_cpv: Google.Protobuf.DoubleValue.t() | nil,
          average_page_views: Google.Protobuf.DoubleValue.t() | nil,
          average_time_on_site: Google.Protobuf.DoubleValue.t() | nil,
          benchmark_average_max_cpc: Google.Protobuf.DoubleValue.t() | nil,
          benchmark_ctr: Google.Protobuf.DoubleValue.t() | nil,
          bounce_rate: Google.Protobuf.DoubleValue.t() | nil,
          clicks: Google.Protobuf.Int64Value.t() | nil,
          combined_clicks: Google.Protobuf.Int64Value.t() | nil,
          combined_clicks_per_query: Google.Protobuf.DoubleValue.t() | nil,
          combined_queries: Google.Protobuf.Int64Value.t() | nil,
          content_budget_lost_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          content_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          conversion_last_received_request_date_time: Google.Protobuf.StringValue.t() | nil,
          conversion_last_conversion_date: Google.Protobuf.StringValue.t() | nil,
          content_rank_lost_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          conversions_from_interactions_rate: Google.Protobuf.DoubleValue.t() | nil,
          conversions_value: Google.Protobuf.DoubleValue.t() | nil,
          conversions_value_per_cost: Google.Protobuf.DoubleValue.t() | nil,
          conversions_from_interactions_value_per_interaction:
            Google.Protobuf.DoubleValue.t() | nil,
          conversions: Google.Protobuf.DoubleValue.t() | nil,
          cost_micros: Google.Protobuf.Int64Value.t() | nil,
          cost_per_all_conversions: Google.Protobuf.DoubleValue.t() | nil,
          cost_per_conversion: Google.Protobuf.DoubleValue.t() | nil,
          cost_per_current_model_attributed_conversion: Google.Protobuf.DoubleValue.t() | nil,
          cross_device_conversions: Google.Protobuf.DoubleValue.t() | nil,
          ctr: Google.Protobuf.DoubleValue.t() | nil,
          current_model_attributed_conversions: Google.Protobuf.DoubleValue.t() | nil,
          current_model_attributed_conversions_from_interactions_rate:
            Google.Protobuf.DoubleValue.t() | nil,
          current_model_attributed_conversions_from_interactions_value_per_interaction:
            Google.Protobuf.DoubleValue.t() | nil,
          current_model_attributed_conversions_value: Google.Protobuf.DoubleValue.t() | nil,
          current_model_attributed_conversions_value_per_cost:
            Google.Protobuf.DoubleValue.t() | nil,
          engagement_rate: Google.Protobuf.DoubleValue.t() | nil,
          engagements: Google.Protobuf.Int64Value.t() | nil,
          hotel_average_lead_value_micros: Google.Protobuf.DoubleValue.t() | nil,
          hotel_price_difference_percentage: Google.Protobuf.DoubleValue.t() | nil,
          hotel_eligible_impressions: Google.Protobuf.Int64Value.t() | nil,
          historical_creative_quality_score:
            Google.Ads.Googleads.V4.Enums.QualityScoreBucketEnum.QualityScoreBucket.t(),
          historical_landing_page_quality_score:
            Google.Ads.Googleads.V4.Enums.QualityScoreBucketEnum.QualityScoreBucket.t(),
          historical_quality_score: Google.Protobuf.Int64Value.t() | nil,
          historical_search_predicted_ctr:
            Google.Ads.Googleads.V4.Enums.QualityScoreBucketEnum.QualityScoreBucket.t(),
          gmail_forwards: Google.Protobuf.Int64Value.t() | nil,
          gmail_saves: Google.Protobuf.Int64Value.t() | nil,
          gmail_secondary_clicks: Google.Protobuf.Int64Value.t() | nil,
          impressions_from_store_reach: Google.Protobuf.Int64Value.t() | nil,
          impressions: Google.Protobuf.Int64Value.t() | nil,
          interaction_rate: Google.Protobuf.DoubleValue.t() | nil,
          interactions: Google.Protobuf.Int64Value.t() | nil,
          interaction_event_types: [
            [Google.Ads.Googleads.V4.Enums.InteractionEventTypeEnum.InteractionEventType.t()]
          ],
          invalid_click_rate: Google.Protobuf.DoubleValue.t() | nil,
          invalid_clicks: Google.Protobuf.Int64Value.t() | nil,
          message_chats: Google.Protobuf.Int64Value.t() | nil,
          message_impressions: Google.Protobuf.Int64Value.t() | nil,
          message_chat_rate: Google.Protobuf.DoubleValue.t() | nil,
          mobile_friendly_clicks_percentage: Google.Protobuf.DoubleValue.t() | nil,
          organic_clicks: Google.Protobuf.Int64Value.t() | nil,
          organic_clicks_per_query: Google.Protobuf.DoubleValue.t() | nil,
          organic_impressions: Google.Protobuf.Int64Value.t() | nil,
          organic_impressions_per_query: Google.Protobuf.DoubleValue.t() | nil,
          organic_queries: Google.Protobuf.Int64Value.t() | nil,
          percent_new_visitors: Google.Protobuf.DoubleValue.t() | nil,
          phone_calls: Google.Protobuf.Int64Value.t() | nil,
          phone_impressions: Google.Protobuf.Int64Value.t() | nil,
          phone_through_rate: Google.Protobuf.DoubleValue.t() | nil,
          relative_ctr: Google.Protobuf.DoubleValue.t() | nil,
          search_absolute_top_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          search_budget_lost_absolute_top_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          search_budget_lost_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          search_budget_lost_top_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          search_click_share: Google.Protobuf.DoubleValue.t() | nil,
          search_exact_match_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          search_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          search_rank_lost_absolute_top_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          search_rank_lost_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          search_rank_lost_top_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          search_top_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          speed_score: Google.Protobuf.Int64Value.t() | nil,
          top_impression_percentage: Google.Protobuf.DoubleValue.t() | nil,
          valid_accelerated_mobile_pages_clicks_percentage: Google.Protobuf.DoubleValue.t() | nil,
          value_per_all_conversions: Google.Protobuf.DoubleValue.t() | nil,
          value_per_conversion: Google.Protobuf.DoubleValue.t() | nil,
          value_per_current_model_attributed_conversion: Google.Protobuf.DoubleValue.t() | nil,
          video_quartile_100_rate: Google.Protobuf.DoubleValue.t() | nil,
          video_quartile_25_rate: Google.Protobuf.DoubleValue.t() | nil,
          video_quartile_50_rate: Google.Protobuf.DoubleValue.t() | nil,
          video_quartile_75_rate: Google.Protobuf.DoubleValue.t() | nil,
          video_view_rate: Google.Protobuf.DoubleValue.t() | nil,
          video_views: Google.Protobuf.Int64Value.t() | nil,
          view_through_conversions: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [
    :absolute_top_impression_percentage,
    :active_view_cpm,
    :active_view_ctr,
    :active_view_impressions,
    :active_view_measurability,
    :active_view_measurable_cost_micros,
    :active_view_measurable_impressions,
    :active_view_viewability,
    :all_conversions_from_interactions_rate,
    :all_conversions_value,
    :all_conversions,
    :all_conversions_value_per_cost,
    :all_conversions_from_click_to_call,
    :all_conversions_from_directions,
    :all_conversions_from_interactions_value_per_interaction,
    :all_conversions_from_menu,
    :all_conversions_from_order,
    :all_conversions_from_other_engagement,
    :all_conversions_from_store_visit,
    :all_conversions_from_store_website,
    :average_cost,
    :average_cpc,
    :average_cpe,
    :average_cpm,
    :average_cpv,
    :average_page_views,
    :average_time_on_site,
    :benchmark_average_max_cpc,
    :benchmark_ctr,
    :bounce_rate,
    :clicks,
    :combined_clicks,
    :combined_clicks_per_query,
    :combined_queries,
    :content_budget_lost_impression_share,
    :content_impression_share,
    :conversion_last_received_request_date_time,
    :conversion_last_conversion_date,
    :content_rank_lost_impression_share,
    :conversions_from_interactions_rate,
    :conversions_value,
    :conversions_value_per_cost,
    :conversions_from_interactions_value_per_interaction,
    :conversions,
    :cost_micros,
    :cost_per_all_conversions,
    :cost_per_conversion,
    :cost_per_current_model_attributed_conversion,
    :cross_device_conversions,
    :ctr,
    :current_model_attributed_conversions,
    :current_model_attributed_conversions_from_interactions_rate,
    :current_model_attributed_conversions_from_interactions_value_per_interaction,
    :current_model_attributed_conversions_value,
    :current_model_attributed_conversions_value_per_cost,
    :engagement_rate,
    :engagements,
    :hotel_average_lead_value_micros,
    :hotel_price_difference_percentage,
    :hotel_eligible_impressions,
    :historical_creative_quality_score,
    :historical_landing_page_quality_score,
    :historical_quality_score,
    :historical_search_predicted_ctr,
    :gmail_forwards,
    :gmail_saves,
    :gmail_secondary_clicks,
    :impressions_from_store_reach,
    :impressions,
    :interaction_rate,
    :interactions,
    :interaction_event_types,
    :invalid_click_rate,
    :invalid_clicks,
    :message_chats,
    :message_impressions,
    :message_chat_rate,
    :mobile_friendly_clicks_percentage,
    :organic_clicks,
    :organic_clicks_per_query,
    :organic_impressions,
    :organic_impressions_per_query,
    :organic_queries,
    :percent_new_visitors,
    :phone_calls,
    :phone_impressions,
    :phone_through_rate,
    :relative_ctr,
    :search_absolute_top_impression_share,
    :search_budget_lost_absolute_top_impression_share,
    :search_budget_lost_impression_share,
    :search_budget_lost_top_impression_share,
    :search_click_share,
    :search_exact_match_impression_share,
    :search_impression_share,
    :search_rank_lost_absolute_top_impression_share,
    :search_rank_lost_impression_share,
    :search_rank_lost_top_impression_share,
    :search_top_impression_share,
    :speed_score,
    :top_impression_percentage,
    :valid_accelerated_mobile_pages_clicks_percentage,
    :value_per_all_conversions,
    :value_per_conversion,
    :value_per_current_model_attributed_conversion,
    :video_quartile_100_rate,
    :video_quartile_25_rate,
    :video_quartile_50_rate,
    :video_quartile_75_rate,
    :video_view_rate,
    :video_views,
    :view_through_conversions
  ]

  field :absolute_top_impression_percentage, 95, type: Google.Protobuf.DoubleValue
  field :active_view_cpm, 1, type: Google.Protobuf.DoubleValue
  field :active_view_ctr, 79, type: Google.Protobuf.DoubleValue
  field :active_view_impressions, 2, type: Google.Protobuf.Int64Value
  field :active_view_measurability, 96, type: Google.Protobuf.DoubleValue
  field :active_view_measurable_cost_micros, 3, type: Google.Protobuf.Int64Value
  field :active_view_measurable_impressions, 4, type: Google.Protobuf.Int64Value
  field :active_view_viewability, 97, type: Google.Protobuf.DoubleValue
  field :all_conversions_from_interactions_rate, 65, type: Google.Protobuf.DoubleValue
  field :all_conversions_value, 66, type: Google.Protobuf.DoubleValue
  field :all_conversions, 7, type: Google.Protobuf.DoubleValue
  field :all_conversions_value_per_cost, 62, type: Google.Protobuf.DoubleValue
  field :all_conversions_from_click_to_call, 118, type: Google.Protobuf.DoubleValue
  field :all_conversions_from_directions, 119, type: Google.Protobuf.DoubleValue

  field :all_conversions_from_interactions_value_per_interaction, 67,
    type: Google.Protobuf.DoubleValue

  field :all_conversions_from_menu, 120, type: Google.Protobuf.DoubleValue
  field :all_conversions_from_order, 121, type: Google.Protobuf.DoubleValue
  field :all_conversions_from_other_engagement, 122, type: Google.Protobuf.DoubleValue
  field :all_conversions_from_store_visit, 123, type: Google.Protobuf.DoubleValue
  field :all_conversions_from_store_website, 124, type: Google.Protobuf.DoubleValue
  field :average_cost, 8, type: Google.Protobuf.DoubleValue
  field :average_cpc, 9, type: Google.Protobuf.DoubleValue
  field :average_cpe, 98, type: Google.Protobuf.DoubleValue
  field :average_cpm, 10, type: Google.Protobuf.DoubleValue
  field :average_cpv, 11, type: Google.Protobuf.DoubleValue
  field :average_page_views, 99, type: Google.Protobuf.DoubleValue
  field :average_time_on_site, 84, type: Google.Protobuf.DoubleValue
  field :benchmark_average_max_cpc, 14, type: Google.Protobuf.DoubleValue
  field :benchmark_ctr, 77, type: Google.Protobuf.DoubleValue
  field :bounce_rate, 15, type: Google.Protobuf.DoubleValue
  field :clicks, 19, type: Google.Protobuf.Int64Value
  field :combined_clicks, 115, type: Google.Protobuf.Int64Value
  field :combined_clicks_per_query, 116, type: Google.Protobuf.DoubleValue
  field :combined_queries, 117, type: Google.Protobuf.Int64Value
  field :content_budget_lost_impression_share, 20, type: Google.Protobuf.DoubleValue
  field :content_impression_share, 21, type: Google.Protobuf.DoubleValue
  field :conversion_last_received_request_date_time, 73, type: Google.Protobuf.StringValue
  field :conversion_last_conversion_date, 74, type: Google.Protobuf.StringValue
  field :content_rank_lost_impression_share, 22, type: Google.Protobuf.DoubleValue
  field :conversions_from_interactions_rate, 69, type: Google.Protobuf.DoubleValue
  field :conversions_value, 70, type: Google.Protobuf.DoubleValue
  field :conversions_value_per_cost, 71, type: Google.Protobuf.DoubleValue

  field :conversions_from_interactions_value_per_interaction, 72,
    type: Google.Protobuf.DoubleValue

  field :conversions, 25, type: Google.Protobuf.DoubleValue
  field :cost_micros, 26, type: Google.Protobuf.Int64Value
  field :cost_per_all_conversions, 68, type: Google.Protobuf.DoubleValue
  field :cost_per_conversion, 28, type: Google.Protobuf.DoubleValue
  field :cost_per_current_model_attributed_conversion, 106, type: Google.Protobuf.DoubleValue
  field :cross_device_conversions, 29, type: Google.Protobuf.DoubleValue
  field :ctr, 30, type: Google.Protobuf.DoubleValue
  field :current_model_attributed_conversions, 101, type: Google.Protobuf.DoubleValue

  field :current_model_attributed_conversions_from_interactions_rate, 102,
    type: Google.Protobuf.DoubleValue

  field :current_model_attributed_conversions_from_interactions_value_per_interaction, 103,
    type: Google.Protobuf.DoubleValue

  field :current_model_attributed_conversions_value, 104, type: Google.Protobuf.DoubleValue

  field :current_model_attributed_conversions_value_per_cost, 105,
    type: Google.Protobuf.DoubleValue

  field :engagement_rate, 31, type: Google.Protobuf.DoubleValue
  field :engagements, 32, type: Google.Protobuf.Int64Value
  field :hotel_average_lead_value_micros, 75, type: Google.Protobuf.DoubleValue
  field :hotel_price_difference_percentage, 129, type: Google.Protobuf.DoubleValue
  field :hotel_eligible_impressions, 130, type: Google.Protobuf.Int64Value

  field :historical_creative_quality_score, 80,
    type: Google.Ads.Googleads.V4.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true

  field :historical_landing_page_quality_score, 81,
    type: Google.Ads.Googleads.V4.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true

  field :historical_quality_score, 82, type: Google.Protobuf.Int64Value

  field :historical_search_predicted_ctr, 83,
    type: Google.Ads.Googleads.V4.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true

  field :gmail_forwards, 85, type: Google.Protobuf.Int64Value
  field :gmail_saves, 86, type: Google.Protobuf.Int64Value
  field :gmail_secondary_clicks, 87, type: Google.Protobuf.Int64Value
  field :impressions_from_store_reach, 125, type: Google.Protobuf.Int64Value
  field :impressions, 37, type: Google.Protobuf.Int64Value
  field :interaction_rate, 38, type: Google.Protobuf.DoubleValue
  field :interactions, 39, type: Google.Protobuf.Int64Value

  field :interaction_event_types, 100,
    repeated: true,
    type: Google.Ads.Googleads.V4.Enums.InteractionEventTypeEnum.InteractionEventType,
    enum: true

  field :invalid_click_rate, 40, type: Google.Protobuf.DoubleValue
  field :invalid_clicks, 41, type: Google.Protobuf.Int64Value
  field :message_chats, 126, type: Google.Protobuf.Int64Value
  field :message_impressions, 127, type: Google.Protobuf.Int64Value
  field :message_chat_rate, 128, type: Google.Protobuf.DoubleValue
  field :mobile_friendly_clicks_percentage, 109, type: Google.Protobuf.DoubleValue
  field :organic_clicks, 110, type: Google.Protobuf.Int64Value
  field :organic_clicks_per_query, 111, type: Google.Protobuf.DoubleValue
  field :organic_impressions, 112, type: Google.Protobuf.Int64Value
  field :organic_impressions_per_query, 113, type: Google.Protobuf.DoubleValue
  field :organic_queries, 114, type: Google.Protobuf.Int64Value
  field :percent_new_visitors, 42, type: Google.Protobuf.DoubleValue
  field :phone_calls, 43, type: Google.Protobuf.Int64Value
  field :phone_impressions, 44, type: Google.Protobuf.Int64Value
  field :phone_through_rate, 45, type: Google.Protobuf.DoubleValue
  field :relative_ctr, 46, type: Google.Protobuf.DoubleValue
  field :search_absolute_top_impression_share, 78, type: Google.Protobuf.DoubleValue
  field :search_budget_lost_absolute_top_impression_share, 88, type: Google.Protobuf.DoubleValue
  field :search_budget_lost_impression_share, 47, type: Google.Protobuf.DoubleValue
  field :search_budget_lost_top_impression_share, 89, type: Google.Protobuf.DoubleValue
  field :search_click_share, 48, type: Google.Protobuf.DoubleValue
  field :search_exact_match_impression_share, 49, type: Google.Protobuf.DoubleValue
  field :search_impression_share, 50, type: Google.Protobuf.DoubleValue
  field :search_rank_lost_absolute_top_impression_share, 90, type: Google.Protobuf.DoubleValue
  field :search_rank_lost_impression_share, 51, type: Google.Protobuf.DoubleValue
  field :search_rank_lost_top_impression_share, 91, type: Google.Protobuf.DoubleValue
  field :search_top_impression_share, 92, type: Google.Protobuf.DoubleValue
  field :speed_score, 107, type: Google.Protobuf.Int64Value
  field :top_impression_percentage, 93, type: Google.Protobuf.DoubleValue
  field :valid_accelerated_mobile_pages_clicks_percentage, 108, type: Google.Protobuf.DoubleValue
  field :value_per_all_conversions, 52, type: Google.Protobuf.DoubleValue
  field :value_per_conversion, 53, type: Google.Protobuf.DoubleValue
  field :value_per_current_model_attributed_conversion, 94, type: Google.Protobuf.DoubleValue
  field :video_quartile_100_rate, 54, type: Google.Protobuf.DoubleValue
  field :video_quartile_25_rate, 55, type: Google.Protobuf.DoubleValue
  field :video_quartile_50_rate, 56, type: Google.Protobuf.DoubleValue
  field :video_quartile_75_rate, 57, type: Google.Protobuf.DoubleValue
  field :video_view_rate, 58, type: Google.Protobuf.DoubleValue
  field :video_views, 59, type: Google.Protobuf.Int64Value
  field :view_through_conversions, 60, type: Google.Protobuf.Int64Value
end
