defmodule Google.Ads.Googleads.V7.Services.SearchGoogleAdsRequest do
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
            Google.Ads.Googleads.V7.Enums.SummaryRowSettingEnum.SummaryRowSetting.t()
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
    type: Google.Ads.Googleads.V7.Enums.SummaryRowSettingEnum.SummaryRowSetting,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Services.SearchGoogleAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V7.Services.GoogleAdsRow.t()],
          next_page_token: String.t(),
          total_results_count: integer,
          field_mask: Google.Protobuf.FieldMask.t() | nil,
          summary_row: Google.Ads.Googleads.V7.Services.GoogleAdsRow.t() | nil
        }

  defstruct [:results, :next_page_token, :total_results_count, :field_mask, :summary_row]

  field :results, 1, repeated: true, type: Google.Ads.Googleads.V7.Services.GoogleAdsRow
  field :next_page_token, 2, type: :string
  field :total_results_count, 3, type: :int64
  field :field_mask, 5, type: Google.Protobuf.FieldMask
  field :summary_row, 6, type: Google.Ads.Googleads.V7.Services.GoogleAdsRow
end

defmodule Google.Ads.Googleads.V7.Services.SearchGoogleAdsStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          query: String.t(),
          summary_row_setting:
            Google.Ads.Googleads.V7.Enums.SummaryRowSettingEnum.SummaryRowSetting.t()
        }

  defstruct [:customer_id, :query, :summary_row_setting]

  field :customer_id, 1, type: :string
  field :query, 2, type: :string

  field :summary_row_setting, 3,
    type: Google.Ads.Googleads.V7.Enums.SummaryRowSettingEnum.SummaryRowSetting,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Services.SearchGoogleAdsStreamResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V7.Services.GoogleAdsRow.t()],
          field_mask: Google.Protobuf.FieldMask.t() | nil,
          summary_row: Google.Ads.Googleads.V7.Services.GoogleAdsRow.t() | nil,
          request_id: String.t()
        }

  defstruct [:results, :field_mask, :summary_row, :request_id]

  field :results, 1, repeated: true, type: Google.Ads.Googleads.V7.Services.GoogleAdsRow
  field :field_mask, 2, type: Google.Protobuf.FieldMask
  field :summary_row, 3, type: Google.Ads.Googleads.V7.Services.GoogleAdsRow
  field :request_id, 4, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.GoogleAdsRow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account_budget: Google.Ads.Googleads.V7.Resources.AccountBudget.t() | nil,
          account_budget_proposal:
            Google.Ads.Googleads.V7.Resources.AccountBudgetProposal.t() | nil,
          account_link: Google.Ads.Googleads.V7.Resources.AccountLink.t() | nil,
          ad_group: Google.Ads.Googleads.V7.Resources.AdGroup.t() | nil,
          ad_group_ad: Google.Ads.Googleads.V7.Resources.AdGroupAd.t() | nil,
          ad_group_ad_asset_view: Google.Ads.Googleads.V7.Resources.AdGroupAdAssetView.t() | nil,
          ad_group_ad_label: Google.Ads.Googleads.V7.Resources.AdGroupAdLabel.t() | nil,
          ad_group_asset: Google.Ads.Googleads.V7.Resources.AdGroupAsset.t() | nil,
          ad_group_audience_view: Google.Ads.Googleads.V7.Resources.AdGroupAudienceView.t() | nil,
          ad_group_bid_modifier: Google.Ads.Googleads.V7.Resources.AdGroupBidModifier.t() | nil,
          ad_group_criterion: Google.Ads.Googleads.V7.Resources.AdGroupCriterion.t() | nil,
          ad_group_criterion_label:
            Google.Ads.Googleads.V7.Resources.AdGroupCriterionLabel.t() | nil,
          ad_group_criterion_simulation:
            Google.Ads.Googleads.V7.Resources.AdGroupCriterionSimulation.t() | nil,
          ad_group_extension_setting:
            Google.Ads.Googleads.V7.Resources.AdGroupExtensionSetting.t() | nil,
          ad_group_feed: Google.Ads.Googleads.V7.Resources.AdGroupFeed.t() | nil,
          ad_group_label: Google.Ads.Googleads.V7.Resources.AdGroupLabel.t() | nil,
          ad_group_simulation: Google.Ads.Googleads.V7.Resources.AdGroupSimulation.t() | nil,
          ad_parameter: Google.Ads.Googleads.V7.Resources.AdParameter.t() | nil,
          age_range_view: Google.Ads.Googleads.V7.Resources.AgeRangeView.t() | nil,
          ad_schedule_view: Google.Ads.Googleads.V7.Resources.AdScheduleView.t() | nil,
          domain_category: Google.Ads.Googleads.V7.Resources.DomainCategory.t() | nil,
          asset: Google.Ads.Googleads.V7.Resources.Asset.t() | nil,
          batch_job: Google.Ads.Googleads.V7.Resources.BatchJob.t() | nil,
          bidding_strategy: Google.Ads.Googleads.V7.Resources.BiddingStrategy.t() | nil,
          bidding_strategy_simulation:
            Google.Ads.Googleads.V7.Resources.BiddingStrategySimulation.t() | nil,
          billing_setup: Google.Ads.Googleads.V7.Resources.BillingSetup.t() | nil,
          call_view: Google.Ads.Googleads.V7.Resources.CallView.t() | nil,
          campaign_budget: Google.Ads.Googleads.V7.Resources.CampaignBudget.t() | nil,
          campaign: Google.Ads.Googleads.V7.Resources.Campaign.t() | nil,
          campaign_asset: Google.Ads.Googleads.V7.Resources.CampaignAsset.t() | nil,
          campaign_audience_view:
            Google.Ads.Googleads.V7.Resources.CampaignAudienceView.t() | nil,
          campaign_bid_modifier: Google.Ads.Googleads.V7.Resources.CampaignBidModifier.t() | nil,
          campaign_criterion: Google.Ads.Googleads.V7.Resources.CampaignCriterion.t() | nil,
          campaign_criterion_simulation:
            Google.Ads.Googleads.V7.Resources.CampaignCriterionSimulation.t() | nil,
          campaign_draft: Google.Ads.Googleads.V7.Resources.CampaignDraft.t() | nil,
          campaign_experiment: Google.Ads.Googleads.V7.Resources.CampaignExperiment.t() | nil,
          campaign_extension_setting:
            Google.Ads.Googleads.V7.Resources.CampaignExtensionSetting.t() | nil,
          campaign_feed: Google.Ads.Googleads.V7.Resources.CampaignFeed.t() | nil,
          campaign_label: Google.Ads.Googleads.V7.Resources.CampaignLabel.t() | nil,
          campaign_shared_set: Google.Ads.Googleads.V7.Resources.CampaignSharedSet.t() | nil,
          campaign_simulation: Google.Ads.Googleads.V7.Resources.CampaignSimulation.t() | nil,
          carrier_constant: Google.Ads.Googleads.V7.Resources.CarrierConstant.t() | nil,
          change_event: Google.Ads.Googleads.V7.Resources.ChangeEvent.t() | nil,
          change_status: Google.Ads.Googleads.V7.Resources.ChangeStatus.t() | nil,
          combined_audience: Google.Ads.Googleads.V7.Resources.CombinedAudience.t() | nil,
          conversion_action: Google.Ads.Googleads.V7.Resources.ConversionAction.t() | nil,
          conversion_custom_variable:
            Google.Ads.Googleads.V7.Resources.ConversionCustomVariable.t() | nil,
          click_view: Google.Ads.Googleads.V7.Resources.ClickView.t() | nil,
          currency_constant: Google.Ads.Googleads.V7.Resources.CurrencyConstant.t() | nil,
          custom_audience: Google.Ads.Googleads.V7.Resources.CustomAudience.t() | nil,
          custom_interest: Google.Ads.Googleads.V7.Resources.CustomInterest.t() | nil,
          customer: Google.Ads.Googleads.V7.Resources.Customer.t() | nil,
          customer_asset: Google.Ads.Googleads.V7.Resources.CustomerAsset.t() | nil,
          customer_manager_link: Google.Ads.Googleads.V7.Resources.CustomerManagerLink.t() | nil,
          customer_client_link: Google.Ads.Googleads.V7.Resources.CustomerClientLink.t() | nil,
          customer_client: Google.Ads.Googleads.V7.Resources.CustomerClient.t() | nil,
          customer_extension_setting:
            Google.Ads.Googleads.V7.Resources.CustomerExtensionSetting.t() | nil,
          customer_feed: Google.Ads.Googleads.V7.Resources.CustomerFeed.t() | nil,
          customer_label: Google.Ads.Googleads.V7.Resources.CustomerLabel.t() | nil,
          customer_negative_criterion:
            Google.Ads.Googleads.V7.Resources.CustomerNegativeCriterion.t() | nil,
          customer_user_access: Google.Ads.Googleads.V7.Resources.CustomerUserAccess.t() | nil,
          customer_user_access_invitation:
            Google.Ads.Googleads.V7.Resources.CustomerUserAccessInvitation.t() | nil,
          detail_placement_view: Google.Ads.Googleads.V7.Resources.DetailPlacementView.t() | nil,
          display_keyword_view: Google.Ads.Googleads.V7.Resources.DisplayKeywordView.t() | nil,
          distance_view: Google.Ads.Googleads.V7.Resources.DistanceView.t() | nil,
          dynamic_search_ads_search_term_view:
            Google.Ads.Googleads.V7.Resources.DynamicSearchAdsSearchTermView.t() | nil,
          expanded_landing_page_view:
            Google.Ads.Googleads.V7.Resources.ExpandedLandingPageView.t() | nil,
          extension_feed_item: Google.Ads.Googleads.V7.Resources.ExtensionFeedItem.t() | nil,
          feed: Google.Ads.Googleads.V7.Resources.Feed.t() | nil,
          feed_item: Google.Ads.Googleads.V7.Resources.FeedItem.t() | nil,
          feed_item_set: Google.Ads.Googleads.V7.Resources.FeedItemSet.t() | nil,
          feed_item_set_link: Google.Ads.Googleads.V7.Resources.FeedItemSetLink.t() | nil,
          feed_item_target: Google.Ads.Googleads.V7.Resources.FeedItemTarget.t() | nil,
          feed_mapping: Google.Ads.Googleads.V7.Resources.FeedMapping.t() | nil,
          feed_placeholder_view: Google.Ads.Googleads.V7.Resources.FeedPlaceholderView.t() | nil,
          gender_view: Google.Ads.Googleads.V7.Resources.GenderView.t() | nil,
          geo_target_constant: Google.Ads.Googleads.V7.Resources.GeoTargetConstant.t() | nil,
          geographic_view: Google.Ads.Googleads.V7.Resources.GeographicView.t() | nil,
          group_placement_view: Google.Ads.Googleads.V7.Resources.GroupPlacementView.t() | nil,
          hotel_group_view: Google.Ads.Googleads.V7.Resources.HotelGroupView.t() | nil,
          hotel_performance_view:
            Google.Ads.Googleads.V7.Resources.HotelPerformanceView.t() | nil,
          income_range_view: Google.Ads.Googleads.V7.Resources.IncomeRangeView.t() | nil,
          keyword_view: Google.Ads.Googleads.V7.Resources.KeywordView.t() | nil,
          keyword_plan: Google.Ads.Googleads.V7.Resources.KeywordPlan.t() | nil,
          keyword_plan_campaign: Google.Ads.Googleads.V7.Resources.KeywordPlanCampaign.t() | nil,
          keyword_plan_campaign_keyword:
            Google.Ads.Googleads.V7.Resources.KeywordPlanCampaignKeyword.t() | nil,
          keyword_plan_ad_group: Google.Ads.Googleads.V7.Resources.KeywordPlanAdGroup.t() | nil,
          keyword_plan_ad_group_keyword:
            Google.Ads.Googleads.V7.Resources.KeywordPlanAdGroupKeyword.t() | nil,
          label: Google.Ads.Googleads.V7.Resources.Label.t() | nil,
          landing_page_view: Google.Ads.Googleads.V7.Resources.LandingPageView.t() | nil,
          language_constant: Google.Ads.Googleads.V7.Resources.LanguageConstant.t() | nil,
          location_view: Google.Ads.Googleads.V7.Resources.LocationView.t() | nil,
          managed_placement_view:
            Google.Ads.Googleads.V7.Resources.ManagedPlacementView.t() | nil,
          media_file: Google.Ads.Googleads.V7.Resources.MediaFile.t() | nil,
          mobile_app_category_constant:
            Google.Ads.Googleads.V7.Resources.MobileAppCategoryConstant.t() | nil,
          mobile_device_constant:
            Google.Ads.Googleads.V7.Resources.MobileDeviceConstant.t() | nil,
          offline_user_data_job: Google.Ads.Googleads.V7.Resources.OfflineUserDataJob.t() | nil,
          operating_system_version_constant:
            Google.Ads.Googleads.V7.Resources.OperatingSystemVersionConstant.t() | nil,
          paid_organic_search_term_view:
            Google.Ads.Googleads.V7.Resources.PaidOrganicSearchTermView.t() | nil,
          parental_status_view: Google.Ads.Googleads.V7.Resources.ParentalStatusView.t() | nil,
          product_bidding_category_constant:
            Google.Ads.Googleads.V7.Resources.ProductBiddingCategoryConstant.t() | nil,
          product_group_view: Google.Ads.Googleads.V7.Resources.ProductGroupView.t() | nil,
          recommendation: Google.Ads.Googleads.V7.Resources.Recommendation.t() | nil,
          search_term_view: Google.Ads.Googleads.V7.Resources.SearchTermView.t() | nil,
          shared_criterion: Google.Ads.Googleads.V7.Resources.SharedCriterion.t() | nil,
          shared_set: Google.Ads.Googleads.V7.Resources.SharedSet.t() | nil,
          shopping_performance_view:
            Google.Ads.Googleads.V7.Resources.ShoppingPerformanceView.t() | nil,
          third_party_app_analytics_link:
            Google.Ads.Googleads.V7.Resources.ThirdPartyAppAnalyticsLink.t() | nil,
          topic_view: Google.Ads.Googleads.V7.Resources.TopicView.t() | nil,
          user_interest: Google.Ads.Googleads.V7.Resources.UserInterest.t() | nil,
          life_event: Google.Ads.Googleads.V7.Resources.LifeEvent.t() | nil,
          user_list: Google.Ads.Googleads.V7.Resources.UserList.t() | nil,
          user_location_view: Google.Ads.Googleads.V7.Resources.UserLocationView.t() | nil,
          remarketing_action: Google.Ads.Googleads.V7.Resources.RemarketingAction.t() | nil,
          topic_constant: Google.Ads.Googleads.V7.Resources.TopicConstant.t() | nil,
          video: Google.Ads.Googleads.V7.Resources.Video.t() | nil,
          webpage_view: Google.Ads.Googleads.V7.Resources.WebpageView.t() | nil,
          metrics: Google.Ads.Googleads.V7.Common.Metrics.t() | nil,
          segments: Google.Ads.Googleads.V7.Common.Segments.t() | nil
        }

  defstruct [
    :account_budget,
    :account_budget_proposal,
    :account_link,
    :ad_group,
    :ad_group_ad,
    :ad_group_ad_asset_view,
    :ad_group_ad_label,
    :ad_group_asset,
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
    :bidding_strategy_simulation,
    :billing_setup,
    :call_view,
    :campaign_budget,
    :campaign,
    :campaign_asset,
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
    :campaign_simulation,
    :carrier_constant,
    :change_event,
    :change_status,
    :combined_audience,
    :conversion_action,
    :conversion_custom_variable,
    :click_view,
    :currency_constant,
    :custom_audience,
    :custom_interest,
    :customer,
    :customer_asset,
    :customer_manager_link,
    :customer_client_link,
    :customer_client,
    :customer_extension_setting,
    :customer_feed,
    :customer_label,
    :customer_negative_criterion,
    :customer_user_access,
    :customer_user_access_invitation,
    :detail_placement_view,
    :display_keyword_view,
    :distance_view,
    :dynamic_search_ads_search_term_view,
    :expanded_landing_page_view,
    :extension_feed_item,
    :feed,
    :feed_item,
    :feed_item_set,
    :feed_item_set_link,
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
    :life_event,
    :user_list,
    :user_location_view,
    :remarketing_action,
    :topic_constant,
    :video,
    :webpage_view,
    :metrics,
    :segments
  ]

  field :account_budget, 42, type: Google.Ads.Googleads.V7.Resources.AccountBudget

  field :account_budget_proposal, 43,
    type: Google.Ads.Googleads.V7.Resources.AccountBudgetProposal

  field :account_link, 143, type: Google.Ads.Googleads.V7.Resources.AccountLink
  field :ad_group, 3, type: Google.Ads.Googleads.V7.Resources.AdGroup
  field :ad_group_ad, 16, type: Google.Ads.Googleads.V7.Resources.AdGroupAd
  field :ad_group_ad_asset_view, 131, type: Google.Ads.Googleads.V7.Resources.AdGroupAdAssetView
  field :ad_group_ad_label, 120, type: Google.Ads.Googleads.V7.Resources.AdGroupAdLabel
  field :ad_group_asset, 154, type: Google.Ads.Googleads.V7.Resources.AdGroupAsset
  field :ad_group_audience_view, 57, type: Google.Ads.Googleads.V7.Resources.AdGroupAudienceView
  field :ad_group_bid_modifier, 24, type: Google.Ads.Googleads.V7.Resources.AdGroupBidModifier
  field :ad_group_criterion, 17, type: Google.Ads.Googleads.V7.Resources.AdGroupCriterion

  field :ad_group_criterion_label, 121,
    type: Google.Ads.Googleads.V7.Resources.AdGroupCriterionLabel

  field :ad_group_criterion_simulation, 110,
    type: Google.Ads.Googleads.V7.Resources.AdGroupCriterionSimulation

  field :ad_group_extension_setting, 112,
    type: Google.Ads.Googleads.V7.Resources.AdGroupExtensionSetting

  field :ad_group_feed, 67, type: Google.Ads.Googleads.V7.Resources.AdGroupFeed
  field :ad_group_label, 115, type: Google.Ads.Googleads.V7.Resources.AdGroupLabel
  field :ad_group_simulation, 107, type: Google.Ads.Googleads.V7.Resources.AdGroupSimulation
  field :ad_parameter, 130, type: Google.Ads.Googleads.V7.Resources.AdParameter
  field :age_range_view, 48, type: Google.Ads.Googleads.V7.Resources.AgeRangeView
  field :ad_schedule_view, 89, type: Google.Ads.Googleads.V7.Resources.AdScheduleView
  field :domain_category, 91, type: Google.Ads.Googleads.V7.Resources.DomainCategory
  field :asset, 105, type: Google.Ads.Googleads.V7.Resources.Asset
  field :batch_job, 139, type: Google.Ads.Googleads.V7.Resources.BatchJob
  field :bidding_strategy, 18, type: Google.Ads.Googleads.V7.Resources.BiddingStrategy

  field :bidding_strategy_simulation, 158,
    type: Google.Ads.Googleads.V7.Resources.BiddingStrategySimulation

  field :billing_setup, 41, type: Google.Ads.Googleads.V7.Resources.BillingSetup
  field :call_view, 152, type: Google.Ads.Googleads.V7.Resources.CallView
  field :campaign_budget, 19, type: Google.Ads.Googleads.V7.Resources.CampaignBudget
  field :campaign, 2, type: Google.Ads.Googleads.V7.Resources.Campaign
  field :campaign_asset, 142, type: Google.Ads.Googleads.V7.Resources.CampaignAsset
  field :campaign_audience_view, 69, type: Google.Ads.Googleads.V7.Resources.CampaignAudienceView
  field :campaign_bid_modifier, 26, type: Google.Ads.Googleads.V7.Resources.CampaignBidModifier
  field :campaign_criterion, 20, type: Google.Ads.Googleads.V7.Resources.CampaignCriterion

  field :campaign_criterion_simulation, 111,
    type: Google.Ads.Googleads.V7.Resources.CampaignCriterionSimulation

  field :campaign_draft, 49, type: Google.Ads.Googleads.V7.Resources.CampaignDraft
  field :campaign_experiment, 84, type: Google.Ads.Googleads.V7.Resources.CampaignExperiment

  field :campaign_extension_setting, 113,
    type: Google.Ads.Googleads.V7.Resources.CampaignExtensionSetting

  field :campaign_feed, 63, type: Google.Ads.Googleads.V7.Resources.CampaignFeed
  field :campaign_label, 108, type: Google.Ads.Googleads.V7.Resources.CampaignLabel
  field :campaign_shared_set, 30, type: Google.Ads.Googleads.V7.Resources.CampaignSharedSet
  field :campaign_simulation, 157, type: Google.Ads.Googleads.V7.Resources.CampaignSimulation
  field :carrier_constant, 66, type: Google.Ads.Googleads.V7.Resources.CarrierConstant
  field :change_event, 145, type: Google.Ads.Googleads.V7.Resources.ChangeEvent
  field :change_status, 37, type: Google.Ads.Googleads.V7.Resources.ChangeStatus
  field :combined_audience, 148, type: Google.Ads.Googleads.V7.Resources.CombinedAudience
  field :conversion_action, 103, type: Google.Ads.Googleads.V7.Resources.ConversionAction

  field :conversion_custom_variable, 153,
    type: Google.Ads.Googleads.V7.Resources.ConversionCustomVariable

  field :click_view, 122, type: Google.Ads.Googleads.V7.Resources.ClickView
  field :currency_constant, 134, type: Google.Ads.Googleads.V7.Resources.CurrencyConstant
  field :custom_audience, 147, type: Google.Ads.Googleads.V7.Resources.CustomAudience
  field :custom_interest, 104, type: Google.Ads.Googleads.V7.Resources.CustomInterest
  field :customer, 1, type: Google.Ads.Googleads.V7.Resources.Customer
  field :customer_asset, 155, type: Google.Ads.Googleads.V7.Resources.CustomerAsset
  field :customer_manager_link, 61, type: Google.Ads.Googleads.V7.Resources.CustomerManagerLink
  field :customer_client_link, 62, type: Google.Ads.Googleads.V7.Resources.CustomerClientLink
  field :customer_client, 70, type: Google.Ads.Googleads.V7.Resources.CustomerClient

  field :customer_extension_setting, 114,
    type: Google.Ads.Googleads.V7.Resources.CustomerExtensionSetting

  field :customer_feed, 64, type: Google.Ads.Googleads.V7.Resources.CustomerFeed
  field :customer_label, 124, type: Google.Ads.Googleads.V7.Resources.CustomerLabel

  field :customer_negative_criterion, 88,
    type: Google.Ads.Googleads.V7.Resources.CustomerNegativeCriterion

  field :customer_user_access, 146, type: Google.Ads.Googleads.V7.Resources.CustomerUserAccess

  field :customer_user_access_invitation, 150,
    type: Google.Ads.Googleads.V7.Resources.CustomerUserAccessInvitation

  field :detail_placement_view, 118, type: Google.Ads.Googleads.V7.Resources.DetailPlacementView
  field :display_keyword_view, 47, type: Google.Ads.Googleads.V7.Resources.DisplayKeywordView
  field :distance_view, 132, type: Google.Ads.Googleads.V7.Resources.DistanceView

  field :dynamic_search_ads_search_term_view, 106,
    type: Google.Ads.Googleads.V7.Resources.DynamicSearchAdsSearchTermView

  field :expanded_landing_page_view, 128,
    type: Google.Ads.Googleads.V7.Resources.ExpandedLandingPageView

  field :extension_feed_item, 85, type: Google.Ads.Googleads.V7.Resources.ExtensionFeedItem
  field :feed, 46, type: Google.Ads.Googleads.V7.Resources.Feed
  field :feed_item, 50, type: Google.Ads.Googleads.V7.Resources.FeedItem
  field :feed_item_set, 149, type: Google.Ads.Googleads.V7.Resources.FeedItemSet
  field :feed_item_set_link, 151, type: Google.Ads.Googleads.V7.Resources.FeedItemSetLink
  field :feed_item_target, 116, type: Google.Ads.Googleads.V7.Resources.FeedItemTarget
  field :feed_mapping, 58, type: Google.Ads.Googleads.V7.Resources.FeedMapping
  field :feed_placeholder_view, 97, type: Google.Ads.Googleads.V7.Resources.FeedPlaceholderView
  field :gender_view, 40, type: Google.Ads.Googleads.V7.Resources.GenderView
  field :geo_target_constant, 23, type: Google.Ads.Googleads.V7.Resources.GeoTargetConstant
  field :geographic_view, 125, type: Google.Ads.Googleads.V7.Resources.GeographicView
  field :group_placement_view, 119, type: Google.Ads.Googleads.V7.Resources.GroupPlacementView
  field :hotel_group_view, 51, type: Google.Ads.Googleads.V7.Resources.HotelGroupView
  field :hotel_performance_view, 71, type: Google.Ads.Googleads.V7.Resources.HotelPerformanceView
  field :income_range_view, 138, type: Google.Ads.Googleads.V7.Resources.IncomeRangeView
  field :keyword_view, 21, type: Google.Ads.Googleads.V7.Resources.KeywordView
  field :keyword_plan, 32, type: Google.Ads.Googleads.V7.Resources.KeywordPlan
  field :keyword_plan_campaign, 33, type: Google.Ads.Googleads.V7.Resources.KeywordPlanCampaign

  field :keyword_plan_campaign_keyword, 140,
    type: Google.Ads.Googleads.V7.Resources.KeywordPlanCampaignKeyword

  field :keyword_plan_ad_group, 35, type: Google.Ads.Googleads.V7.Resources.KeywordPlanAdGroup

  field :keyword_plan_ad_group_keyword, 141,
    type: Google.Ads.Googleads.V7.Resources.KeywordPlanAdGroupKeyword

  field :label, 52, type: Google.Ads.Googleads.V7.Resources.Label
  field :landing_page_view, 126, type: Google.Ads.Googleads.V7.Resources.LandingPageView
  field :language_constant, 55, type: Google.Ads.Googleads.V7.Resources.LanguageConstant
  field :location_view, 123, type: Google.Ads.Googleads.V7.Resources.LocationView
  field :managed_placement_view, 53, type: Google.Ads.Googleads.V7.Resources.ManagedPlacementView
  field :media_file, 90, type: Google.Ads.Googleads.V7.Resources.MediaFile

  field :mobile_app_category_constant, 87,
    type: Google.Ads.Googleads.V7.Resources.MobileAppCategoryConstant

  field :mobile_device_constant, 98, type: Google.Ads.Googleads.V7.Resources.MobileDeviceConstant
  field :offline_user_data_job, 137, type: Google.Ads.Googleads.V7.Resources.OfflineUserDataJob

  field :operating_system_version_constant, 86,
    type: Google.Ads.Googleads.V7.Resources.OperatingSystemVersionConstant

  field :paid_organic_search_term_view, 129,
    type: Google.Ads.Googleads.V7.Resources.PaidOrganicSearchTermView

  field :parental_status_view, 45, type: Google.Ads.Googleads.V7.Resources.ParentalStatusView

  field :product_bidding_category_constant, 109,
    type: Google.Ads.Googleads.V7.Resources.ProductBiddingCategoryConstant

  field :product_group_view, 54, type: Google.Ads.Googleads.V7.Resources.ProductGroupView
  field :recommendation, 22, type: Google.Ads.Googleads.V7.Resources.Recommendation
  field :search_term_view, 68, type: Google.Ads.Googleads.V7.Resources.SearchTermView
  field :shared_criterion, 29, type: Google.Ads.Googleads.V7.Resources.SharedCriterion
  field :shared_set, 27, type: Google.Ads.Googleads.V7.Resources.SharedSet

  field :shopping_performance_view, 117,
    type: Google.Ads.Googleads.V7.Resources.ShoppingPerformanceView

  field :third_party_app_analytics_link, 144,
    type: Google.Ads.Googleads.V7.Resources.ThirdPartyAppAnalyticsLink

  field :topic_view, 44, type: Google.Ads.Googleads.V7.Resources.TopicView
  field :user_interest, 59, type: Google.Ads.Googleads.V7.Resources.UserInterest
  field :life_event, 161, type: Google.Ads.Googleads.V7.Resources.LifeEvent
  field :user_list, 38, type: Google.Ads.Googleads.V7.Resources.UserList
  field :user_location_view, 135, type: Google.Ads.Googleads.V7.Resources.UserLocationView
  field :remarketing_action, 60, type: Google.Ads.Googleads.V7.Resources.RemarketingAction
  field :topic_constant, 31, type: Google.Ads.Googleads.V7.Resources.TopicConstant
  field :video, 39, type: Google.Ads.Googleads.V7.Resources.Video
  field :webpage_view, 162, type: Google.Ads.Googleads.V7.Resources.WebpageView
  field :metrics, 4, type: Google.Ads.Googleads.V7.Common.Metrics
  field :segments, 102, type: Google.Ads.Googleads.V7.Common.Segments
