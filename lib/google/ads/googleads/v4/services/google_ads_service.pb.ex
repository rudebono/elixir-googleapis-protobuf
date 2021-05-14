defmodule Google.Ads.Googleads.V4.Services.SearchGoogleAdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          query: String.t(),
          page_token: String.t(),
          page_size: integer,
          validate_only: boolean,
          return_total_results_count: boolean,
          summary_row_setting:
            Google.Ads.Googleads.V4.Enums.SummaryRowSettingEnum.SummaryRowSetting.t()
        }

  defstruct [
    :customer_id,
    :query,
    :page_token,
    :page_size,
    :validate_only,
    :return_total_results_count,
    :summary_row_setting
  ]

  field :customer_id, 1, type: :string
  field :query, 2, type: :string
  field :page_token, 3, type: :string
  field :page_size, 4, type: :int32
  field :validate_only, 5, type: :bool
  field :return_total_results_count, 7, type: :bool

  field :summary_row_setting, 8,
    type: Google.Ads.Googleads.V4.Enums.SummaryRowSettingEnum.SummaryRowSetting,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Services.SearchGoogleAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V4.Services.GoogleAdsRow.t()],
          next_page_token: String.t(),
          total_results_count: integer,
          field_mask: Google.Protobuf.FieldMask.t() | nil,
          summary_row: Google.Ads.Googleads.V4.Services.GoogleAdsRow.t() | nil
        }

  defstruct [:results, :next_page_token, :total_results_count, :field_mask, :summary_row]

  field :results, 1, repeated: true, type: Google.Ads.Googleads.V4.Services.GoogleAdsRow
  field :next_page_token, 2, type: :string
  field :total_results_count, 3, type: :int64
  field :field_mask, 5, type: Google.Protobuf.FieldMask
  field :summary_row, 6, type: Google.Ads.Googleads.V4.Services.GoogleAdsRow
end

defmodule Google.Ads.Googleads.V4.Services.SearchGoogleAdsStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          query: String.t(),
          summary_row_setting:
            Google.Ads.Googleads.V4.Enums.SummaryRowSettingEnum.SummaryRowSetting.t()
        }

  defstruct [:customer_id, :query, :summary_row_setting]

  field :customer_id, 1, type: :string
  field :query, 2, type: :string

  field :summary_row_setting, 3,
    type: Google.Ads.Googleads.V4.Enums.SummaryRowSettingEnum.SummaryRowSetting,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Services.SearchGoogleAdsStreamResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V4.Services.GoogleAdsRow.t()],
          field_mask: Google.Protobuf.FieldMask.t() | nil,
          summary_row: Google.Ads.Googleads.V4.Services.GoogleAdsRow.t() | nil
        }

  defstruct [:results, :field_mask, :summary_row]

  field :results, 1, repeated: true, type: Google.Ads.Googleads.V4.Services.GoogleAdsRow
  field :field_mask, 2, type: Google.Protobuf.FieldMask
  field :summary_row, 3, type: Google.Ads.Googleads.V4.Services.GoogleAdsRow
end

