defmodule Google.Ads.Googleads.V9.Services.SearchGoogleAdsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :validate_only, 5, type: :bool, json_name: "validateOnly"
  field :return_total_results_count, 7, type: :bool, json_name: "returnTotalResultsCount"

  field :summary_row_setting, 8,
    type: Google.Ads.Googleads.V9.Enums.SummaryRowSettingEnum.SummaryRowSetting,
    json_name: "summaryRowSetting",
    enum: true
end
defmodule Google.Ads.Googleads.V9.Services.SearchGoogleAdsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Ads.Googleads.V9.Services.GoogleAdsRow
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_results_count, 3, type: :int64, json_name: "totalResultsCount"
  field :field_mask, 5, type: Google.Protobuf.FieldMask, json_name: "fieldMask"

  field :summary_row, 6,
    type: Google.Ads.Googleads.V9.Services.GoogleAdsRow,
    json_name: "summaryRow"
end
defmodule Google.Ads.Googleads.V9.Services.SearchGoogleAdsStreamRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :query, 2, type: :string, deprecated: false

  field :summary_row_setting, 3,
    type: Google.Ads.Googleads.V9.Enums.SummaryRowSettingEnum.SummaryRowSetting,
    json_name: "summaryRowSetting",
    enum: true
end
defmodule Google.Ads.Googleads.V9.Services.SearchGoogleAdsStreamResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Ads.Googleads.V9.Services.GoogleAdsRow
  field :field_mask, 2, type: Google.Protobuf.FieldMask, json_name: "fieldMask"

  field :summary_row, 3,
    type: Google.Ads.Googleads.V9.Services.GoogleAdsRow,
    json_name: "summaryRow"

  field :request_id, 4, type: :string, json_name: "requestId"