end

defmodule Google.Ads.Googleads.V7.Services.MutateGoogleAdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          mutate_operations: [Google.Ads.Googleads.V7.Services.MutateOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [
    :customer_id,
    :mutate_operations,
    :partial_failure,
    :validate_only,
    :response_content_type
  ]

  field :customer_id, 1, type: :string

  field :mutate_operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Services.MutateGoogleAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          mutate_operation_responses: [
            Google.Ads.Googleads.V7.Services.MutateOperationResponse.t()
          ]
        }

  defstruct [:partial_failure_error, :mutate_operation_responses]

  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :mutate_operation_responses, 1,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateOperationResponse
end

defmodule Google.Ads.Googleads.V7.Services.MutateOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0

  field :ad_group_ad_label_operation, 17,
    type: Google.Ads.Googleads.V7.Services.AdGroupAdLabelOperation,
    oneof: 0

  field :ad_group_ad_operation, 1,
    type: Google.Ads.Googleads.V7.Services.AdGroupAdOperation,
    oneof: 0

  field :ad_group_asset_operation, 56,
    type: Google.Ads.Googleads.V7.Services.AdGroupAssetOperation,
    oneof: 0

  field :ad_group_bid_modifier_operation, 2,
    type: Google.Ads.Googleads.V7.Services.AdGroupBidModifierOperation,
    oneof: 0

  field :ad_group_criterion_label_operation, 18,
    type: Google.Ads.Googleads.V7.Services.AdGroupCriterionLabelOperation,
    oneof: 0

  field :ad_group_criterion_operation, 3,
    type: Google.Ads.Googleads.V7.Services.AdGroupCriterionOperation,
    oneof: 0

  field :ad_group_extension_setting_operation, 19,
    type: Google.Ads.Googleads.V7.Services.AdGroupExtensionSettingOperation,
    oneof: 0

  field :ad_group_feed_operation, 20,
    type: Google.Ads.Googleads.V7.Services.AdGroupFeedOperation,
    oneof: 0

  field :ad_group_label_operation, 21,
    type: Google.Ads.Googleads.V7.Services.AdGroupLabelOperation,
    oneof: 0

  field :ad_group_operation, 5, type: Google.Ads.Googleads.V7.Services.AdGroupOperation, oneof: 0
  field :ad_operation, 49, type: Google.Ads.Googleads.V7.Services.AdOperation, oneof: 0

  field :ad_parameter_operation, 22,
    type: Google.Ads.Googleads.V7.Services.AdParameterOperation,
    oneof: 0

  field :asset_operation, 23, type: Google.Ads.Googleads.V7.Services.AssetOperation, oneof: 0

  field :bidding_strategy_operation, 6,
    type: Google.Ads.Googleads.V7.Services.BiddingStrategyOperation,
    oneof: 0

  field :campaign_asset_operation, 52,
    type: Google.Ads.Googleads.V7.Services.CampaignAssetOperation,
    oneof: 0

  field :campaign_bid_modifier_operation, 7,
    type: Google.Ads.Googleads.V7.Services.CampaignBidModifierOperation,
    oneof: 0

  field :campaign_budget_operation, 8,
    type: Google.Ads.Googleads.V7.Services.CampaignBudgetOperation,
    oneof: 0

  field :campaign_criterion_operation, 13,
    type: Google.Ads.Googleads.V7.Services.CampaignCriterionOperation,
    oneof: 0

  field :campaign_draft_operation, 24,
    type: Google.Ads.Googleads.V7.Services.CampaignDraftOperation,
    oneof: 0

  field :campaign_experiment_operation, 25,
    type: Google.Ads.Googleads.V7.Services.CampaignExperimentOperation,
    oneof: 0

  field :campaign_extension_setting_operation, 26,
    type: Google.Ads.Googleads.V7.Services.CampaignExtensionSettingOperation,
    oneof: 0

  field :campaign_feed_operation, 27,
    type: Google.Ads.Googleads.V7.Services.CampaignFeedOperation,
    oneof: 0

  field :campaign_label_operation, 28,
    type: Google.Ads.Googleads.V7.Services.CampaignLabelOperation,
    oneof: 0

  field :campaign_operation, 10,
    type: Google.Ads.Googleads.V7.Services.CampaignOperation,
    oneof: 0

  field :campaign_shared_set_operation, 11,
    type: Google.Ads.Googleads.V7.Services.CampaignSharedSetOperation,
    oneof: 0

  field :conversion_action_operation, 12,
    type: Google.Ads.Googleads.V7.Services.ConversionActionOperation,
    oneof: 0

  field :conversion_custom_variable_operation, 55,
    type: Google.Ads.Googleads.V7.Services.ConversionCustomVariableOperation,
    oneof: 0

  field :customer_asset_operation, 57,
    type: Google.Ads.Googleads.V7.Services.CustomerAssetOperation,
    oneof: 0

  field :customer_extension_setting_operation, 30,
    type: Google.Ads.Googleads.V7.Services.CustomerExtensionSettingOperation,
    oneof: 0

  field :customer_feed_operation, 31,
    type: Google.Ads.Googleads.V7.Services.CustomerFeedOperation,
    oneof: 0

  field :customer_label_operation, 32,
    type: Google.Ads.Googleads.V7.Services.CustomerLabelOperation,
    oneof: 0

  field :customer_negative_criterion_operation, 34,
    type: Google.Ads.Googleads.V7.Services.CustomerNegativeCriterionOperation,
    oneof: 0

  field :customer_operation, 35,
    type: Google.Ads.Googleads.V7.Services.CustomerOperation,
    oneof: 0

  field :extension_feed_item_operation, 36,
    type: Google.Ads.Googleads.V7.Services.ExtensionFeedItemOperation,
    oneof: 0

  field :feed_item_operation, 37,
    type: Google.Ads.Googleads.V7.Services.FeedItemOperation,
    oneof: 0

  field :feed_item_set_operation, 53,
    type: Google.Ads.Googleads.V7.Services.FeedItemSetOperation,
    oneof: 0

  field :feed_item_set_link_operation, 54,
    type: Google.Ads.Googleads.V7.Services.FeedItemSetLinkOperation,
    oneof: 0

  field :feed_item_target_operation, 38,
    type: Google.Ads.Googleads.V7.Services.FeedItemTargetOperation,
    oneof: 0

  field :feed_mapping_operation, 39,
    type: Google.Ads.Googleads.V7.Services.FeedMappingOperation,
    oneof: 0

  field :feed_operation, 40, type: Google.Ads.Googleads.V7.Services.FeedOperation, oneof: 0

  field :keyword_plan_ad_group_operation, 44,
    type: Google.Ads.Googleads.V7.Services.KeywordPlanAdGroupOperation,
    oneof: 0

  field :keyword_plan_ad_group_keyword_operation, 50,
    type: Google.Ads.Googleads.V7.Services.KeywordPlanAdGroupKeywordOperation,
    oneof: 0

  field :keyword_plan_campaign_keyword_operation, 51,
    type: Google.Ads.Googleads.V7.Services.KeywordPlanCampaignKeywordOperation,
    oneof: 0

  field :keyword_plan_campaign_operation, 45,
    type: Google.Ads.Googleads.V7.Services.KeywordPlanCampaignOperation,
    oneof: 0

  field :keyword_plan_operation, 48,
    type: Google.Ads.Googleads.V7.Services.KeywordPlanOperation,
    oneof: 0

  field :label_operation, 41, type: Google.Ads.Googleads.V7.Services.LabelOperation, oneof: 0

  field :media_file_operation, 42,
    type: Google.Ads.Googleads.V7.Services.MediaFileOperation,
    oneof: 0

  field :remarketing_action_operation, 43,
    type: Google.Ads.Googleads.V7.Services.RemarketingActionOperation,
    oneof: 0

  field :shared_criterion_operation, 14,
    type: Google.Ads.Googleads.V7.Services.SharedCriterionOperation,
    oneof: 0

  field :shared_set_operation, 15,
    type: Google.Ads.Googleads.V7.Services.SharedSetOperation,
    oneof: 0

  field :user_list_operation, 16,
    type: Google.Ads.Googleads.V7.Services.UserListOperation,
    oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.MutateOperationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }

  defstruct [:response]

  oneof :response, 0

  field :ad_group_ad_label_result, 17,
    type: Google.Ads.Googleads.V7.Services.MutateAdGroupAdLabelResult,
    oneof: 0

  field :ad_group_ad_result, 1,
    type: Google.Ads.Googleads.V7.Services.MutateAdGroupAdResult,
    oneof: 0

  field :ad_group_asset_result, 56,
    type: Google.Ads.Googleads.V7.Services.MutateAdGroupAssetResult,
    oneof: 0

  field :ad_group_bid_modifier_result, 2,
    type: Google.Ads.Googleads.V7.Services.MutateAdGroupBidModifierResult,
    oneof: 0

  field :ad_group_criterion_label_result, 18,
    type: Google.Ads.Googleads.V7.Services.MutateAdGroupCriterionLabelResult,
    oneof: 0

  field :ad_group_criterion_result, 3,
    type: Google.Ads.Googleads.V7.Services.MutateAdGroupCriterionResult,
    oneof: 0

  field :ad_group_extension_setting_result, 19,
    type: Google.Ads.Googleads.V7.Services.MutateAdGroupExtensionSettingResult,
    oneof: 0

  field :ad_group_feed_result, 20,
    type: Google.Ads.Googleads.V7.Services.MutateAdGroupFeedResult,
    oneof: 0

  field :ad_group_label_result, 21,
    type: Google.Ads.Googleads.V7.Services.MutateAdGroupLabelResult,
    oneof: 0

  field :ad_group_result, 5, type: Google.Ads.Googleads.V7.Services.MutateAdGroupResult, oneof: 0

  field :ad_parameter_result, 22,
    type: Google.Ads.Googleads.V7.Services.MutateAdParameterResult,
    oneof: 0

  field :ad_result, 49, type: Google.Ads.Googleads.V7.Services.MutateAdResult, oneof: 0
  field :asset_result, 23, type: Google.Ads.Googleads.V7.Services.MutateAssetResult, oneof: 0

  field :bidding_strategy_result, 6,
    type: Google.Ads.Googleads.V7.Services.MutateBiddingStrategyResult,
    oneof: 0

  field :campaign_asset_result, 52,
    type: Google.Ads.Googleads.V7.Services.MutateCampaignAssetResult,
    oneof: 0

  field :campaign_bid_modifier_result, 7,
    type: Google.Ads.Googleads.V7.Services.MutateCampaignBidModifierResult,
    oneof: 0

  field :campaign_budget_result, 8,
    type: Google.Ads.Googleads.V7.Services.MutateCampaignBudgetResult,
    oneof: 0

  field :campaign_criterion_result, 13,
    type: Google.Ads.Googleads.V7.Services.MutateCampaignCriterionResult,
    oneof: 0

  field :campaign_draft_result, 24,
    type: Google.Ads.Googleads.V7.Services.MutateCampaignDraftResult,
    oneof: 0

  field :campaign_experiment_result, 25,
    type: Google.Ads.Googleads.V7.Services.MutateCampaignExperimentResult,
    oneof: 0

  field :campaign_extension_setting_result, 26,
    type: Google.Ads.Googleads.V7.Services.MutateCampaignExtensionSettingResult,
    oneof: 0

  field :campaign_feed_result, 27,
    type: Google.Ads.Googleads.V7.Services.MutateCampaignFeedResult,
    oneof: 0

  field :campaign_label_result, 28,
    type: Google.Ads.Googleads.V7.Services.MutateCampaignLabelResult,
    oneof: 0

  field :campaign_result, 10,
    type: Google.Ads.Googleads.V7.Services.MutateCampaignResult,
    oneof: 0

  field :campaign_shared_set_result, 11,
    type: Google.Ads.Googleads.V7.Services.MutateCampaignSharedSetResult,
    oneof: 0

  field :conversion_action_result, 12,
    type: Google.Ads.Googleads.V7.Services.MutateConversionActionResult,
    oneof: 0

  field :conversion_custom_variable_result, 55,
    type: Google.Ads.Googleads.V7.Services.MutateConversionCustomVariableResult,
    oneof: 0

  field :customer_asset_result, 57,
    type: Google.Ads.Googleads.V7.Services.MutateCustomerAssetResult,
    oneof: 0

  field :customer_extension_setting_result, 30,
    type: Google.Ads.Googleads.V7.Services.MutateCustomerExtensionSettingResult,
    oneof: 0

  field :customer_feed_result, 31,
    type: Google.Ads.Googleads.V7.Services.MutateCustomerFeedResult,
    oneof: 0

  field :customer_label_result, 32,
    type: Google.Ads.Googleads.V7.Services.MutateCustomerLabelResult,
    oneof: 0

  field :customer_negative_criterion_result, 34,
    type: Google.Ads.Googleads.V7.Services.MutateCustomerNegativeCriteriaResult,
    oneof: 0

  field :customer_result, 35,
    type: Google.Ads.Googleads.V7.Services.MutateCustomerResult,
    oneof: 0

  field :extension_feed_item_result, 36,
    type: Google.Ads.Googleads.V7.Services.MutateExtensionFeedItemResult,
    oneof: 0

  field :feed_item_result, 37,
    type: Google.Ads.Googleads.V7.Services.MutateFeedItemResult,
    oneof: 0

  field :feed_item_set_result, 53,
    type: Google.Ads.Googleads.V7.Services.MutateFeedItemSetResult,
    oneof: 0

  field :feed_item_set_link_result, 54,
    type: Google.Ads.Googleads.V7.Services.MutateFeedItemSetLinkResult,
    oneof: 0

  field :feed_item_target_result, 38,
    type: Google.Ads.Googleads.V7.Services.MutateFeedItemTargetResult,
    oneof: 0

  field :feed_mapping_result, 39,
    type: Google.Ads.Googleads.V7.Services.MutateFeedMappingResult,
    oneof: 0

  field :feed_result, 40, type: Google.Ads.Googleads.V7.Services.MutateFeedResult, oneof: 0

  field :keyword_plan_ad_group_result, 44,
    type: Google.Ads.Googleads.V7.Services.MutateKeywordPlanAdGroupResult,
    oneof: 0

  field :keyword_plan_campaign_result, 45,
    type: Google.Ads.Googleads.V7.Services.MutateKeywordPlanCampaignResult,
    oneof: 0

  field :keyword_plan_ad_group_keyword_result, 50,
    type: Google.Ads.Googleads.V7.Services.MutateKeywordPlanAdGroupKeywordResult,
    oneof: 0

  field :keyword_plan_campaign_keyword_result, 51,
    type: Google.Ads.Googleads.V7.Services.MutateKeywordPlanCampaignKeywordResult,
    oneof: 0

  field :keyword_plan_result, 48,
    type: Google.Ads.Googleads.V7.Services.MutateKeywordPlansResult,
    oneof: 0

  field :label_result, 41, type: Google.Ads.Googleads.V7.Services.MutateLabelResult, oneof: 0

  field :media_file_result, 42,
    type: Google.Ads.Googleads.V7.Services.MutateMediaFileResult,
    oneof: 0

  field :remarketing_action_result, 43,
    type: Google.Ads.Googleads.V7.Services.MutateRemarketingActionResult,
    oneof: 0

  field :shared_criterion_result, 14,
    type: Google.Ads.Googleads.V7.Services.MutateSharedCriterionResult,
    oneof: 0

  field :shared_set_result, 15,
    type: Google.Ads.Googleads.V7.Services.MutateSharedSetResult,
    oneof: 0

  field :user_list_result, 16,
    type: Google.Ads.Googleads.V7.Services.MutateUserListResult,
    oneof: 0
end