defmodule Google.Ads.Googleads.V4.Services.GoogleAdsRow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account_budget: Google.Ads.Googleads.V4.Resources.AccountBudget.t() | nil,
          account_budget_proposal:
            Google.Ads.Googleads.V4.Resources.AccountBudgetProposal.t() | nil,
          account_link: Google.Ads.Googleads.V4.Resources.AccountLink.t() | nil,
          ad_group: Google.Ads.Googleads.V4.Resources.AdGroup.t() | nil,
          ad_group_ad: Google.Ads.Googleads.V4.Resources.AdGroupAd.t() | nil,
          ad_group_ad_asset_view: Google.Ads.Googleads.V4.Resources.AdGroupAdAssetView.t() | nil,
          ad_group_ad_label: Google.Ads.Googleads.V4.Resources.AdGroupAdLabel.t() | nil,
          ad_group_audience_view: Google.Ads.Googleads.V4.Resources.AdGroupAudienceView.t() | nil,
          ad_group_bid_modifier: Google.Ads.Googleads.V4.Resources.AdGroupBidModifier.t() | nil,
          ad_group_criterion: Google.Ads.Googleads.V4.Resources.AdGroupCriterion.t() | nil,
          ad_group_criterion_label:
            Google.Ads.Googleads.V4.Resources.AdGroupCriterionLabel.t() | nil,
          ad_group_criterion_simulation:
            Google.Ads.Googleads.V4.Resources.AdGroupCriterionSimulation.t() | nil,
          ad_group_extension_setting:
            Google.Ads.Googleads.V4.Resources.AdGroupExtensionSetting.t() | nil,
          ad_group_feed: Google.Ads.Googleads.V4.Resources.AdGroupFeed.t() | nil,
          ad_group_label: Google.Ads.Googleads.V4.Resources.AdGroupLabel.t() | nil,
          ad_group_simulation: Google.Ads.Googleads.V4.Resources.AdGroupSimulation.t() | nil,
          ad_parameter: Google.Ads.Googleads.V4.Resources.AdParameter.t() | nil,
          age_range_view: Google.Ads.Googleads.V4.Resources.AgeRangeView.t() | nil,
          ad_schedule_view: Google.Ads.Googleads.V4.Resources.AdScheduleView.t() | nil,
          domain_category: Google.Ads.Googleads.V4.Resources.DomainCategory.t() | nil,
          asset: Google.Ads.Googleads.V4.Resources.Asset.t() | nil,
          batch_job: Google.Ads.Googleads.V4.Resources.BatchJob.t() | nil,
          bidding_strategy: Google.Ads.Googleads.V4.Resources.BiddingStrategy.t() | nil,
          billing_setup: Google.Ads.Googleads.V4.Resources.BillingSetup.t() | nil,
          campaign_budget: Google.Ads.Googleads.V4.Resources.CampaignBudget.t() | nil,
          campaign: Google.Ads.Googleads.V4.Resources.Campaign.t() | nil,
          campaign_audience_view:
            Google.Ads.Googleads.V4.Resources.CampaignAudienceView.t() | nil,
          campaign_bid_modifier: Google.Ads.Googleads.V4.Resources.CampaignBidModifier.t() | nil,
          campaign_criterion: Google.Ads.Googleads.V4.Resources.CampaignCriterion.t() | nil,
          campaign_criterion_simulation:
            Google.Ads.Googleads.V4.Resources.CampaignCriterionSimulation.t() | nil,
          campaign_draft: Google.Ads.Googleads.V4.Resources.CampaignDraft.t() | nil,
          campaign_experiment: Google.Ads.Googleads.V4.Resources.CampaignExperiment.t() | nil,
          campaign_extension_setting:
            Google.Ads.Googleads.V4.Resources.CampaignExtensionSetting.t() | nil,
          campaign_feed: Google.Ads.Googleads.V4.Resources.CampaignFeed.t() | nil,
          campaign_label: Google.Ads.Googleads.V4.Resources.CampaignLabel.t() | nil,
          campaign_shared_set: Google.Ads.Googleads.V4.Resources.CampaignSharedSet.t() | nil,
          carrier_constant: Google.Ads.Googleads.V4.Resources.CarrierConstant.t() | nil,
          change_status: Google.Ads.Googleads.V4.Resources.ChangeStatus.t() | nil,
          conversion_action: Google.Ads.Googleads.V4.Resources.ConversionAction.t() | nil,
          click_view: Google.Ads.Googleads.V4.Resources.ClickView.t() | nil,
          currency_constant: Google.Ads.Googleads.V4.Resources.CurrencyConstant.t() | nil,
          custom_interest: Google.Ads.Googleads.V4.Resources.CustomInterest.t() | nil,
          customer: Google.Ads.Googleads.V4.Resources.Customer.t() | nil,
          customer_manager_link: Google.Ads.Googleads.V4.Resources.CustomerManagerLink.t() | nil,
          customer_client_link: Google.Ads.Googleads.V4.Resources.CustomerClientLink.t() | nil,
          customer_client: Google.Ads.Googleads.V4.Resources.CustomerClient.t() | nil,
          customer_extension_setting:
            Google.Ads.Googleads.V4.Resources.CustomerExtensionSetting.t() | nil,
          customer_feed: Google.Ads.Googleads.V4.Resources.CustomerFeed.t() | nil,
          customer_label: Google.Ads.Googleads.V4.Resources.CustomerLabel.t() | nil,
          customer_negative_criterion:
            Google.Ads.Googleads.V4.Resources.CustomerNegativeCriterion.t() | nil,
          detail_placement_view: Google.Ads.Googleads.V4.Resources.DetailPlacementView.t() | nil,
          display_keyword_view: Google.Ads.Googleads.V4.Resources.DisplayKeywordView.t() | nil,
          distance_view: Google.Ads.Googleads.V4.Resources.DistanceView.t() | nil,
          dynamic_search_ads_search_term_view:
            Google.Ads.Googleads.V4.Resources.DynamicSearchAdsSearchTermView.t() | nil,
          expanded_landing_page_view:
            Google.Ads.Googleads.V4.Resources.ExpandedLandingPageView.t() | nil,
          extension_feed_item: Google.Ads.Googleads.V4.Resources.ExtensionFeedItem.t() | nil,
          feed: Google.Ads.Googleads.V4.Resources.Feed.t() | nil,
          feed_item: Google.Ads.Googleads.V4.Resources.FeedItem.t() | nil,
          feed_item_target: Google.Ads.Googleads.V4.Resources.FeedItemTarget.t() | nil,
          feed_mapping: Google.Ads.Googleads.V4.Resources.FeedMapping.t() | nil,
          feed_placeholder_view: Google.Ads.Googleads.V4.Resources.FeedPlaceholderView.t() | nil,
          gender_view: Google.Ads.Googleads.V4.Resources.GenderView.t() | nil,
          geo_target_constant: Google.Ads.Googleads.V4.Resources.GeoTargetConstant.t() | nil,
          geographic_view: Google.Ads.Googleads.V4.Resources.GeographicView.t() | nil,
          group_placement_view: Google.Ads.Googleads.V4.Resources.GroupPlacementView.t() | nil,
          hotel_group_view: Google.Ads.Googleads.V4.Resources.HotelGroupView.t() | nil,
          hotel_performance_view:
            Google.Ads.Googleads.V4.Resources.HotelPerformanceView.t() | nil,
          income_range_view: Google.Ads.Googleads.V4.Resources.IncomeRangeView.t() | nil,
          keyword_view: Google.Ads.Googleads.V4.Resources.KeywordView.t() | nil,
          keyword_plan: Google.Ads.Googleads.V4.Resources.KeywordPlan.t() | nil,
          keyword_plan_campaign: Google.Ads.Googleads.V4.Resources.KeywordPlanCampaign.t() | nil,
          keyword_plan_campaign_keyword:
            Google.Ads.Googleads.V4.Resources.KeywordPlanCampaignKeyword.t() | nil,
          keyword_plan_ad_group: Google.Ads.Googleads.V4.Resources.KeywordPlanAdGroup.t() | nil,
          keyword_plan_ad_group_keyword:
            Google.Ads.Googleads.V4.Resources.KeywordPlanAdGroupKeyword.t() | nil,
          label: Google.Ads.Googleads.V4.Resources.Label.t() | nil,
          landing_page_view: Google.Ads.Googleads.V4.Resources.LandingPageView.t() | nil,
          language_constant: Google.Ads.Googleads.V4.Resources.LanguageConstant.t() | nil,
          location_view: Google.Ads.Googleads.V4.Resources.LocationView.t() | nil,
          managed_placement_view:
            Google.Ads.Googleads.V4.Resources.ManagedPlacementView.t() | nil,
          media_file: Google.Ads.Googleads.V4.Resources.MediaFile.t() | nil,
          mobile_app_category_constant:
            Google.Ads.Googleads.V4.Resources.MobileAppCategoryConstant.t() | nil,
          mobile_device_constant:
            Google.Ads.Googleads.V4.Resources.MobileDeviceConstant.t() | nil,
          offline_user_data_job: Google.Ads.Googleads.V4.Resources.OfflineUserDataJob.t() | nil,
          operating_system_version_constant:
            Google.Ads.Googleads.V4.Resources.OperatingSystemVersionConstant.t() | nil,
          paid_organic_search_term_view:
            Google.Ads.Googleads.V4.Resources.PaidOrganicSearchTermView.t() | nil,
          parental_status_view: Google.Ads.Googleads.V4.Resources.ParentalStatusView.t() | nil,
          product_bidding_category_constant:
            Google.Ads.Googleads.V4.Resources.ProductBiddingCategoryConstant.t() | nil,
          product_group_view: Google.Ads.Googleads.V4.Resources.ProductGroupView.t() | nil,
          recommendation: Google.Ads.Googleads.V4.Resources.Recommendation.t() | nil,
          search_term_view: Google.Ads.Googleads.V4.Resources.SearchTermView.t() | nil,
          shared_criterion: Google.Ads.Googleads.V4.Resources.SharedCriterion.t() | nil,
          shared_set: Google.Ads.Googleads.V4.Resources.SharedSet.t() | nil,
          shopping_performance_view:
            Google.Ads.Googleads.V4.Resources.ShoppingPerformanceView.t() | nil,
          third_party_app_analytics_link:
            Google.Ads.Googleads.V4.Resources.ThirdPartyAppAnalyticsLink.t() | nil,
          topic_view: Google.Ads.Googleads.V4.Resources.TopicView.t() | nil,
          user_interest: Google.Ads.Googleads.V4.Resources.UserInterest.t() | nil,
          user_list: Google.Ads.Googleads.V4.Resources.UserList.t() | nil,
          user_location_view: Google.Ads.Googleads.V4.Resources.UserLocationView.t() | nil,
          remarketing_action: Google.Ads.Googleads.V4.Resources.RemarketingAction.t() | nil,
          topic_constant: Google.Ads.Googleads.V4.Resources.TopicConstant.t() | nil,
          video: Google.Ads.Googleads.V4.Resources.Video.t() | nil,
          metrics: Google.Ads.Googleads.V4.Common.Metrics.t() | nil,
          segments: Google.Ads.Googleads.V4.Common.Segments.t() | nil
        }

  defstruct [
    :account_budget,
    :account_budget_proposal,
    :account_link,
    :ad_group,
    :ad_group_ad,
    :ad_group_ad_asset_view,
    :ad_group_ad_label,
    :ad_group_audience_view,
    :ad_group_bid_modifier,
    :ad_group_criterion,
    :ad_group_criterion_label,
    :ad_group_criterion_simulation,
    :ad_group_extension_setting,
    :ad_group_feed,
    :ad_group_label,
    :ad_group_simulation,
    :ad_parameter,
    :age_range_view,
    :ad_schedule_view,
    :domain_category,
    :asset,
    :batch_job,
    :bidding_strategy,
    :billing_setup,
    :campaign_budget,
    :campaign,
    :campaign_audience_view,
    :campaign_bid_modifier,
    :campaign_criterion,
    :campaign_criterion_simulation,
    :campaign_draft,
    :campaign_experiment,
    :campaign_extension_setting,
    :campaign_feed,
    :campaign_label,
    :campaign_shared_set,
    :carrier_constant,
    :change_status,
    :conversion_action,
    :click_view,
    :currency_constant,
    :custom_interest,
    :customer,
    :customer_manager_link,
    :customer_client_link,
    :customer_client,
    :customer_extension_setting,
    :customer_feed,
    :customer_label,
    :customer_negative_criterion,
    :detail_placement_view,
    :display_keyword_view,
    :distance_view,
    :dynamic_search_ads_search_term_view,
    :expanded_landing_page_view,
    :extension_feed_item,
    :feed,
    :feed_item,
    :feed_item_target,
    :feed_mapping,
    :feed_placeholder_view,
    :gender_view,
    :geo_target_constant,
    :geographic_view,
    :group_placement_view,
    :hotel_group_view,
    :hotel_performance_view,
    :income_range_view,
    :keyword_view,
    :keyword_plan,
    :keyword_plan_campaign,
    :keyword_plan_campaign_keyword,
    :keyword_plan_ad_group,
    :keyword_plan_ad_group_keyword,
    :label,
    :landing_page_view,
    :language_constant,
    :location_view,
    :managed_placement_view,
    :media_file,
    :mobile_app_category_constant,
    :mobile_device_constant,
    :offline_user_data_job,
    :operating_system_version_constant,
    :paid_organic_search_term_view,
    :parental_status_view,
    :product_bidding_category_constant,
    :product_group_view,
    :recommendation,
    :search_term_view,
    :shared_criterion,
    :shared_set,
    :shopping_performance_view,
    :third_party_app_analytics_link,
    :topic_view,
    :user_interest,
    :user_list,
    :user_location_view,
    :remarketing_action,
    :topic_constant,
    :video,
    :metrics,
    :segments
  ]

  field :account_budget, 42, type: Google.Ads.Googleads.V4.Resources.AccountBudget

  field :account_budget_proposal, 43,
    type: Google.Ads.Googleads.V4.Resources.AccountBudgetProposal

  field :account_link, 143, type: Google.Ads.Googleads.V4.Resources.AccountLink
  field :ad_group, 3, type: Google.Ads.Googleads.V4.Resources.AdGroup
  field :ad_group_ad, 16, type: Google.Ads.Googleads.V4.Resources.AdGroupAd
  field :ad_group_ad_asset_view, 131, type: Google.Ads.Googleads.V4.Resources.AdGroupAdAssetView
  field :ad_group_ad_label, 120, type: Google.Ads.Googleads.V4.Resources.AdGroupAdLabel
  field :ad_group_audience_view, 57, type: Google.Ads.Googleads.V4.Resources.AdGroupAudienceView
  field :ad_group_bid_modifier, 24, type: Google.Ads.Googleads.V4.Resources.AdGroupBidModifier
  field :ad_group_criterion, 17, type: Google.Ads.Googleads.V4.Resources.AdGroupCriterion

  field :ad_group_criterion_label, 121,
    type: Google.Ads.Googleads.V4.Resources.AdGroupCriterionLabel

  field :ad_group_criterion_simulation, 110,
    type: Google.Ads.Googleads.V4.Resources.AdGroupCriterionSimulation

  field :ad_group_extension_setting, 112,
    type: Google.Ads.Googleads.V4.Resources.AdGroupExtensionSetting

  field :ad_group_feed, 67, type: Google.Ads.Googleads.V4.Resources.AdGroupFeed
  field :ad_group_label, 115, type: Google.Ads.Googleads.V4.Resources.AdGroupLabel
  field :ad_group_simulation, 107, type: Google.Ads.Googleads.V4.Resources.AdGroupSimulation
  field :ad_parameter, 130, type: Google.Ads.Googleads.V4.Resources.AdParameter
  field :age_range_view, 48, type: Google.Ads.Googleads.V4.Resources.AgeRangeView
  field :ad_schedule_view, 89, type: Google.Ads.Googleads.V4.Resources.AdScheduleView
  field :domain_category, 91, type: Google.Ads.Googleads.V4.Resources.DomainCategory
  field :asset, 105, type: Google.Ads.Googleads.V4.Resources.Asset
  field :batch_job, 139, type: Google.Ads.Googleads.V4.Resources.BatchJob
  field :bidding_strategy, 18, type: Google.Ads.Googleads.V4.Resources.BiddingStrategy
  field :billing_setup, 41, type: Google.Ads.Googleads.V4.Resources.BillingSetup
  field :campaign_budget, 19, type: Google.Ads.Googleads.V4.Resources.CampaignBudget
  field :campaign, 2, type: Google.Ads.Googleads.V4.Resources.Campaign
  field :campaign_audience_view, 69, type: Google.Ads.Googleads.V4.Resources.CampaignAudienceView
  field :campaign_bid_modifier, 26, type: Google.Ads.Googleads.V4.Resources.CampaignBidModifier
  field :campaign_criterion, 20, type: Google.Ads.Googleads.V4.Resources.CampaignCriterion

  field :campaign_criterion_simulation, 111,
    type: Google.Ads.Googleads.V4.Resources.CampaignCriterionSimulation

  field :campaign_draft, 49, type: Google.Ads.Googleads.V4.Resources.CampaignDraft
  field :campaign_experiment, 84, type: Google.Ads.Googleads.V4.Resources.CampaignExperiment

  field :campaign_extension_setting, 113,
    type: Google.Ads.Googleads.V4.Resources.CampaignExtensionSetting

  field :campaign_feed, 63, type: Google.Ads.Googleads.V4.Resources.CampaignFeed
  field :campaign_label, 108, type: Google.Ads.Googleads.V4.Resources.CampaignLabel
  field :campaign_shared_set, 30, type: Google.Ads.Googleads.V4.Resources.CampaignSharedSet
  field :carrier_constant, 66, type: Google.Ads.Googleads.V4.Resources.CarrierConstant
  field :change_status, 37, type: Google.Ads.Googleads.V4.Resources.ChangeStatus
  field :conversion_action, 103, type: Google.Ads.Googleads.V4.Resources.ConversionAction
  field :click_view, 122, type: Google.Ads.Googleads.V4.Resources.ClickView
  field :currency_constant, 134, type: Google.Ads.Googleads.V4.Resources.CurrencyConstant
  field :custom_interest, 104, type: Google.Ads.Googleads.V4.Resources.CustomInterest
  field :customer, 1, type: Google.Ads.Googleads.V4.Resources.Customer
  field :customer_manager_link, 61, type: Google.Ads.Googleads.V4.Resources.CustomerManagerLink
  field :customer_client_link, 62, type: Google.Ads.Googleads.V4.Resources.CustomerClientLink
  field :customer_client, 70, type: Google.Ads.Googleads.V4.Resources.CustomerClient

  field :customer_extension_setting, 114,
    type: Google.Ads.Googleads.V4.Resources.CustomerExtensionSetting

  field :customer_feed, 64, type: Google.Ads.Googleads.V4.Resources.CustomerFeed
  field :customer_label, 124, type: Google.Ads.Googleads.V4.Resources.CustomerLabel

  field :customer_negative_criterion, 88,
    type: Google.Ads.Googleads.V4.Resources.CustomerNegativeCriterion

  field :detail_placement_view, 118, type: Google.Ads.Googleads.V4.Resources.DetailPlacementView
  field :display_keyword_view, 47, type: Google.Ads.Googleads.V4.Resources.DisplayKeywordView
  field :distance_view, 132, type: Google.Ads.Googleads.V4.Resources.DistanceView

  field :dynamic_search_ads_search_term_view, 106,
    type: Google.Ads.Googleads.V4.Resources.DynamicSearchAdsSearchTermView

  field :expanded_landing_page_view, 128,
    type: Google.Ads.Googleads.V4.Resources.ExpandedLandingPageView

  field :extension_feed_item, 85, type: Google.Ads.Googleads.V4.Resources.ExtensionFeedItem
  field :feed, 46, type: Google.Ads.Googleads.V4.Resources.Feed
  field :feed_item, 50, type: Google.Ads.Googleads.V4.Resources.FeedItem
  field :feed_item_target, 116, type: Google.Ads.Googleads.V4.Resources.FeedItemTarget
  field :feed_mapping, 58, type: Google.Ads.Googleads.V4.Resources.FeedMapping
  field :feed_placeholder_view, 97, type: Google.Ads.Googleads.V4.Resources.FeedPlaceholderView
  field :gender_view, 40, type: Google.Ads.Googleads.V4.Resources.GenderView
  field :geo_target_constant, 23, type: Google.Ads.Googleads.V4.Resources.GeoTargetConstant
  field :geographic_view, 125, type: Google.Ads.Googleads.V4.Resources.GeographicView
  field :group_placement_view, 119, type: Google.Ads.Googleads.V4.Resources.GroupPlacementView
  field :hotel_group_view, 51, type: Google.Ads.Googleads.V4.Resources.HotelGroupView
  field :hotel_performance_view, 71, type: Google.Ads.Googleads.V4.Resources.HotelPerformanceView
  field :income_range_view, 138, type: Google.Ads.Googleads.V4.Resources.IncomeRangeView
  field :keyword_view, 21, type: Google.Ads.Googleads.V4.Resources.KeywordView
  field :keyword_plan, 32, type: Google.Ads.Googleads.V4.Resources.KeywordPlan
  field :keyword_plan_campaign, 33, type: Google.Ads.Googleads.V4.Resources.KeywordPlanCampaign

  field :keyword_plan_campaign_keyword, 140,
    type: Google.Ads.Googleads.V4.Resources.KeywordPlanCampaignKeyword

  field :keyword_plan_ad_group, 35, type: Google.Ads.Googleads.V4.Resources.KeywordPlanAdGroup

  field :keyword_plan_ad_group_keyword, 141,
    type: Google.Ads.Googleads.V4.Resources.KeywordPlanAdGroupKeyword

  field :label, 52, type: Google.Ads.Googleads.V4.Resources.Label
  field :landing_page_view, 126, type: Google.Ads.Googleads.V4.Resources.LandingPageView
  field :language_constant, 55, type: Google.Ads.Googleads.V4.Resources.LanguageConstant
  field :location_view, 123, type: Google.Ads.Googleads.V4.Resources.LocationView
  field :managed_placement_view, 53, type: Google.Ads.Googleads.V4.Resources.ManagedPlacementView
  field :media_file, 90, type: Google.Ads.Googleads.V4.Resources.MediaFile

  field :mobile_app_category_constant, 87,
    type: Google.Ads.Googleads.V4.Resources.MobileAppCategoryConstant

  field :mobile_device_constant, 98, type: Google.Ads.Googleads.V4.Resources.MobileDeviceConstant
  field :offline_user_data_job, 137, type: Google.Ads.Googleads.V4.Resources.OfflineUserDataJob

  field :operating_system_version_constant, 86,
    type: Google.Ads.Googleads.V4.Resources.OperatingSystemVersionConstant

  field :paid_organic_search_term_view, 129,
    type: Google.Ads.Googleads.V4.Resources.PaidOrganicSearchTermView

  field :parental_status_view, 45, type: Google.Ads.Googleads.V4.Resources.ParentalStatusView

  field :product_bidding_category_constant, 109,
    type: Google.Ads.Googleads.V4.Resources.ProductBiddingCategoryConstant

  field :product_group_view, 54, type: Google.Ads.Googleads.V4.Resources.ProductGroupView
  field :recommendation, 22, type: Google.Ads.Googleads.V4.Resources.Recommendation
  field :search_term_view, 68, type: Google.Ads.Googleads.V4.Resources.SearchTermView
  field :shared_criterion, 29, type: Google.Ads.Googleads.V4.Resources.SharedCriterion
  field :shared_set, 27, type: Google.Ads.Googleads.V4.Resources.SharedSet

  field :shopping_performance_view, 117,
    type: Google.Ads.Googleads.V4.Resources.ShoppingPerformanceView

  field :third_party_app_analytics_link, 144,
    type: Google.Ads.Googleads.V4.Resources.ThirdPartyAppAnalyticsLink

  field :topic_view, 44, type: Google.Ads.Googleads.V4.Resources.TopicView
  field :user_interest, 59, type: Google.Ads.Googleads.V4.Resources.UserInterest
  field :user_list, 38, type: Google.Ads.Googleads.V4.Resources.UserList
  field :user_location_view, 135, type: Google.Ads.Googleads.V4.Resources.UserLocationView
  field :remarketing_action, 60, type: Google.Ads.Googleads.V4.Resources.RemarketingAction
  field :topic_constant, 31, type: Google.Ads.Googleads.V4.Resources.TopicConstant
  field :video, 39, type: Google.Ads.Googleads.V4.Resources.Video
  field :metrics, 4, type: Google.Ads.Googleads.V4.Common.Metrics
  field :segments, 102, type: Google.Ads.Googleads.V4.Common.Segments