end
defmodule Google.Ads.Googleads.V9.Services.GoogleAdsRow do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :account_budget, 42,
    type: Google.Ads.Googleads.V9.Resources.AccountBudget,
    json_name: "accountBudget"

  field :account_budget_proposal, 43,
    type: Google.Ads.Googleads.V9.Resources.AccountBudgetProposal,
    json_name: "accountBudgetProposal"

  field :account_link, 143,
    type: Google.Ads.Googleads.V9.Resources.AccountLink,
    json_name: "accountLink"

  field :ad_group, 3, type: Google.Ads.Googleads.V9.Resources.AdGroup, json_name: "adGroup"

  field :ad_group_ad, 16,
    type: Google.Ads.Googleads.V9.Resources.AdGroupAd,
    json_name: "adGroupAd"

  field :ad_group_ad_asset_view, 131,
    type: Google.Ads.Googleads.V9.Resources.AdGroupAdAssetView,
    json_name: "adGroupAdAssetView"

  field :ad_group_ad_label, 120,
    type: Google.Ads.Googleads.V9.Resources.AdGroupAdLabel,
    json_name: "adGroupAdLabel"

  field :ad_group_asset, 154,
    type: Google.Ads.Googleads.V9.Resources.AdGroupAsset,
    json_name: "adGroupAsset"

  field :ad_group_audience_view, 57,
    type: Google.Ads.Googleads.V9.Resources.AdGroupAudienceView,
    json_name: "adGroupAudienceView"

  field :ad_group_bid_modifier, 24,
    type: Google.Ads.Googleads.V9.Resources.AdGroupBidModifier,
    json_name: "adGroupBidModifier"

  field :ad_group_criterion, 17,
    type: Google.Ads.Googleads.V9.Resources.AdGroupCriterion,
    json_name: "adGroupCriterion"

  field :ad_group_criterion_customizer, 187,
    type: Google.Ads.Googleads.V9.Resources.AdGroupCriterionCustomizer,
    json_name: "adGroupCriterionCustomizer"

  field :ad_group_criterion_label, 121,
    type: Google.Ads.Googleads.V9.Resources.AdGroupCriterionLabel,
    json_name: "adGroupCriterionLabel"

  field :ad_group_criterion_simulation, 110,
    type: Google.Ads.Googleads.V9.Resources.AdGroupCriterionSimulation,
    json_name: "adGroupCriterionSimulation"

  field :ad_group_customizer, 185,
    type: Google.Ads.Googleads.V9.Resources.AdGroupCustomizer,
    json_name: "adGroupCustomizer"

  field :ad_group_extension_setting, 112,
    type: Google.Ads.Googleads.V9.Resources.AdGroupExtensionSetting,
    json_name: "adGroupExtensionSetting"

  field :ad_group_feed, 67,
    type: Google.Ads.Googleads.V9.Resources.AdGroupFeed,
    json_name: "adGroupFeed"

  field :ad_group_label, 115,
    type: Google.Ads.Googleads.V9.Resources.AdGroupLabel,
    json_name: "adGroupLabel"

  field :ad_group_simulation, 107,
    type: Google.Ads.Googleads.V9.Resources.AdGroupSimulation,
    json_name: "adGroupSimulation"

  field :ad_parameter, 130,
    type: Google.Ads.Googleads.V9.Resources.AdParameter,
    json_name: "adParameter"

  field :age_range_view, 48,
    type: Google.Ads.Googleads.V9.Resources.AgeRangeView,
    json_name: "ageRangeView"

  field :ad_schedule_view, 89,
    type: Google.Ads.Googleads.V9.Resources.AdScheduleView,
    json_name: "adScheduleView"

  field :domain_category, 91,
    type: Google.Ads.Googleads.V9.Resources.DomainCategory,
    json_name: "domainCategory"

  field :asset, 105, type: Google.Ads.Googleads.V9.Resources.Asset

  field :asset_field_type_view, 168,
    type: Google.Ads.Googleads.V9.Resources.AssetFieldTypeView,
    json_name: "assetFieldTypeView"

  field :asset_group_asset, 173,
    type: Google.Ads.Googleads.V9.Resources.AssetGroupAsset,
    json_name: "assetGroupAsset"

  field :asset_group_listing_group_filter, 182,
    type: Google.Ads.Googleads.V9.Resources.AssetGroupListingGroupFilter,
    json_name: "assetGroupListingGroupFilter"

  field :asset_group_product_group_view, 189,
    type: Google.Ads.Googleads.V9.Resources.AssetGroupProductGroupView,
    json_name: "assetGroupProductGroupView"

  field :asset_group, 172,
    type: Google.Ads.Googleads.V9.Resources.AssetGroup,
    json_name: "assetGroup"

  field :asset_set_asset, 180,
    type: Google.Ads.Googleads.V9.Resources.AssetSetAsset,
    json_name: "assetSetAsset"

  field :asset_set, 179, type: Google.Ads.Googleads.V9.Resources.AssetSet, json_name: "assetSet"
  field :batch_job, 139, type: Google.Ads.Googleads.V9.Resources.BatchJob, json_name: "batchJob"

  field :bidding_data_exclusion, 159,
    type: Google.Ads.Googleads.V9.Resources.BiddingDataExclusion,
    json_name: "biddingDataExclusion"

  field :bidding_seasonality_adjustment, 160,
    type: Google.Ads.Googleads.V9.Resources.BiddingSeasonalityAdjustment,
    json_name: "biddingSeasonalityAdjustment"

  field :bidding_strategy, 18,
    type: Google.Ads.Googleads.V9.Resources.BiddingStrategy,
    json_name: "biddingStrategy"

  field :bidding_strategy_simulation, 158,
    type: Google.Ads.Googleads.V9.Resources.BiddingStrategySimulation,
    json_name: "biddingStrategySimulation"

  field :billing_setup, 41,
    type: Google.Ads.Googleads.V9.Resources.BillingSetup,
    json_name: "billingSetup"

  field :call_view, 152, type: Google.Ads.Googleads.V9.Resources.CallView, json_name: "callView"

  field :campaign_budget, 19,
    type: Google.Ads.Googleads.V9.Resources.CampaignBudget,
    json_name: "campaignBudget"

  field :campaign, 2, type: Google.Ads.Googleads.V9.Resources.Campaign

  field :campaign_asset, 142,
    type: Google.Ads.Googleads.V9.Resources.CampaignAsset,
    json_name: "campaignAsset"

  field :campaign_asset_set, 181,
    type: Google.Ads.Googleads.V9.Resources.CampaignAssetSet,
    json_name: "campaignAssetSet"

  field :campaign_audience_view, 69,
    type: Google.Ads.Googleads.V9.Resources.CampaignAudienceView,
    json_name: "campaignAudienceView"

  field :campaign_bid_modifier, 26,
    type: Google.Ads.Googleads.V9.Resources.CampaignBidModifier,
    json_name: "campaignBidModifier"

  field :campaign_conversion_goal, 175,
    type: Google.Ads.Googleads.V9.Resources.CampaignConversionGoal,
    json_name: "campaignConversionGoal"

  field :campaign_criterion, 20,
    type: Google.Ads.Googleads.V9.Resources.CampaignCriterion,
    json_name: "campaignCriterion"

  field :campaign_criterion_simulation, 111,
    type: Google.Ads.Googleads.V9.Resources.CampaignCriterionSimulation,
    json_name: "campaignCriterionSimulation"

  field :campaign_customizer, 186,
    type: Google.Ads.Googleads.V9.Resources.CampaignCustomizer,
    json_name: "campaignCustomizer"

  field :campaign_draft, 49,
    type: Google.Ads.Googleads.V9.Resources.CampaignDraft,
    json_name: "campaignDraft"

  field :campaign_experiment, 84,
    type: Google.Ads.Googleads.V9.Resources.CampaignExperiment,
    json_name: "campaignExperiment"

  field :campaign_extension_setting, 113,
    type: Google.Ads.Googleads.V9.Resources.CampaignExtensionSetting,
    json_name: "campaignExtensionSetting"

  field :campaign_feed, 63,
    type: Google.Ads.Googleads.V9.Resources.CampaignFeed,
    json_name: "campaignFeed"

  field :campaign_label, 108,
    type: Google.Ads.Googleads.V9.Resources.CampaignLabel,
    json_name: "campaignLabel"

  field :campaign_shared_set, 30,
    type: Google.Ads.Googleads.V9.Resources.CampaignSharedSet,
    json_name: "campaignSharedSet"

  field :campaign_simulation, 157,
    type: Google.Ads.Googleads.V9.Resources.CampaignSimulation,
    json_name: "campaignSimulation"

  field :carrier_constant, 66,
    type: Google.Ads.Googleads.V9.Resources.CarrierConstant,
    json_name: "carrierConstant"

  field :change_event, 145,
    type: Google.Ads.Googleads.V9.Resources.ChangeEvent,
    json_name: "changeEvent"

  field :change_status, 37,
    type: Google.Ads.Googleads.V9.Resources.ChangeStatus,
    json_name: "changeStatus"

  field :combined_audience, 148,
    type: Google.Ads.Googleads.V9.Resources.CombinedAudience,
    json_name: "combinedAudience"

  field :conversion_action, 103,
    type: Google.Ads.Googleads.V9.Resources.ConversionAction,
    json_name: "conversionAction"

  field :conversion_custom_variable, 153,
    type: Google.Ads.Googleads.V9.Resources.ConversionCustomVariable,
    json_name: "conversionCustomVariable"

  field :conversion_goal_campaign_config, 177,
    type: Google.Ads.Googleads.V9.Resources.ConversionGoalCampaignConfig,
    json_name: "conversionGoalCampaignConfig"

  field :conversion_value_rule, 164,
    type: Google.Ads.Googleads.V9.Resources.ConversionValueRule,
    json_name: "conversionValueRule"

  field :conversion_value_rule_set, 165,
    type: Google.Ads.Googleads.V9.Resources.ConversionValueRuleSet,
    json_name: "conversionValueRuleSet"

  field :click_view, 122,
    type: Google.Ads.Googleads.V9.Resources.ClickView,
    json_name: "clickView"

  field :currency_constant, 134,
    type: Google.Ads.Googleads.V9.Resources.CurrencyConstant,
    json_name: "currencyConstant"

  field :custom_audience, 147,
    type: Google.Ads.Googleads.V9.Resources.CustomAudience,
    json_name: "customAudience"

  field :custom_conversion_goal, 176,
    type: Google.Ads.Googleads.V9.Resources.CustomConversionGoal,
    json_name: "customConversionGoal"

  field :custom_interest, 104,
    type: Google.Ads.Googleads.V9.Resources.CustomInterest,
    json_name: "customInterest"

  field :customer, 1, type: Google.Ads.Googleads.V9.Resources.Customer

  field :customer_asset, 155,
    type: Google.Ads.Googleads.V9.Resources.CustomerAsset,
    json_name: "customerAsset"

  field :accessible_bidding_strategy, 169,
    type: Google.Ads.Googleads.V9.Resources.AccessibleBiddingStrategy,
    json_name: "accessibleBiddingStrategy"

  field :customer_customizer, 184,
    type: Google.Ads.Googleads.V9.Resources.CustomerCustomizer,
    json_name: "customerCustomizer"

  field :customer_manager_link, 61,
    type: Google.Ads.Googleads.V9.Resources.CustomerManagerLink,
    json_name: "customerManagerLink"

  field :customer_client_link, 62,
    type: Google.Ads.Googleads.V9.Resources.CustomerClientLink,
    json_name: "customerClientLink"

  field :customer_client, 70,
    type: Google.Ads.Googleads.V9.Resources.CustomerClient,
    json_name: "customerClient"

  field :customer_conversion_goal, 174,
    type: Google.Ads.Googleads.V9.Resources.CustomerConversionGoal,
    json_name: "customerConversionGoal"

  field :customer_extension_setting, 114,
    type: Google.Ads.Googleads.V9.Resources.CustomerExtensionSetting,
    json_name: "customerExtensionSetting"

  field :customer_feed, 64,
    type: Google.Ads.Googleads.V9.Resources.CustomerFeed,
    json_name: "customerFeed"

  field :customer_label, 124,
    type: Google.Ads.Googleads.V9.Resources.CustomerLabel,
    json_name: "customerLabel"

  field :customer_negative_criterion, 88,
    type: Google.Ads.Googleads.V9.Resources.CustomerNegativeCriterion,
    json_name: "customerNegativeCriterion"

  field :customer_user_access, 146,
    type: Google.Ads.Googleads.V9.Resources.CustomerUserAccess,
    json_name: "customerUserAccess"

  field :customer_user_access_invitation, 150,
    type: Google.Ads.Googleads.V9.Resources.CustomerUserAccessInvitation,
    json_name: "customerUserAccessInvitation"

  field :customizer_attribute, 178,
    type: Google.Ads.Googleads.V9.Resources.CustomizerAttribute,
    json_name: "customizerAttribute"

  field :detail_placement_view, 118,
    type: Google.Ads.Googleads.V9.Resources.DetailPlacementView,
    json_name: "detailPlacementView"

  field :detailed_demographic, 166,
    type: Google.Ads.Googleads.V9.Resources.DetailedDemographic,
    json_name: "detailedDemographic"

  field :display_keyword_view, 47,
    type: Google.Ads.Googleads.V9.Resources.DisplayKeywordView,
    json_name: "displayKeywordView"

  field :distance_view, 132,
    type: Google.Ads.Googleads.V9.Resources.DistanceView,
    json_name: "distanceView"

  field :dynamic_search_ads_search_term_view, 106,
    type: Google.Ads.Googleads.V9.Resources.DynamicSearchAdsSearchTermView,
    json_name: "dynamicSearchAdsSearchTermView"

  field :expanded_landing_page_view, 128,
    type: Google.Ads.Googleads.V9.Resources.ExpandedLandingPageView,
    json_name: "expandedLandingPageView"

  field :extension_feed_item, 85,
    type: Google.Ads.Googleads.V9.Resources.ExtensionFeedItem,
    json_name: "extensionFeedItem"

  field :feed, 46, type: Google.Ads.Googleads.V9.Resources.Feed
  field :feed_item, 50, type: Google.Ads.Googleads.V9.Resources.FeedItem, json_name: "feedItem"

  field :feed_item_set, 149,
    type: Google.Ads.Googleads.V9.Resources.FeedItemSet,
    json_name: "feedItemSet"

  field :feed_item_set_link, 151,
    type: Google.Ads.Googleads.V9.Resources.FeedItemSetLink,
    json_name: "feedItemSetLink"

  field :feed_item_target, 116,
    type: Google.Ads.Googleads.V9.Resources.FeedItemTarget,
    json_name: "feedItemTarget"

  field :feed_mapping, 58,
    type: Google.Ads.Googleads.V9.Resources.FeedMapping,
    json_name: "feedMapping"

  field :feed_placeholder_view, 97,
    type: Google.Ads.Googleads.V9.Resources.FeedPlaceholderView,
    json_name: "feedPlaceholderView"

  field :gender_view, 40,
    type: Google.Ads.Googleads.V9.Resources.GenderView,
    json_name: "genderView"

  field :geo_target_constant, 23,
    type: Google.Ads.Googleads.V9.Resources.GeoTargetConstant,
    json_name: "geoTargetConstant"

  field :geographic_view, 125,
    type: Google.Ads.Googleads.V9.Resources.GeographicView,
    json_name: "geographicView"

  field :group_placement_view, 119,
    type: Google.Ads.Googleads.V9.Resources.GroupPlacementView,
    json_name: "groupPlacementView"

  field :hotel_group_view, 51,
    type: Google.Ads.Googleads.V9.Resources.HotelGroupView,
    json_name: "hotelGroupView"

  field :hotel_performance_view, 71,
    type: Google.Ads.Googleads.V9.Resources.HotelPerformanceView,
    json_name: "hotelPerformanceView"

  field :hotel_reconciliation, 188,
    type: Google.Ads.Googleads.V9.Resources.HotelReconciliation,
    json_name: "hotelReconciliation"

  field :income_range_view, 138,
    type: Google.Ads.Googleads.V9.Resources.IncomeRangeView,
    json_name: "incomeRangeView"

  field :keyword_view, 21,
    type: Google.Ads.Googleads.V9.Resources.KeywordView,
    json_name: "keywordView"

  field :keyword_plan, 32,
    type: Google.Ads.Googleads.V9.Resources.KeywordPlan,
    json_name: "keywordPlan"

  field :keyword_plan_campaign, 33,
    type: Google.Ads.Googleads.V9.Resources.KeywordPlanCampaign,
    json_name: "keywordPlanCampaign"

  field :keyword_plan_campaign_keyword, 140,
    type: Google.Ads.Googleads.V9.Resources.KeywordPlanCampaignKeyword,
    json_name: "keywordPlanCampaignKeyword"

  field :keyword_plan_ad_group, 35,
    type: Google.Ads.Googleads.V9.Resources.KeywordPlanAdGroup,
    json_name: "keywordPlanAdGroup"

  field :keyword_plan_ad_group_keyword, 141,
    type: Google.Ads.Googleads.V9.Resources.KeywordPlanAdGroupKeyword,
    json_name: "keywordPlanAdGroupKeyword"

  field :keyword_theme_constant, 163,
    type: Google.Ads.Googleads.V9.Resources.KeywordThemeConstant,
    json_name: "keywordThemeConstant"

  field :label, 52, type: Google.Ads.Googleads.V9.Resources.Label

  field :landing_page_view, 126,
    type: Google.Ads.Googleads.V9.Resources.LandingPageView,
    json_name: "landingPageView"

  field :language_constant, 55,
    type: Google.Ads.Googleads.V9.Resources.LanguageConstant,
    json_name: "languageConstant"

  field :location_view, 123,
    type: Google.Ads.Googleads.V9.Resources.LocationView,
    json_name: "locationView"

  field :managed_placement_view, 53,
    type: Google.Ads.Googleads.V9.Resources.ManagedPlacementView,
    json_name: "managedPlacementView"

  field :media_file, 90, type: Google.Ads.Googleads.V9.Resources.MediaFile, json_name: "mediaFile"

  field :mobile_app_category_constant, 87,
    type: Google.Ads.Googleads.V9.Resources.MobileAppCategoryConstant,
    json_name: "mobileAppCategoryConstant"

  field :mobile_device_constant, 98,
    type: Google.Ads.Googleads.V9.Resources.MobileDeviceConstant,
    json_name: "mobileDeviceConstant"

  field :offline_user_data_job, 137,
    type: Google.Ads.Googleads.V9.Resources.OfflineUserDataJob,
    json_name: "offlineUserDataJob"

  field :operating_system_version_constant, 86,
    type: Google.Ads.Googleads.V9.Resources.OperatingSystemVersionConstant,
    json_name: "operatingSystemVersionConstant"

  field :paid_organic_search_term_view, 129,
    type: Google.Ads.Googleads.V9.Resources.PaidOrganicSearchTermView,
    json_name: "paidOrganicSearchTermView"

  field :parental_status_view, 45,
    type: Google.Ads.Googleads.V9.Resources.ParentalStatusView,
    json_name: "parentalStatusView"

  field :product_bidding_category_constant, 109,
    type: Google.Ads.Googleads.V9.Resources.ProductBiddingCategoryConstant,
    json_name: "productBiddingCategoryConstant"

  field :product_group_view, 54,
    type: Google.Ads.Googleads.V9.Resources.ProductGroupView,
    json_name: "productGroupView"

  field :recommendation, 22, type: Google.Ads.Googleads.V9.Resources.Recommendation

  field :search_term_view, 68,
    type: Google.Ads.Googleads.V9.Resources.SearchTermView,
    json_name: "searchTermView"

  field :shared_criterion, 29,
    type: Google.Ads.Googleads.V9.Resources.SharedCriterion,
    json_name: "sharedCriterion"

  field :shared_set, 27, type: Google.Ads.Googleads.V9.Resources.SharedSet, json_name: "sharedSet"

  field :smart_campaign_setting, 167,
    type: Google.Ads.Googleads.V9.Resources.SmartCampaignSetting,
    json_name: "smartCampaignSetting"

  field :shopping_performance_view, 117,
    type: Google.Ads.Googleads.V9.Resources.ShoppingPerformanceView,
    json_name: "shoppingPerformanceView"

  field :smart_campaign_search_term_view, 170,
    type: Google.Ads.Googleads.V9.Resources.SmartCampaignSearchTermView,
    json_name: "smartCampaignSearchTermView"

  field :third_party_app_analytics_link, 144,
    type: Google.Ads.Googleads.V9.Resources.ThirdPartyAppAnalyticsLink,
    json_name: "thirdPartyAppAnalyticsLink"

  field :topic_view, 44, type: Google.Ads.Googleads.V9.Resources.TopicView, json_name: "topicView"

  field :user_interest, 59,
    type: Google.Ads.Googleads.V9.Resources.UserInterest,
    json_name: "userInterest"

  field :life_event, 161,
    type: Google.Ads.Googleads.V9.Resources.LifeEvent,
    json_name: "lifeEvent"

  field :user_list, 38, type: Google.Ads.Googleads.V9.Resources.UserList, json_name: "userList"

  field :user_location_view, 135,
    type: Google.Ads.Googleads.V9.Resources.UserLocationView,
    json_name: "userLocationView"

  field :remarketing_action, 60,
    type: Google.Ads.Googleads.V9.Resources.RemarketingAction,
    json_name: "remarketingAction"

  field :topic_constant, 31,
    type: Google.Ads.Googleads.V9.Resources.TopicConstant,
    json_name: "topicConstant"

  field :video, 39, type: Google.Ads.Googleads.V9.Resources.Video

  field :webpage_view, 162,
    type: Google.Ads.Googleads.V9.Resources.WebpageView,
    json_name: "webpageView"

  field :metrics, 4, type: Google.Ads.Googleads.V9.Common.Metrics
  field :segments, 102, type: Google.Ads.Googleads.V9.Common.Segments