end

defmodule Google.Ads.Googleads.V4.Services.MutateGoogleAdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          mutate_operations: [Google.Ads.Googleads.V4.Services.MutateOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :mutate_operations, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string

  field :mutate_operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.MutateOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.MutateGoogleAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          mutate_operation_responses: [
            Google.Ads.Googleads.V4.Services.MutateOperationResponse.t()
          ]
        }

  defstruct [:partial_failure_error, :mutate_operation_responses]

  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :mutate_operation_responses, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.MutateOperationResponse
end

defmodule Google.Ads.Googleads.V4.Services.MutateOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0

  field :ad_group_ad_label_operation, 17,
    type: Google.Ads.Googleads.V4.Services.AdGroupAdLabelOperation,
    oneof: 0

  field :ad_group_ad_operation, 1,
    type: Google.Ads.Googleads.V4.Services.AdGroupAdOperation,
    oneof: 0

  field :ad_group_bid_modifier_operation, 2,
    type: Google.Ads.Googleads.V4.Services.AdGroupBidModifierOperation,
    oneof: 0

  field :ad_group_criterion_label_operation, 18,
    type: Google.Ads.Googleads.V4.Services.AdGroupCriterionLabelOperation,
    oneof: 0

  field :ad_group_criterion_operation, 3,
    type: Google.Ads.Googleads.V4.Services.AdGroupCriterionOperation,
    oneof: 0

  field :ad_group_extension_setting_operation, 19,
    type: Google.Ads.Googleads.V4.Services.AdGroupExtensionSettingOperation,
    oneof: 0

  field :ad_group_feed_operation, 20,
    type: Google.Ads.Googleads.V4.Services.AdGroupFeedOperation,
    oneof: 0

  field :ad_group_label_operation, 21,
    type: Google.Ads.Googleads.V4.Services.AdGroupLabelOperation,
    oneof: 0

  field :ad_group_operation, 5, type: Google.Ads.Googleads.V4.Services.AdGroupOperation, oneof: 0
  field :ad_operation, 49, type: Google.Ads.Googleads.V4.Services.AdOperation, oneof: 0

  field :ad_parameter_operation, 22,
    type: Google.Ads.Googleads.V4.Services.AdParameterOperation,
    oneof: 0

  field :asset_operation, 23, type: Google.Ads.Googleads.V4.Services.AssetOperation, oneof: 0

  field :bidding_strategy_operation, 6,
    type: Google.Ads.Googleads.V4.Services.BiddingStrategyOperation,
    oneof: 0

  field :campaign_bid_modifier_operation, 7,
    type: Google.Ads.Googleads.V4.Services.CampaignBidModifierOperation,
    oneof: 0

  field :campaign_budget_operation, 8,
    type: Google.Ads.Googleads.V4.Services.CampaignBudgetOperation,
    oneof: 0

  field :campaign_criterion_operation, 13,
    type: Google.Ads.Googleads.V4.Services.CampaignCriterionOperation,
    oneof: 0

  field :campaign_draft_operation, 24,
    type: Google.Ads.Googleads.V4.Services.CampaignDraftOperation,
    oneof: 0

  field :campaign_experiment_operation, 25,
    type: Google.Ads.Googleads.V4.Services.CampaignExperimentOperation,
    oneof: 0

  field :campaign_extension_setting_operation, 26,
    type: Google.Ads.Googleads.V4.Services.CampaignExtensionSettingOperation,
    oneof: 0

  field :campaign_feed_operation, 27,
    type: Google.Ads.Googleads.V4.Services.CampaignFeedOperation,
    oneof: 0

  field :campaign_label_operation, 28,
    type: Google.Ads.Googleads.V4.Services.CampaignLabelOperation,
    oneof: 0

  field :campaign_operation, 10,
    type: Google.Ads.Googleads.V4.Services.CampaignOperation,
    oneof: 0

  field :campaign_shared_set_operation, 11,
    type: Google.Ads.Googleads.V4.Services.CampaignSharedSetOperation,
    oneof: 0

  field :conversion_action_operation, 12,
    type: Google.Ads.Googleads.V4.Services.ConversionActionOperation,
    oneof: 0

  field :customer_extension_setting_operation, 30,
    type: Google.Ads.Googleads.V4.Services.CustomerExtensionSettingOperation,
    oneof: 0

  field :customer_feed_operation, 31,
    type: Google.Ads.Googleads.V4.Services.CustomerFeedOperation,
    oneof: 0

  field :customer_label_operation, 32,
    type: Google.Ads.Googleads.V4.Services.CustomerLabelOperation,
    oneof: 0

  field :customer_negative_criterion_operation, 34,
    type: Google.Ads.Googleads.V4.Services.CustomerNegativeCriterionOperation,
    oneof: 0

  field :customer_operation, 35,
    type: Google.Ads.Googleads.V4.Services.CustomerOperation,
    oneof: 0

  field :extension_feed_item_operation, 36,
    type: Google.Ads.Googleads.V4.Services.ExtensionFeedItemOperation,
    oneof: 0

  field :feed_item_operation, 37,
    type: Google.Ads.Googleads.V4.Services.FeedItemOperation,
    oneof: 0

  field :feed_item_target_operation, 38,
    type: Google.Ads.Googleads.V4.Services.FeedItemTargetOperation,
    oneof: 0

  field :feed_mapping_operation, 39,
    type: Google.Ads.Googleads.V4.Services.FeedMappingOperation,
    oneof: 0

  field :feed_operation, 40, type: Google.Ads.Googleads.V4.Services.FeedOperation, oneof: 0

  field :keyword_plan_ad_group_operation, 44,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanAdGroupOperation,
    oneof: 0

  field :keyword_plan_ad_group_keyword_operation, 50,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanAdGroupKeywordOperation,
    oneof: 0

  field :keyword_plan_campaign_keyword_operation, 51,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanCampaignKeywordOperation,
    oneof: 0

  field :keyword_plan_campaign_operation, 45,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanCampaignOperation,
    oneof: 0

  field :keyword_plan_operation, 48,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanOperation,
    oneof: 0

  field :label_operation, 41, type: Google.Ads.Googleads.V4.Services.LabelOperation, oneof: 0

  field :media_file_operation, 42,
    type: Google.Ads.Googleads.V4.Services.MediaFileOperation,
    oneof: 0

  field :remarketing_action_operation, 43,
    type: Google.Ads.Googleads.V4.Services.RemarketingActionOperation,
    oneof: 0

  field :shared_criterion_operation, 14,
    type: Google.Ads.Googleads.V4.Services.SharedCriterionOperation,
    oneof: 0

  field :shared_set_operation, 15,
    type: Google.Ads.Googleads.V4.Services.SharedSetOperation,
    oneof: 0

  field :user_list_operation, 16,
    type: Google.Ads.Googleads.V4.Services.UserListOperation,
    oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateOperationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }

  defstruct [:response]

  oneof :response, 0

  field :ad_group_ad_label_result, 17,
    type: Google.Ads.Googleads.V4.Services.MutateAdGroupAdLabelResult,
    oneof: 0

  field :ad_group_ad_result, 1,
    type: Google.Ads.Googleads.V4.Services.MutateAdGroupAdResult,
    oneof: 0

  field :ad_group_bid_modifier_result, 2,
    type: Google.Ads.Googleads.V4.Services.MutateAdGroupBidModifierResult,
    oneof: 0

  field :ad_group_criterion_label_result, 18,
    type: Google.Ads.Googleads.V4.Services.MutateAdGroupCriterionLabelResult,
    oneof: 0

  field :ad_group_criterion_result, 3,
    type: Google.Ads.Googleads.V4.Services.MutateAdGroupCriterionResult,
    oneof: 0

  field :ad_group_extension_setting_result, 19,
    type: Google.Ads.Googleads.V4.Services.MutateAdGroupExtensionSettingResult,
    oneof: 0

  field :ad_group_feed_result, 20,
    type: Google.Ads.Googleads.V4.Services.MutateAdGroupFeedResult,
    oneof: 0

  field :ad_group_label_result, 21,
    type: Google.Ads.Googleads.V4.Services.MutateAdGroupLabelResult,
    oneof: 0

  field :ad_group_result, 5, type: Google.Ads.Googleads.V4.Services.MutateAdGroupResult, oneof: 0

  field :ad_parameter_result, 22,
    type: Google.Ads.Googleads.V4.Services.MutateAdParameterResult,
    oneof: 0

  field :ad_result, 49, type: Google.Ads.Googleads.V4.Services.MutateAdResult, oneof: 0
  field :asset_result, 23, type: Google.Ads.Googleads.V4.Services.MutateAssetResult, oneof: 0

  field :bidding_strategy_result, 6,
    type: Google.Ads.Googleads.V4.Services.MutateBiddingStrategyResult,
    oneof: 0

  field :campaign_bid_modifier_result, 7,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignBidModifierResult,
    oneof: 0

  field :campaign_budget_result, 8,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignBudgetResult,
    oneof: 0

  field :campaign_criterion_result, 13,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignCriterionResult,
    oneof: 0

  field :campaign_draft_result, 24,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignDraftResult,
    oneof: 0

  field :campaign_experiment_result, 25,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignExperimentResult,
    oneof: 0

  field :campaign_extension_setting_result, 26,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignExtensionSettingResult,
    oneof: 0

  field :campaign_feed_result, 27,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignFeedResult,
    oneof: 0

  field :campaign_label_result, 28,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignLabelResult,
    oneof: 0

  field :campaign_result, 10,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignResult,
    oneof: 0

  field :campaign_shared_set_result, 11,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignSharedSetResult,
    oneof: 0

  field :conversion_action_result, 12,
    type: Google.Ads.Googleads.V4.Services.MutateConversionActionResult,
    oneof: 0

  field :customer_extension_setting_result, 30,
    type: Google.Ads.Googleads.V4.Services.MutateCustomerExtensionSettingResult,
    oneof: 0

  field :customer_feed_result, 31,
    type: Google.Ads.Googleads.V4.Services.MutateCustomerFeedResult,
    oneof: 0

  field :customer_label_result, 32,
    type: Google.Ads.Googleads.V4.Services.MutateCustomerLabelResult,
    oneof: 0

  field :customer_negative_criterion_result, 34,
    type: Google.Ads.Googleads.V4.Services.MutateCustomerNegativeCriteriaResult,
    oneof: 0

  field :customer_result, 35,
    type: Google.Ads.Googleads.V4.Services.MutateCustomerResult,
    oneof: 0

  field :extension_feed_item_result, 36,
    type: Google.Ads.Googleads.V4.Services.MutateExtensionFeedItemResult,
    oneof: 0

  field :feed_item_result, 37,
    type: Google.Ads.Googleads.V4.Services.MutateFeedItemResult,
    oneof: 0

  field :feed_item_target_result, 38,
    type: Google.Ads.Googleads.V4.Services.MutateFeedItemTargetResult,
    oneof: 0

  field :feed_mapping_result, 39,
    type: Google.Ads.Googleads.V4.Services.MutateFeedMappingResult,
    oneof: 0

  field :feed_result, 40, type: Google.Ads.Googleads.V4.Services.MutateFeedResult, oneof: 0

  field :keyword_plan_ad_group_result, 44,
    type: Google.Ads.Googleads.V4.Services.MutateKeywordPlanAdGroupResult,
    oneof: 0

  field :keyword_plan_campaign_result, 45,
    type: Google.Ads.Googleads.V4.Services.MutateKeywordPlanCampaignResult,
    oneof: 0

  field :keyword_plan_ad_group_keyword_result, 50,
    type: Google.Ads.Googleads.V4.Services.MutateKeywordPlanAdGroupKeywordResult,
    oneof: 0

  field :keyword_plan_campaign_keyword_result, 51,
    type: Google.Ads.Googleads.V4.Services.MutateKeywordPlanCampaignKeywordResult,
    oneof: 0

  field :keyword_plan_result, 48,
    type: Google.Ads.Googleads.V4.Services.MutateKeywordPlansResult,
    oneof: 0

  field :label_result, 41, type: Google.Ads.Googleads.V4.Services.MutateLabelResult, oneof: 0

  field :media_file_result, 42,
    type: Google.Ads.Googleads.V4.Services.MutateMediaFileResult,
    oneof: 0

  field :remarketing_action_result, 43,
    type: Google.Ads.Googleads.V4.Services.MutateRemarketingActionResult,
    oneof: 0

  field :shared_criterion_result, 14,
    type: Google.Ads.Googleads.V4.Services.MutateSharedCriterionResult,
    oneof: 0

  field :shared_set_result, 15,
    type: Google.Ads.Googleads.V4.Services.MutateSharedSetResult,
    oneof: 0

  field :user_list_result, 16,
    type: Google.Ads.Googleads.V4.Services.MutateUserListResult,
    oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.GoogleAdsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.GoogleAdsService"

  rpc :Search,
      Google.Ads.Googleads.V4.Services.SearchGoogleAdsRequest,
      Google.Ads.Googleads.V4.Services.SearchGoogleAdsResponse

  rpc :SearchStream,
      Google.Ads.Googleads.V4.Services.SearchGoogleAdsStreamRequest,
      stream(Google.Ads.Googleads.V4.Services.SearchGoogleAdsStreamResponse)

  rpc :Mutate,
      Google.Ads.Googleads.V4.Services.MutateGoogleAdsRequest,
      Google.Ads.Googleads.V4.Services.MutateGoogleAdsResponse
end

defmodule Google.Ads.Googleads.V4.Services.GoogleAdsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.GoogleAdsService.Service
end