end
defmodule Google.Ads.Googleads.V9.Services.MutateGoogleAdsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :mutate_operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateOperation,
    json_name: "mutateOperations",
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V9.Services.MutateGoogleAdsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :mutate_operation_responses, 1,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateOperationResponse,
    json_name: "mutateOperationResponses"
end
defmodule Google.Ads.Googleads.V9.Services.MutateOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :operation, 0

  field :ad_group_ad_label_operation, 17,
    type: Google.Ads.Googleads.V9.Services.AdGroupAdLabelOperation,
    json_name: "adGroupAdLabelOperation",
    oneof: 0

  field :ad_group_ad_operation, 1,
    type: Google.Ads.Googleads.V9.Services.AdGroupAdOperation,
    json_name: "adGroupAdOperation",
    oneof: 0

  field :ad_group_asset_operation, 56,
    type: Google.Ads.Googleads.V9.Services.AdGroupAssetOperation,
    json_name: "adGroupAssetOperation",
    oneof: 0

  field :ad_group_bid_modifier_operation, 2,
    type: Google.Ads.Googleads.V9.Services.AdGroupBidModifierOperation,
    json_name: "adGroupBidModifierOperation",
    oneof: 0

  field :ad_group_criterion_customizer_operation, 77,
    type: Google.Ads.Googleads.V9.Services.AdGroupCriterionCustomizerOperation,
    json_name: "adGroupCriterionCustomizerOperation",
    oneof: 0

  field :ad_group_criterion_label_operation, 18,
    type: Google.Ads.Googleads.V9.Services.AdGroupCriterionLabelOperation,
    json_name: "adGroupCriterionLabelOperation",
    oneof: 0

  field :ad_group_criterion_operation, 3,
    type: Google.Ads.Googleads.V9.Services.AdGroupCriterionOperation,
    json_name: "adGroupCriterionOperation",
    oneof: 0

  field :ad_group_customizer_operation, 75,
    type: Google.Ads.Googleads.V9.Services.AdGroupCustomizerOperation,
    json_name: "adGroupCustomizerOperation",
    oneof: 0

  field :ad_group_extension_setting_operation, 19,
    type: Google.Ads.Googleads.V9.Services.AdGroupExtensionSettingOperation,
    json_name: "adGroupExtensionSettingOperation",
    oneof: 0

  field :ad_group_feed_operation, 20,
    type: Google.Ads.Googleads.V9.Services.AdGroupFeedOperation,
    json_name: "adGroupFeedOperation",
    oneof: 0

  field :ad_group_label_operation, 21,
    type: Google.Ads.Googleads.V9.Services.AdGroupLabelOperation,
    json_name: "adGroupLabelOperation",
    oneof: 0

  field :ad_group_operation, 5,
    type: Google.Ads.Googleads.V9.Services.AdGroupOperation,
    json_name: "adGroupOperation",
    oneof: 0

  field :ad_operation, 49,
    type: Google.Ads.Googleads.V9.Services.AdOperation,
    json_name: "adOperation",
    oneof: 0

  field :ad_parameter_operation, 22,
    type: Google.Ads.Googleads.V9.Services.AdParameterOperation,
    json_name: "adParameterOperation",
    oneof: 0

  field :asset_operation, 23,
    type: Google.Ads.Googleads.V9.Services.AssetOperation,
    json_name: "assetOperation",
    oneof: 0

  field :asset_group_asset_operation, 65,
    type: Google.Ads.Googleads.V9.Services.AssetGroupAssetOperation,
    json_name: "assetGroupAssetOperation",
    oneof: 0

  field :asset_group_listing_group_filter_operation, 78,
    type: Google.Ads.Googleads.V9.Services.AssetGroupListingGroupFilterOperation,
    json_name: "assetGroupListingGroupFilterOperation",
    oneof: 0

  field :asset_group_operation, 62,
    type: Google.Ads.Googleads.V9.Services.AssetGroupOperation,
    json_name: "assetGroupOperation",
    oneof: 0

  field :asset_set_asset_operation, 71,
    type: Google.Ads.Googleads.V9.Services.AssetSetAssetOperation,
    json_name: "assetSetAssetOperation",
    oneof: 0

  field :asset_set_operation, 72,
    type: Google.Ads.Googleads.V9.Services.AssetSetOperation,
    json_name: "assetSetOperation",
    oneof: 0

  field :bidding_data_exclusion_operation, 58,
    type: Google.Ads.Googleads.V9.Services.BiddingDataExclusionOperation,
    json_name: "biddingDataExclusionOperation",
    oneof: 0

  field :bidding_seasonality_adjustment_operation, 59,
    type: Google.Ads.Googleads.V9.Services.BiddingSeasonalityAdjustmentOperation,
    json_name: "biddingSeasonalityAdjustmentOperation",
    oneof: 0

  field :bidding_strategy_operation, 6,
    type: Google.Ads.Googleads.V9.Services.BiddingStrategyOperation,
    json_name: "biddingStrategyOperation",
    oneof: 0

  field :campaign_asset_operation, 52,
    type: Google.Ads.Googleads.V9.Services.CampaignAssetOperation,
    json_name: "campaignAssetOperation",
    oneof: 0

  field :campaign_asset_set_operation, 73,
    type: Google.Ads.Googleads.V9.Services.CampaignAssetSetOperation,
    json_name: "campaignAssetSetOperation",
    oneof: 0

  field :campaign_bid_modifier_operation, 7,
    type: Google.Ads.Googleads.V9.Services.CampaignBidModifierOperation,
    json_name: "campaignBidModifierOperation",
    oneof: 0

  field :campaign_budget_operation, 8,
    type: Google.Ads.Googleads.V9.Services.CampaignBudgetOperation,
    json_name: "campaignBudgetOperation",
    oneof: 0

  field :campaign_conversion_goal_operation, 67,
    type: Google.Ads.Googleads.V9.Services.CampaignConversionGoalOperation,
    json_name: "campaignConversionGoalOperation",
    oneof: 0

  field :campaign_criterion_operation, 13,
    type: Google.Ads.Googleads.V9.Services.CampaignCriterionOperation,
    json_name: "campaignCriterionOperation",
    oneof: 0

  field :campaign_customizer_operation, 76,
    type: Google.Ads.Googleads.V9.Services.CampaignCustomizerOperation,
    json_name: "campaignCustomizerOperation",
    oneof: 0

  field :campaign_draft_operation, 24,
    type: Google.Ads.Googleads.V9.Services.CampaignDraftOperation,
    json_name: "campaignDraftOperation",
    oneof: 0

  field :campaign_experiment_operation, 25,
    type: Google.Ads.Googleads.V9.Services.CampaignExperimentOperation,
    json_name: "campaignExperimentOperation",
    oneof: 0

  field :campaign_extension_setting_operation, 26,
    type: Google.Ads.Googleads.V9.Services.CampaignExtensionSettingOperation,
    json_name: "campaignExtensionSettingOperation",
    oneof: 0

  field :campaign_feed_operation, 27,
    type: Google.Ads.Googleads.V9.Services.CampaignFeedOperation,
    json_name: "campaignFeedOperation",
    oneof: 0

  field :campaign_label_operation, 28,
    type: Google.Ads.Googleads.V9.Services.CampaignLabelOperation,
    json_name: "campaignLabelOperation",
    oneof: 0

  field :campaign_operation, 10,
    type: Google.Ads.Googleads.V9.Services.CampaignOperation,
    json_name: "campaignOperation",
    oneof: 0

  field :campaign_shared_set_operation, 11,
    type: Google.Ads.Googleads.V9.Services.CampaignSharedSetOperation,
    json_name: "campaignSharedSetOperation",
    oneof: 0

  field :conversion_action_operation, 12,
    type: Google.Ads.Googleads.V9.Services.ConversionActionOperation,
    json_name: "conversionActionOperation",
    oneof: 0

  field :conversion_custom_variable_operation, 55,
    type: Google.Ads.Googleads.V9.Services.ConversionCustomVariableOperation,
    json_name: "conversionCustomVariableOperation",
    oneof: 0

  field :conversion_goal_campaign_config_operation, 69,
    type: Google.Ads.Googleads.V9.Services.ConversionGoalCampaignConfigOperation,
    json_name: "conversionGoalCampaignConfigOperation",
    oneof: 0

  field :conversion_value_rule_operation, 63,
    type: Google.Ads.Googleads.V9.Services.ConversionValueRuleOperation,
    json_name: "conversionValueRuleOperation",
    oneof: 0

  field :conversion_value_rule_set_operation, 64,
    type: Google.Ads.Googleads.V9.Services.ConversionValueRuleSetOperation,
    json_name: "conversionValueRuleSetOperation",
    oneof: 0

  field :custom_conversion_goal_operation, 68,
    type: Google.Ads.Googleads.V9.Services.CustomConversionGoalOperation,
    json_name: "customConversionGoalOperation",
    oneof: 0

  field :customer_asset_operation, 57,
    type: Google.Ads.Googleads.V9.Services.CustomerAssetOperation,
    json_name: "customerAssetOperation",
    oneof: 0

  field :customer_conversion_goal_operation, 66,
    type: Google.Ads.Googleads.V9.Services.CustomerConversionGoalOperation,
    json_name: "customerConversionGoalOperation",
    oneof: 0

  field :customizer_customizer_operation, 74,
    type: Google.Ads.Googleads.V9.Services.CustomerCustomizerOperation,
    json_name: "customizerCustomizerOperation",
    oneof: 0

  field :customer_extension_setting_operation, 30,
    type: Google.Ads.Googleads.V9.Services.CustomerExtensionSettingOperation,
    json_name: "customerExtensionSettingOperation",
    oneof: 0

  field :customer_feed_operation, 31,
    type: Google.Ads.Googleads.V9.Services.CustomerFeedOperation,
    json_name: "customerFeedOperation",
    oneof: 0

  field :customer_label_operation, 32,
    type: Google.Ads.Googleads.V9.Services.CustomerLabelOperation,
    json_name: "customerLabelOperation",
    oneof: 0

  field :customer_negative_criterion_operation, 34,
    type: Google.Ads.Googleads.V9.Services.CustomerNegativeCriterionOperation,
    json_name: "customerNegativeCriterionOperation",
    oneof: 0

  field :customer_operation, 35,
    type: Google.Ads.Googleads.V9.Services.CustomerOperation,
    json_name: "customerOperation",
    oneof: 0

  field :customizer_attribute_operation, 70,
    type: Google.Ads.Googleads.V9.Services.CustomizerAttributeOperation,
    json_name: "customizerAttributeOperation",
    oneof: 0

  field :extension_feed_item_operation, 36,
    type: Google.Ads.Googleads.V9.Services.ExtensionFeedItemOperation,
    json_name: "extensionFeedItemOperation",
    oneof: 0

  field :feed_item_operation, 37,
    type: Google.Ads.Googleads.V9.Services.FeedItemOperation,
    json_name: "feedItemOperation",
    oneof: 0

  field :feed_item_set_operation, 53,
    type: Google.Ads.Googleads.V9.Services.FeedItemSetOperation,
    json_name: "feedItemSetOperation",
    oneof: 0

  field :feed_item_set_link_operation, 54,
    type: Google.Ads.Googleads.V9.Services.FeedItemSetLinkOperation,
    json_name: "feedItemSetLinkOperation",
    oneof: 0

  field :feed_item_target_operation, 38,
    type: Google.Ads.Googleads.V9.Services.FeedItemTargetOperation,
    json_name: "feedItemTargetOperation",
    oneof: 0

  field :feed_mapping_operation, 39,
    type: Google.Ads.Googleads.V9.Services.FeedMappingOperation,
    json_name: "feedMappingOperation",
    oneof: 0

  field :feed_operation, 40,
    type: Google.Ads.Googleads.V9.Services.FeedOperation,
    json_name: "feedOperation",
    oneof: 0

  field :keyword_plan_ad_group_operation, 44,
    type: Google.Ads.Googleads.V9.Services.KeywordPlanAdGroupOperation,
    json_name: "keywordPlanAdGroupOperation",
    oneof: 0

  field :keyword_plan_ad_group_keyword_operation, 50,
    type: Google.Ads.Googleads.V9.Services.KeywordPlanAdGroupKeywordOperation,
    json_name: "keywordPlanAdGroupKeywordOperation",
    oneof: 0

  field :keyword_plan_campaign_keyword_operation, 51,
    type: Google.Ads.Googleads.V9.Services.KeywordPlanCampaignKeywordOperation,
    json_name: "keywordPlanCampaignKeywordOperation",
    oneof: 0

  field :keyword_plan_campaign_operation, 45,
    type: Google.Ads.Googleads.V9.Services.KeywordPlanCampaignOperation,
    json_name: "keywordPlanCampaignOperation",
    oneof: 0

  field :keyword_plan_operation, 48,
    type: Google.Ads.Googleads.V9.Services.KeywordPlanOperation,
    json_name: "keywordPlanOperation",
    oneof: 0

  field :label_operation, 41,
    type: Google.Ads.Googleads.V9.Services.LabelOperation,
    json_name: "labelOperation",
    oneof: 0

  field :media_file_operation, 42,
    type: Google.Ads.Googleads.V9.Services.MediaFileOperation,
    json_name: "mediaFileOperation",
    oneof: 0

  field :remarketing_action_operation, 43,
    type: Google.Ads.Googleads.V9.Services.RemarketingActionOperation,
    json_name: "remarketingActionOperation",
    oneof: 0

  field :shared_criterion_operation, 14,
    type: Google.Ads.Googleads.V9.Services.SharedCriterionOperation,
    json_name: "sharedCriterionOperation",
    oneof: 0

  field :shared_set_operation, 15,
    type: Google.Ads.Googleads.V9.Services.SharedSetOperation,
    json_name: "sharedSetOperation",
    oneof: 0

  field :smart_campaign_setting_operation, 61,
    type: Google.Ads.Googleads.V9.Services.SmartCampaignSettingOperation,
    json_name: "smartCampaignSettingOperation",
    oneof: 0

  field :user_list_operation, 16,
    type: Google.Ads.Googleads.V9.Services.UserListOperation,
    json_name: "userListOperation",
    oneof: 0
end
defmodule Google.Ads.Googleads.V9.Services.MutateOperationResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :response, 0

  field :ad_group_ad_label_result, 17,
    type: Google.Ads.Googleads.V9.Services.MutateAdGroupAdLabelResult,
    json_name: "adGroupAdLabelResult",
    oneof: 0

  field :ad_group_ad_result, 1,
    type: Google.Ads.Googleads.V9.Services.MutateAdGroupAdResult,
    json_name: "adGroupAdResult",
    oneof: 0

  field :ad_group_asset_result, 56,
    type: Google.Ads.Googleads.V9.Services.MutateAdGroupAssetResult,
    json_name: "adGroupAssetResult",
    oneof: 0

  field :ad_group_bid_modifier_result, 2,
    type: Google.Ads.Googleads.V9.Services.MutateAdGroupBidModifierResult,
    json_name: "adGroupBidModifierResult",
    oneof: 0

  field :ad_group_criterion_customizer_result, 77,
    type: Google.Ads.Googleads.V9.Services.MutateAdGroupCriterionCustomizerResult,
    json_name: "adGroupCriterionCustomizerResult",
    oneof: 0

  field :ad_group_criterion_label_result, 18,
    type: Google.Ads.Googleads.V9.Services.MutateAdGroupCriterionLabelResult,
    json_name: "adGroupCriterionLabelResult",
    oneof: 0

  field :ad_group_criterion_result, 3,
    type: Google.Ads.Googleads.V9.Services.MutateAdGroupCriterionResult,
    json_name: "adGroupCriterionResult",
    oneof: 0

  field :ad_group_customizer_result, 75,
    type: Google.Ads.Googleads.V9.Services.MutateAdGroupCustomizerResult,
    json_name: "adGroupCustomizerResult",
    oneof: 0

  field :ad_group_extension_setting_result, 19,
    type: Google.Ads.Googleads.V9.Services.MutateAdGroupExtensionSettingResult,
    json_name: "adGroupExtensionSettingResult",
    oneof: 0

  field :ad_group_feed_result, 20,
    type: Google.Ads.Googleads.V9.Services.MutateAdGroupFeedResult,
    json_name: "adGroupFeedResult",
    oneof: 0

  field :ad_group_label_result, 21,
    type: Google.Ads.Googleads.V9.Services.MutateAdGroupLabelResult,
    json_name: "adGroupLabelResult",
    oneof: 0

  field :ad_group_result, 5,
    type: Google.Ads.Googleads.V9.Services.MutateAdGroupResult,
    json_name: "adGroupResult",
    oneof: 0

  field :ad_parameter_result, 22,
    type: Google.Ads.Googleads.V9.Services.MutateAdParameterResult,
    json_name: "adParameterResult",
    oneof: 0

  field :ad_result, 49,
    type: Google.Ads.Googleads.V9.Services.MutateAdResult,
    json_name: "adResult",
    oneof: 0

  field :asset_result, 23,
    type: Google.Ads.Googleads.V9.Services.MutateAssetResult,
    json_name: "assetResult",
    oneof: 0

  field :asset_group_asset_result, 65,
    type: Google.Ads.Googleads.V9.Services.MutateAssetGroupAssetResult,
    json_name: "assetGroupAssetResult",
    oneof: 0

  field :asset_group_listing_group_filter_result, 78,
    type: Google.Ads.Googleads.V9.Services.MutateAssetGroupListingGroupFilterResult,
    json_name: "assetGroupListingGroupFilterResult",
    oneof: 0

  field :asset_group_result, 62,
    type: Google.Ads.Googleads.V9.Services.MutateAssetGroupResult,
    json_name: "assetGroupResult",
    oneof: 0

  field :asset_set_asset_result, 71,
    type: Google.Ads.Googleads.V9.Services.MutateAssetSetAssetResult,
    json_name: "assetSetAssetResult",
    oneof: 0

  field :asset_set_result, 72,
    type: Google.Ads.Googleads.V9.Services.MutateAssetSetResult,
    json_name: "assetSetResult",
    oneof: 0

  field :bidding_data_exclusion_result, 58,
    type: Google.Ads.Googleads.V9.Services.MutateBiddingDataExclusionsResult,
    json_name: "biddingDataExclusionResult",
    oneof: 0

  field :bidding_seasonality_adjustment_result, 59,
    type: Google.Ads.Googleads.V9.Services.MutateBiddingSeasonalityAdjustmentsResult,
    json_name: "biddingSeasonalityAdjustmentResult",
    oneof: 0

  field :bidding_strategy_result, 6,
    type: Google.Ads.Googleads.V9.Services.MutateBiddingStrategyResult,
    json_name: "biddingStrategyResult",
    oneof: 0

  field :campaign_asset_result, 52,
    type: Google.Ads.Googleads.V9.Services.MutateCampaignAssetResult,
    json_name: "campaignAssetResult",
    oneof: 0

  field :campaign_asset_set_result, 73,
    type: Google.Ads.Googleads.V9.Services.MutateCampaignAssetSetResult,
    json_name: "campaignAssetSetResult",
    oneof: 0

  field :campaign_bid_modifier_result, 7,
    type: Google.Ads.Googleads.V9.Services.MutateCampaignBidModifierResult,
    json_name: "campaignBidModifierResult",
    oneof: 0

  field :campaign_budget_result, 8,
    type: Google.Ads.Googleads.V9.Services.MutateCampaignBudgetResult,
    json_name: "campaignBudgetResult",
    oneof: 0

  field :campaign_conversion_goal_result, 67,
    type: Google.Ads.Googleads.V9.Services.MutateCampaignConversionGoalResult,
    json_name: "campaignConversionGoalResult",
    oneof: 0

  field :campaign_criterion_result, 13,
    type: Google.Ads.Googleads.V9.Services.MutateCampaignCriterionResult,
    json_name: "campaignCriterionResult",
    oneof: 0

  field :campaign_customizer_result, 76,
    type: Google.Ads.Googleads.V9.Services.MutateCampaignCustomizerResult,
    json_name: "campaignCustomizerResult",
    oneof: 0

  field :campaign_draft_result, 24,
    type: Google.Ads.Googleads.V9.Services.MutateCampaignDraftResult,
    json_name: "campaignDraftResult",
    oneof: 0

  field :campaign_experiment_result, 25,
    type: Google.Ads.Googleads.V9.Services.MutateCampaignExperimentResult,
    json_name: "campaignExperimentResult",
    oneof: 0

  field :campaign_extension_setting_result, 26,
    type: Google.Ads.Googleads.V9.Services.MutateCampaignExtensionSettingResult,
    json_name: "campaignExtensionSettingResult",
    oneof: 0

  field :campaign_feed_result, 27,
    type: Google.Ads.Googleads.V9.Services.MutateCampaignFeedResult,
    json_name: "campaignFeedResult",
    oneof: 0

  field :campaign_label_result, 28,
    type: Google.Ads.Googleads.V9.Services.MutateCampaignLabelResult,
    json_name: "campaignLabelResult",
    oneof: 0

  field :campaign_result, 10,
    type: Google.Ads.Googleads.V9.Services.MutateCampaignResult,
    json_name: "campaignResult",
    oneof: 0

  field :campaign_shared_set_result, 11,
    type: Google.Ads.Googleads.V9.Services.MutateCampaignSharedSetResult,
    json_name: "campaignSharedSetResult",
    oneof: 0

  field :conversion_action_result, 12,
    type: Google.Ads.Googleads.V9.Services.MutateConversionActionResult,
    json_name: "conversionActionResult",
    oneof: 0

  field :conversion_custom_variable_result, 55,
    type: Google.Ads.Googleads.V9.Services.MutateConversionCustomVariableResult,
    json_name: "conversionCustomVariableResult",
    oneof: 0

  field :conversion_goal_campaign_config_result, 69,
    type: Google.Ads.Googleads.V9.Services.MutateConversionGoalCampaignConfigResult,
    json_name: "conversionGoalCampaignConfigResult",
    oneof: 0

  field :conversion_value_rule_result, 63,
    type: Google.Ads.Googleads.V9.Services.MutateConversionValueRuleResult,
    json_name: "conversionValueRuleResult",
    oneof: 0

  field :conversion_value_rule_set_result, 64,
    type: Google.Ads.Googleads.V9.Services.MutateConversionValueRuleSetResult,
    json_name: "conversionValueRuleSetResult",
    oneof: 0

  field :custom_conversion_goal_result, 68,
    type: Google.Ads.Googleads.V9.Services.MutateCustomConversionGoalResult,
    json_name: "customConversionGoalResult",
    oneof: 0

  field :customer_asset_result, 57,
    type: Google.Ads.Googleads.V9.Services.MutateCustomerAssetResult,
    json_name: "customerAssetResult",
    oneof: 0

  field :customer_conversion_goal_result, 66,
    type: Google.Ads.Googleads.V9.Services.MutateCustomerConversionGoalResult,
    json_name: "customerConversionGoalResult",
    oneof: 0

  field :customer_customizer_result, 74,
    type: Google.Ads.Googleads.V9.Services.MutateCustomerCustomizerResult,
    json_name: "customerCustomizerResult",
    oneof: 0

  field :customer_extension_setting_result, 30,
    type: Google.Ads.Googleads.V9.Services.MutateCustomerExtensionSettingResult,
    json_name: "customerExtensionSettingResult",
    oneof: 0

  field :customer_feed_result, 31,
    type: Google.Ads.Googleads.V9.Services.MutateCustomerFeedResult,
    json_name: "customerFeedResult",
    oneof: 0

  field :customer_label_result, 32,
    type: Google.Ads.Googleads.V9.Services.MutateCustomerLabelResult,
    json_name: "customerLabelResult",
    oneof: 0

  field :customer_negative_criterion_result, 34,
    type: Google.Ads.Googleads.V9.Services.MutateCustomerNegativeCriteriaResult,
    json_name: "customerNegativeCriterionResult",
    oneof: 0

  field :customer_result, 35,
    type: Google.Ads.Googleads.V9.Services.MutateCustomerResult,
    json_name: "customerResult",
    oneof: 0

  field :customizer_attribute_result, 70,
    type: Google.Ads.Googleads.V9.Services.MutateCustomizerAttributeResult,
    json_name: "customizerAttributeResult",
    oneof: 0

  field :extension_feed_item_result, 36,
    type: Google.Ads.Googleads.V9.Services.MutateExtensionFeedItemResult,
    json_name: "extensionFeedItemResult",
    oneof: 0

  field :feed_item_result, 37,
    type: Google.Ads.Googleads.V9.Services.MutateFeedItemResult,
    json_name: "feedItemResult",
    oneof: 0

  field :feed_item_set_result, 53,
    type: Google.Ads.Googleads.V9.Services.MutateFeedItemSetResult,
    json_name: "feedItemSetResult",
    oneof: 0

  field :feed_item_set_link_result, 54,
    type: Google.Ads.Googleads.V9.Services.MutateFeedItemSetLinkResult,
    json_name: "feedItemSetLinkResult",
    oneof: 0

  field :feed_item_target_result, 38,
    type: Google.Ads.Googleads.V9.Services.MutateFeedItemTargetResult,
    json_name: "feedItemTargetResult",
    oneof: 0

  field :feed_mapping_result, 39,
    type: Google.Ads.Googleads.V9.Services.MutateFeedMappingResult,
    json_name: "feedMappingResult",
    oneof: 0

  field :feed_result, 40,
    type: Google.Ads.Googleads.V9.Services.MutateFeedResult,
    json_name: "feedResult",
    oneof: 0

  field :keyword_plan_ad_group_result, 44,
    type: Google.Ads.Googleads.V9.Services.MutateKeywordPlanAdGroupResult,
    json_name: "keywordPlanAdGroupResult",
    oneof: 0

  field :keyword_plan_campaign_result, 45,
    type: Google.Ads.Googleads.V9.Services.MutateKeywordPlanCampaignResult,
    json_name: "keywordPlanCampaignResult",
    oneof: 0

  field :keyword_plan_ad_group_keyword_result, 50,
    type: Google.Ads.Googleads.V9.Services.MutateKeywordPlanAdGroupKeywordResult,
    json_name: "keywordPlanAdGroupKeywordResult",
    oneof: 0

  field :keyword_plan_campaign_keyword_result, 51,
    type: Google.Ads.Googleads.V9.Services.MutateKeywordPlanCampaignKeywordResult,
    json_name: "keywordPlanCampaignKeywordResult",
    oneof: 0

  field :keyword_plan_result, 48,
    type: Google.Ads.Googleads.V9.Services.MutateKeywordPlansResult,
    json_name: "keywordPlanResult",
    oneof: 0

  field :label_result, 41,
    type: Google.Ads.Googleads.V9.Services.MutateLabelResult,
    json_name: "labelResult",
    oneof: 0

  field :media_file_result, 42,
    type: Google.Ads.Googleads.V9.Services.MutateMediaFileResult,
    json_name: "mediaFileResult",
    oneof: 0

  field :remarketing_action_result, 43,
    type: Google.Ads.Googleads.V9.Services.MutateRemarketingActionResult,
    json_name: "remarketingActionResult",
    oneof: 0

  field :shared_criterion_result, 14,
    type: Google.Ads.Googleads.V9.Services.MutateSharedCriterionResult,
    json_name: "sharedCriterionResult",
    oneof: 0

  field :shared_set_result, 15,
    type: Google.Ads.Googleads.V9.Services.MutateSharedSetResult,
    json_name: "sharedSetResult",
    oneof: 0

  field :smart_campaign_setting_result, 61,
    type: Google.Ads.Googleads.V9.Services.MutateSmartCampaignSettingResult,
    json_name: "smartCampaignSettingResult",
    oneof: 0

  field :user_list_result, 16,
    type: Google.Ads.Googleads.V9.Services.MutateUserListResult,
    json_name: "userListResult",
    oneof: 0
end
defmodule Google.Ads.Googleads.V9.Services.GoogleAdsService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.GoogleAdsService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :Search,
      Google.Ads.Googleads.V9.Services.SearchGoogleAdsRequest,
      Google.Ads.Googleads.V9.Services.SearchGoogleAdsResponse

  rpc :SearchStream,
      Google.Ads.Googleads.V9.Services.SearchGoogleAdsStreamRequest,
      stream(Google.Ads.Googleads.V9.Services.SearchGoogleAdsStreamResponse)

  rpc :Mutate,
      Google.Ads.Googleads.V9.Services.MutateGoogleAdsRequest,
      Google.Ads.Googleads.V9.Services.MutateGoogleAdsResponse
end

defmodule Google.Ads.Googleads.V9.Services.GoogleAdsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.GoogleAdsService.Service
end
