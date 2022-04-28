defmodule Google.Ads.Googleads.V10.Services.SearchGoogleAdsRequest do
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
            Google.Ads.Googleads.V10.Enums.SummaryRowSettingEnum.SummaryRowSetting.t()
        }

  defstruct customer_id: "",
            query: "",
            page_token: "",
            page_size: 0,
            validate_only: false,
            return_total_results_count: false,
            summary_row_setting: :UNSPECIFIED

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :validate_only, 5, type: :bool, json_name: "validateOnly"
  field :return_total_results_count, 7, type: :bool, json_name: "returnTotalResultsCount"

  field :summary_row_setting, 8,
    type: Google.Ads.Googleads.V10.Enums.SummaryRowSettingEnum.SummaryRowSetting,
    json_name: "summaryRowSetting",
    enum: true
end
defmodule Google.Ads.Googleads.V10.Services.SearchGoogleAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V10.Services.GoogleAdsRow.t()],
          next_page_token: String.t(),
          total_results_count: integer,
          field_mask: Google.Protobuf.FieldMask.t() | nil,
          summary_row: Google.Ads.Googleads.V10.Services.GoogleAdsRow.t() | nil
        }

  defstruct results: [],
            next_page_token: "",
            total_results_count: 0,
            field_mask: nil,
            summary_row: nil

  field :results, 1, repeated: true, type: Google.Ads.Googleads.V10.Services.GoogleAdsRow
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_results_count, 3, type: :int64, json_name: "totalResultsCount"
  field :field_mask, 5, type: Google.Protobuf.FieldMask, json_name: "fieldMask"

  field :summary_row, 6,
    type: Google.Ads.Googleads.V10.Services.GoogleAdsRow,
    json_name: "summaryRow"
end
defmodule Google.Ads.Googleads.V10.Services.SearchGoogleAdsStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          query: String.t(),
          summary_row_setting:
            Google.Ads.Googleads.V10.Enums.SummaryRowSettingEnum.SummaryRowSetting.t()
        }

  defstruct customer_id: "",
            query: "",
            summary_row_setting: :UNSPECIFIED

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :query, 2, type: :string, deprecated: false

  field :summary_row_setting, 3,
    type: Google.Ads.Googleads.V10.Enums.SummaryRowSettingEnum.SummaryRowSetting,
    json_name: "summaryRowSetting",
    enum: true
end
defmodule Google.Ads.Googleads.V10.Services.SearchGoogleAdsStreamResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V10.Services.GoogleAdsRow.t()],
          field_mask: Google.Protobuf.FieldMask.t() | nil,
          summary_row: Google.Ads.Googleads.V10.Services.GoogleAdsRow.t() | nil,
          request_id: String.t()
        }

  defstruct results: [],
            field_mask: nil,
            summary_row: nil,
            request_id: ""

  field :results, 1, repeated: true, type: Google.Ads.Googleads.V10.Services.GoogleAdsRow
  field :field_mask, 2, type: Google.Protobuf.FieldMask, json_name: "fieldMask"

  field :summary_row, 3,
    type: Google.Ads.Googleads.V10.Services.GoogleAdsRow,
    json_name: "summaryRow"

  field :request_id, 4, type: :string, json_name: "requestId"
end
defmodule Google.Ads.Googleads.V10.Services.GoogleAdsRow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account_budget: Google.Ads.Googleads.V10.Resources.AccountBudget.t() | nil,
          account_budget_proposal:
            Google.Ads.Googleads.V10.Resources.AccountBudgetProposal.t() | nil,
          account_link: Google.Ads.Googleads.V10.Resources.AccountLink.t() | nil,
          ad_group: Google.Ads.Googleads.V10.Resources.AdGroup.t() | nil,
          ad_group_ad: Google.Ads.Googleads.V10.Resources.AdGroupAd.t() | nil,
          ad_group_ad_asset_combination_view:
            Google.Ads.Googleads.V10.Resources.AdGroupAdAssetCombinationView.t() | nil,
          ad_group_ad_asset_view: Google.Ads.Googleads.V10.Resources.AdGroupAdAssetView.t() | nil,
          ad_group_ad_label: Google.Ads.Googleads.V10.Resources.AdGroupAdLabel.t() | nil,
          ad_group_asset: Google.Ads.Googleads.V10.Resources.AdGroupAsset.t() | nil,
          ad_group_audience_view:
            Google.Ads.Googleads.V10.Resources.AdGroupAudienceView.t() | nil,
          ad_group_bid_modifier: Google.Ads.Googleads.V10.Resources.AdGroupBidModifier.t() | nil,
          ad_group_criterion: Google.Ads.Googleads.V10.Resources.AdGroupCriterion.t() | nil,
          ad_group_criterion_customizer:
            Google.Ads.Googleads.V10.Resources.AdGroupCriterionCustomizer.t() | nil,
          ad_group_criterion_label:
            Google.Ads.Googleads.V10.Resources.AdGroupCriterionLabel.t() | nil,
          ad_group_criterion_simulation:
            Google.Ads.Googleads.V10.Resources.AdGroupCriterionSimulation.t() | nil,
          ad_group_customizer: Google.Ads.Googleads.V10.Resources.AdGroupCustomizer.t() | nil,
          ad_group_extension_setting:
            Google.Ads.Googleads.V10.Resources.AdGroupExtensionSetting.t() | nil,
          ad_group_feed: Google.Ads.Googleads.V10.Resources.AdGroupFeed.t() | nil,
          ad_group_label: Google.Ads.Googleads.V10.Resources.AdGroupLabel.t() | nil,
          ad_group_simulation: Google.Ads.Googleads.V10.Resources.AdGroupSimulation.t() | nil,
          ad_parameter: Google.Ads.Googleads.V10.Resources.AdParameter.t() | nil,
          age_range_view: Google.Ads.Googleads.V10.Resources.AgeRangeView.t() | nil,
          ad_schedule_view: Google.Ads.Googleads.V10.Resources.AdScheduleView.t() | nil,
          domain_category: Google.Ads.Googleads.V10.Resources.DomainCategory.t() | nil,
          asset: Google.Ads.Googleads.V10.Resources.Asset.t() | nil,
          asset_field_type_view: Google.Ads.Googleads.V10.Resources.AssetFieldTypeView.t() | nil,
          asset_group_asset: Google.Ads.Googleads.V10.Resources.AssetGroupAsset.t() | nil,
          asset_group_signal: Google.Ads.Googleads.V10.Resources.AssetGroupSignal.t() | nil,
          asset_group_listing_group_filter:
            Google.Ads.Googleads.V10.Resources.AssetGroupListingGroupFilter.t() | nil,
          asset_group_product_group_view:
            Google.Ads.Googleads.V10.Resources.AssetGroupProductGroupView.t() | nil,
          asset_group: Google.Ads.Googleads.V10.Resources.AssetGroup.t() | nil,
          asset_set_asset: Google.Ads.Googleads.V10.Resources.AssetSetAsset.t() | nil,
          asset_set: Google.Ads.Googleads.V10.Resources.AssetSet.t() | nil,
          batch_job: Google.Ads.Googleads.V10.Resources.BatchJob.t() | nil,
          bidding_data_exclusion:
            Google.Ads.Googleads.V10.Resources.BiddingDataExclusion.t() | nil,
          bidding_seasonality_adjustment:
            Google.Ads.Googleads.V10.Resources.BiddingSeasonalityAdjustment.t() | nil,
          bidding_strategy: Google.Ads.Googleads.V10.Resources.BiddingStrategy.t() | nil,
          bidding_strategy_simulation:
            Google.Ads.Googleads.V10.Resources.BiddingStrategySimulation.t() | nil,
          billing_setup: Google.Ads.Googleads.V10.Resources.BillingSetup.t() | nil,
          call_view: Google.Ads.Googleads.V10.Resources.CallView.t() | nil,
          campaign_budget: Google.Ads.Googleads.V10.Resources.CampaignBudget.t() | nil,
          campaign: Google.Ads.Googleads.V10.Resources.Campaign.t() | nil,
          campaign_asset: Google.Ads.Googleads.V10.Resources.CampaignAsset.t() | nil,
          campaign_asset_set: Google.Ads.Googleads.V10.Resources.CampaignAssetSet.t() | nil,
          campaign_audience_view:
            Google.Ads.Googleads.V10.Resources.CampaignAudienceView.t() | nil,
          campaign_bid_modifier: Google.Ads.Googleads.V10.Resources.CampaignBidModifier.t() | nil,
          campaign_conversion_goal:
            Google.Ads.Googleads.V10.Resources.CampaignConversionGoal.t() | nil,
          campaign_criterion: Google.Ads.Googleads.V10.Resources.CampaignCriterion.t() | nil,
          campaign_criterion_simulation:
            Google.Ads.Googleads.V10.Resources.CampaignCriterionSimulation.t() | nil,
          campaign_customizer: Google.Ads.Googleads.V10.Resources.CampaignCustomizer.t() | nil,
          campaign_draft: Google.Ads.Googleads.V10.Resources.CampaignDraft.t() | nil,
          campaign_experiment: Google.Ads.Googleads.V10.Resources.CampaignExperiment.t() | nil,
          campaign_extension_setting:
            Google.Ads.Googleads.V10.Resources.CampaignExtensionSetting.t() | nil,
          campaign_feed: Google.Ads.Googleads.V10.Resources.CampaignFeed.t() | nil,
          campaign_group: Google.Ads.Googleads.V10.Resources.CampaignGroup.t() | nil,
          campaign_label: Google.Ads.Googleads.V10.Resources.CampaignLabel.t() | nil,
          campaign_shared_set: Google.Ads.Googleads.V10.Resources.CampaignSharedSet.t() | nil,
          campaign_simulation: Google.Ads.Googleads.V10.Resources.CampaignSimulation.t() | nil,
          carrier_constant: Google.Ads.Googleads.V10.Resources.CarrierConstant.t() | nil,
          change_event: Google.Ads.Googleads.V10.Resources.ChangeEvent.t() | nil,
          change_status: Google.Ads.Googleads.V10.Resources.ChangeStatus.t() | nil,
          combined_audience: Google.Ads.Googleads.V10.Resources.CombinedAudience.t() | nil,
          audience: Google.Ads.Googleads.V10.Resources.Audience.t() | nil,
          conversion_action: Google.Ads.Googleads.V10.Resources.ConversionAction.t() | nil,
          conversion_custom_variable:
            Google.Ads.Googleads.V10.Resources.ConversionCustomVariable.t() | nil,
          conversion_goal_campaign_config:
            Google.Ads.Googleads.V10.Resources.ConversionGoalCampaignConfig.t() | nil,
          conversion_value_rule: Google.Ads.Googleads.V10.Resources.ConversionValueRule.t() | nil,
          conversion_value_rule_set:
            Google.Ads.Googleads.V10.Resources.ConversionValueRuleSet.t() | nil,
          click_view: Google.Ads.Googleads.V10.Resources.ClickView.t() | nil,
          currency_constant: Google.Ads.Googleads.V10.Resources.CurrencyConstant.t() | nil,
          custom_audience: Google.Ads.Googleads.V10.Resources.CustomAudience.t() | nil,
          custom_conversion_goal:
            Google.Ads.Googleads.V10.Resources.CustomConversionGoal.t() | nil,
          custom_interest: Google.Ads.Googleads.V10.Resources.CustomInterest.t() | nil,
          customer: Google.Ads.Googleads.V10.Resources.Customer.t() | nil,
          customer_asset: Google.Ads.Googleads.V10.Resources.CustomerAsset.t() | nil,
          accessible_bidding_strategy:
            Google.Ads.Googleads.V10.Resources.AccessibleBiddingStrategy.t() | nil,
          customer_customizer: Google.Ads.Googleads.V10.Resources.CustomerCustomizer.t() | nil,
          customer_manager_link: Google.Ads.Googleads.V10.Resources.CustomerManagerLink.t() | nil,
          customer_client_link: Google.Ads.Googleads.V10.Resources.CustomerClientLink.t() | nil,
          customer_client: Google.Ads.Googleads.V10.Resources.CustomerClient.t() | nil,
          customer_conversion_goal:
            Google.Ads.Googleads.V10.Resources.CustomerConversionGoal.t() | nil,
          customer_extension_setting:
            Google.Ads.Googleads.V10.Resources.CustomerExtensionSetting.t() | nil,
          customer_feed: Google.Ads.Googleads.V10.Resources.CustomerFeed.t() | nil,
          customer_label: Google.Ads.Googleads.V10.Resources.CustomerLabel.t() | nil,
          customer_negative_criterion:
            Google.Ads.Googleads.V10.Resources.CustomerNegativeCriterion.t() | nil,
          customer_user_access: Google.Ads.Googleads.V10.Resources.CustomerUserAccess.t() | nil,
          customer_user_access_invitation:
            Google.Ads.Googleads.V10.Resources.CustomerUserAccessInvitation.t() | nil,
          customizer_attribute: Google.Ads.Googleads.V10.Resources.CustomizerAttribute.t() | nil,
          detail_placement_view: Google.Ads.Googleads.V10.Resources.DetailPlacementView.t() | nil,
          detailed_demographic: Google.Ads.Googleads.V10.Resources.DetailedDemographic.t() | nil,
          display_keyword_view: Google.Ads.Googleads.V10.Resources.DisplayKeywordView.t() | nil,
          distance_view: Google.Ads.Googleads.V10.Resources.DistanceView.t() | nil,
          dynamic_search_ads_search_term_view:
            Google.Ads.Googleads.V10.Resources.DynamicSearchAdsSearchTermView.t() | nil,
          expanded_landing_page_view:
            Google.Ads.Googleads.V10.Resources.ExpandedLandingPageView.t() | nil,
          extension_feed_item: Google.Ads.Googleads.V10.Resources.ExtensionFeedItem.t() | nil,
          feed: Google.Ads.Googleads.V10.Resources.Feed.t() | nil,
          feed_item: Google.Ads.Googleads.V10.Resources.FeedItem.t() | nil,
          feed_item_set: Google.Ads.Googleads.V10.Resources.FeedItemSet.t() | nil,
          feed_item_set_link: Google.Ads.Googleads.V10.Resources.FeedItemSetLink.t() | nil,
          feed_item_target: Google.Ads.Googleads.V10.Resources.FeedItemTarget.t() | nil,
          feed_mapping: Google.Ads.Googleads.V10.Resources.FeedMapping.t() | nil,
          feed_placeholder_view: Google.Ads.Googleads.V10.Resources.FeedPlaceholderView.t() | nil,
          gender_view: Google.Ads.Googleads.V10.Resources.GenderView.t() | nil,
          geo_target_constant: Google.Ads.Googleads.V10.Resources.GeoTargetConstant.t() | nil,
          geographic_view: Google.Ads.Googleads.V10.Resources.GeographicView.t() | nil,
          group_placement_view: Google.Ads.Googleads.V10.Resources.GroupPlacementView.t() | nil,
          hotel_group_view: Google.Ads.Googleads.V10.Resources.HotelGroupView.t() | nil,
          hotel_performance_view:
            Google.Ads.Googleads.V10.Resources.HotelPerformanceView.t() | nil,
          hotel_reconciliation: Google.Ads.Googleads.V10.Resources.HotelReconciliation.t() | nil,
          income_range_view: Google.Ads.Googleads.V10.Resources.IncomeRangeView.t() | nil,
          keyword_view: Google.Ads.Googleads.V10.Resources.KeywordView.t() | nil,
          keyword_plan: Google.Ads.Googleads.V10.Resources.KeywordPlan.t() | nil,
          keyword_plan_campaign: Google.Ads.Googleads.V10.Resources.KeywordPlanCampaign.t() | nil,
          keyword_plan_campaign_keyword:
            Google.Ads.Googleads.V10.Resources.KeywordPlanCampaignKeyword.t() | nil,
          keyword_plan_ad_group: Google.Ads.Googleads.V10.Resources.KeywordPlanAdGroup.t() | nil,
          keyword_plan_ad_group_keyword:
            Google.Ads.Googleads.V10.Resources.KeywordPlanAdGroupKeyword.t() | nil,
          keyword_theme_constant:
            Google.Ads.Googleads.V10.Resources.KeywordThemeConstant.t() | nil,
          label: Google.Ads.Googleads.V10.Resources.Label.t() | nil,
          landing_page_view: Google.Ads.Googleads.V10.Resources.LandingPageView.t() | nil,
          language_constant: Google.Ads.Googleads.V10.Resources.LanguageConstant.t() | nil,
          location_view: Google.Ads.Googleads.V10.Resources.LocationView.t() | nil,
          managed_placement_view:
            Google.Ads.Googleads.V10.Resources.ManagedPlacementView.t() | nil,
          media_file: Google.Ads.Googleads.V10.Resources.MediaFile.t() | nil,
          mobile_app_category_constant:
            Google.Ads.Googleads.V10.Resources.MobileAppCategoryConstant.t() | nil,
          mobile_device_constant:
            Google.Ads.Googleads.V10.Resources.MobileDeviceConstant.t() | nil,
          offline_user_data_job: Google.Ads.Googleads.V10.Resources.OfflineUserDataJob.t() | nil,
          operating_system_version_constant:
            Google.Ads.Googleads.V10.Resources.OperatingSystemVersionConstant.t() | nil,
          paid_organic_search_term_view:
            Google.Ads.Googleads.V10.Resources.PaidOrganicSearchTermView.t() | nil,
          parental_status_view: Google.Ads.Googleads.V10.Resources.ParentalStatusView.t() | nil,
          product_bidding_category_constant:
            Google.Ads.Googleads.V10.Resources.ProductBiddingCategoryConstant.t() | nil,
          product_group_view: Google.Ads.Googleads.V10.Resources.ProductGroupView.t() | nil,
          recommendation: Google.Ads.Googleads.V10.Resources.Recommendation.t() | nil,
          search_term_view: Google.Ads.Googleads.V10.Resources.SearchTermView.t() | nil,
          shared_criterion: Google.Ads.Googleads.V10.Resources.SharedCriterion.t() | nil,
          shared_set: Google.Ads.Googleads.V10.Resources.SharedSet.t() | nil,
          smart_campaign_setting:
            Google.Ads.Googleads.V10.Resources.SmartCampaignSetting.t() | nil,
          shopping_performance_view:
            Google.Ads.Googleads.V10.Resources.ShoppingPerformanceView.t() | nil,
          smart_campaign_search_term_view:
            Google.Ads.Googleads.V10.Resources.SmartCampaignSearchTermView.t() | nil,
          third_party_app_analytics_link:
            Google.Ads.Googleads.V10.Resources.ThirdPartyAppAnalyticsLink.t() | nil,
          topic_view: Google.Ads.Googleads.V10.Resources.TopicView.t() | nil,
          experiment: Google.Ads.Googleads.V10.Resources.Experiment.t() | nil,
          experiment_arm: Google.Ads.Googleads.V10.Resources.ExperimentArm.t() | nil,
          user_interest: Google.Ads.Googleads.V10.Resources.UserInterest.t() | nil,
          life_event: Google.Ads.Googleads.V10.Resources.LifeEvent.t() | nil,
          user_list: Google.Ads.Googleads.V10.Resources.UserList.t() | nil,
          user_location_view: Google.Ads.Googleads.V10.Resources.UserLocationView.t() | nil,
          remarketing_action: Google.Ads.Googleads.V10.Resources.RemarketingAction.t() | nil,
          topic_constant: Google.Ads.Googleads.V10.Resources.TopicConstant.t() | nil,
          video: Google.Ads.Googleads.V10.Resources.Video.t() | nil,
          webpage_view: Google.Ads.Googleads.V10.Resources.WebpageView.t() | nil,
          lead_form_submission_data:
            Google.Ads.Googleads.V10.Resources.LeadFormSubmissionData.t() | nil,
          metrics: Google.Ads.Googleads.V10.Common.Metrics.t() | nil,
          segments: Google.Ads.Googleads.V10.Common.Segments.t() | nil
        }

  defstruct account_budget: nil,
            account_budget_proposal: nil,
            account_link: nil,
            ad_group: nil,
            ad_group_ad: nil,
            ad_group_ad_asset_combination_view: nil,
            ad_group_ad_asset_view: nil,
            ad_group_ad_label: nil,
            ad_group_asset: nil,
            ad_group_audience_view: nil,
            ad_group_bid_modifier: nil,
            ad_group_criterion: nil,
            ad_group_criterion_customizer: nil,
            ad_group_criterion_label: nil,
            ad_group_criterion_simulation: nil,
            ad_group_customizer: nil,
            ad_group_extension_setting: nil,
            ad_group_feed: nil,
            ad_group_label: nil,
            ad_group_simulation: nil,
            ad_parameter: nil,
            age_range_view: nil,
            ad_schedule_view: nil,
            domain_category: nil,
            asset: nil,
            asset_field_type_view: nil,
            asset_group_asset: nil,
            asset_group_signal: nil,
            asset_group_listing_group_filter: nil,
            asset_group_product_group_view: nil,
            asset_group: nil,
            asset_set_asset: nil,
            asset_set: nil,
            batch_job: nil,
            bidding_data_exclusion: nil,
            bidding_seasonality_adjustment: nil,
            bidding_strategy: nil,
            bidding_strategy_simulation: nil,
            billing_setup: nil,
            call_view: nil,
            campaign_budget: nil,
            campaign: nil,
            campaign_asset: nil,
            campaign_asset_set: nil,
            campaign_audience_view: nil,
            campaign_bid_modifier: nil,
            campaign_conversion_goal: nil,
            campaign_criterion: nil,
            campaign_criterion_simulation: nil,
            campaign_customizer: nil,
            campaign_draft: nil,
            campaign_experiment: nil,
            campaign_extension_setting: nil,
            campaign_feed: nil,
            campaign_group: nil,
            campaign_label: nil,
            campaign_shared_set: nil,
            campaign_simulation: nil,
            carrier_constant: nil,
            change_event: nil,
            change_status: nil,
            combined_audience: nil,
            audience: nil,
            conversion_action: nil,
            conversion_custom_variable: nil,
            conversion_goal_campaign_config: nil,
            conversion_value_rule: nil,
            conversion_value_rule_set: nil,
            click_view: nil,
            currency_constant: nil,
            custom_audience: nil,
            custom_conversion_goal: nil,
            custom_interest: nil,
            customer: nil,
            customer_asset: nil,
            accessible_bidding_strategy: nil,
            customer_customizer: nil,
            customer_manager_link: nil,
            customer_client_link: nil,
            customer_client: nil,
            customer_conversion_goal: nil,
            customer_extension_setting: nil,
            customer_feed: nil,
            customer_label: nil,
            customer_negative_criterion: nil,
            customer_user_access: nil,
            customer_user_access_invitation: nil,
            customizer_attribute: nil,
            detail_placement_view: nil,
            detailed_demographic: nil,
            display_keyword_view: nil,
            distance_view: nil,
            dynamic_search_ads_search_term_view: nil,
            expanded_landing_page_view: nil,
            extension_feed_item: nil,
            feed: nil,
            feed_item: nil,
            feed_item_set: nil,
            feed_item_set_link: nil,
            feed_item_target: nil,
            feed_mapping: nil,
            feed_placeholder_view: nil,
            gender_view: nil,
            geo_target_constant: nil,
            geographic_view: nil,
            group_placement_view: nil,
            hotel_group_view: nil,
            hotel_performance_view: nil,
            hotel_reconciliation: nil,
            income_range_view: nil,
            keyword_view: nil,
            keyword_plan: nil,
            keyword_plan_campaign: nil,
            keyword_plan_campaign_keyword: nil,
            keyword_plan_ad_group: nil,
            keyword_plan_ad_group_keyword: nil,
            keyword_theme_constant: nil,
            label: nil,
            landing_page_view: nil,
            language_constant: nil,
            location_view: nil,
            managed_placement_view: nil,
            media_file: nil,
            mobile_app_category_constant: nil,
            mobile_device_constant: nil,
            offline_user_data_job: nil,
            operating_system_version_constant: nil,
            paid_organic_search_term_view: nil,
            parental_status_view: nil,
            product_bidding_category_constant: nil,
            product_group_view: nil,
            recommendation: nil,
            search_term_view: nil,
            shared_criterion: nil,
            shared_set: nil,
            smart_campaign_setting: nil,
            shopping_performance_view: nil,
            smart_campaign_search_term_view: nil,
            third_party_app_analytics_link: nil,
            topic_view: nil,
            experiment: nil,
            experiment_arm: nil,
            user_interest: nil,
            life_event: nil,
            user_list: nil,
            user_location_view: nil,
            remarketing_action: nil,
            topic_constant: nil,
            video: nil,
            webpage_view: nil,
            lead_form_submission_data: nil,
            metrics: nil,
            segments: nil

  field :account_budget, 42,
    type: Google.Ads.Googleads.V10.Resources.AccountBudget,
    json_name: "accountBudget"

  field :account_budget_proposal, 43,
    type: Google.Ads.Googleads.V10.Resources.AccountBudgetProposal,
    json_name: "accountBudgetProposal"

  field :account_link, 143,
    type: Google.Ads.Googleads.V10.Resources.AccountLink,
    json_name: "accountLink"

  field :ad_group, 3, type: Google.Ads.Googleads.V10.Resources.AdGroup, json_name: "adGroup"

  field :ad_group_ad, 16,
    type: Google.Ads.Googleads.V10.Resources.AdGroupAd,
    json_name: "adGroupAd"

  field :ad_group_ad_asset_combination_view, 193,
    type: Google.Ads.Googleads.V10.Resources.AdGroupAdAssetCombinationView,
    json_name: "adGroupAdAssetCombinationView"

  field :ad_group_ad_asset_view, 131,
    type: Google.Ads.Googleads.V10.Resources.AdGroupAdAssetView,
    json_name: "adGroupAdAssetView"

  field :ad_group_ad_label, 120,
    type: Google.Ads.Googleads.V10.Resources.AdGroupAdLabel,
    json_name: "adGroupAdLabel"

  field :ad_group_asset, 154,
    type: Google.Ads.Googleads.V10.Resources.AdGroupAsset,
    json_name: "adGroupAsset"

  field :ad_group_audience_view, 57,
    type: Google.Ads.Googleads.V10.Resources.AdGroupAudienceView,
    json_name: "adGroupAudienceView"

  field :ad_group_bid_modifier, 24,
    type: Google.Ads.Googleads.V10.Resources.AdGroupBidModifier,
    json_name: "adGroupBidModifier"

  field :ad_group_criterion, 17,
    type: Google.Ads.Googleads.V10.Resources.AdGroupCriterion,
    json_name: "adGroupCriterion"

  field :ad_group_criterion_customizer, 187,
    type: Google.Ads.Googleads.V10.Resources.AdGroupCriterionCustomizer,
    json_name: "adGroupCriterionCustomizer"

  field :ad_group_criterion_label, 121,
    type: Google.Ads.Googleads.V10.Resources.AdGroupCriterionLabel,
    json_name: "adGroupCriterionLabel"

  field :ad_group_criterion_simulation, 110,
    type: Google.Ads.Googleads.V10.Resources.AdGroupCriterionSimulation,
    json_name: "adGroupCriterionSimulation"

  field :ad_group_customizer, 185,
    type: Google.Ads.Googleads.V10.Resources.AdGroupCustomizer,
    json_name: "adGroupCustomizer"

  field :ad_group_extension_setting, 112,
    type: Google.Ads.Googleads.V10.Resources.AdGroupExtensionSetting,
    json_name: "adGroupExtensionSetting"

  field :ad_group_feed, 67,
    type: Google.Ads.Googleads.V10.Resources.AdGroupFeed,
    json_name: "adGroupFeed"

  field :ad_group_label, 115,
    type: Google.Ads.Googleads.V10.Resources.AdGroupLabel,
    json_name: "adGroupLabel"

  field :ad_group_simulation, 107,
    type: Google.Ads.Googleads.V10.Resources.AdGroupSimulation,
    json_name: "adGroupSimulation"

  field :ad_parameter, 130,
    type: Google.Ads.Googleads.V10.Resources.AdParameter,
    json_name: "adParameter"

  field :age_range_view, 48,
    type: Google.Ads.Googleads.V10.Resources.AgeRangeView,
    json_name: "ageRangeView"

  field :ad_schedule_view, 89,
    type: Google.Ads.Googleads.V10.Resources.AdScheduleView,
    json_name: "adScheduleView"

  field :domain_category, 91,
    type: Google.Ads.Googleads.V10.Resources.DomainCategory,
    json_name: "domainCategory"

  field :asset, 105, type: Google.Ads.Googleads.V10.Resources.Asset

  field :asset_field_type_view, 168,
    type: Google.Ads.Googleads.V10.Resources.AssetFieldTypeView,
    json_name: "assetFieldTypeView"

  field :asset_group_asset, 173,
    type: Google.Ads.Googleads.V10.Resources.AssetGroupAsset,
    json_name: "assetGroupAsset"

  field :asset_group_signal, 191,
    type: Google.Ads.Googleads.V10.Resources.AssetGroupSignal,
    json_name: "assetGroupSignal"

  field :asset_group_listing_group_filter, 182,
    type: Google.Ads.Googleads.V10.Resources.AssetGroupListingGroupFilter,
    json_name: "assetGroupListingGroupFilter"

  field :asset_group_product_group_view, 189,
    type: Google.Ads.Googleads.V10.Resources.AssetGroupProductGroupView,
    json_name: "assetGroupProductGroupView"

  field :asset_group, 172,
    type: Google.Ads.Googleads.V10.Resources.AssetGroup,
    json_name: "assetGroup"

  field :asset_set_asset, 180,
    type: Google.Ads.Googleads.V10.Resources.AssetSetAsset,
    json_name: "assetSetAsset"

  field :asset_set, 179, type: Google.Ads.Googleads.V10.Resources.AssetSet, json_name: "assetSet"
  field :batch_job, 139, type: Google.Ads.Googleads.V10.Resources.BatchJob, json_name: "batchJob"

  field :bidding_data_exclusion, 159,
    type: Google.Ads.Googleads.V10.Resources.BiddingDataExclusion,
    json_name: "biddingDataExclusion"

  field :bidding_seasonality_adjustment, 160,
    type: Google.Ads.Googleads.V10.Resources.BiddingSeasonalityAdjustment,
    json_name: "biddingSeasonalityAdjustment"

  field :bidding_strategy, 18,
    type: Google.Ads.Googleads.V10.Resources.BiddingStrategy,
    json_name: "biddingStrategy"

  field :bidding_strategy_simulation, 158,
    type: Google.Ads.Googleads.V10.Resources.BiddingStrategySimulation,
    json_name: "biddingStrategySimulation"

  field :billing_setup, 41,
    type: Google.Ads.Googleads.V10.Resources.BillingSetup,
    json_name: "billingSetup"

  field :call_view, 152, type: Google.Ads.Googleads.V10.Resources.CallView, json_name: "callView"

  field :campaign_budget, 19,
    type: Google.Ads.Googleads.V10.Resources.CampaignBudget,
    json_name: "campaignBudget"

  field :campaign, 2, type: Google.Ads.Googleads.V10.Resources.Campaign

  field :campaign_asset, 142,
    type: Google.Ads.Googleads.V10.Resources.CampaignAsset,
    json_name: "campaignAsset"

  field :campaign_asset_set, 181,
    type: Google.Ads.Googleads.V10.Resources.CampaignAssetSet,
    json_name: "campaignAssetSet"

  field :campaign_audience_view, 69,
    type: Google.Ads.Googleads.V10.Resources.CampaignAudienceView,
    json_name: "campaignAudienceView"

  field :campaign_bid_modifier, 26,
    type: Google.Ads.Googleads.V10.Resources.CampaignBidModifier,
    json_name: "campaignBidModifier"

  field :campaign_conversion_goal, 175,
    type: Google.Ads.Googleads.V10.Resources.CampaignConversionGoal,
    json_name: "campaignConversionGoal"

  field :campaign_criterion, 20,
    type: Google.Ads.Googleads.V10.Resources.CampaignCriterion,
    json_name: "campaignCriterion"

  field :campaign_criterion_simulation, 111,
    type: Google.Ads.Googleads.V10.Resources.CampaignCriterionSimulation,
    json_name: "campaignCriterionSimulation"

  field :campaign_customizer, 186,
    type: Google.Ads.Googleads.V10.Resources.CampaignCustomizer,
    json_name: "campaignCustomizer"

  field :campaign_draft, 49,
    type: Google.Ads.Googleads.V10.Resources.CampaignDraft,
    json_name: "campaignDraft"

  field :campaign_experiment, 84,
    type: Google.Ads.Googleads.V10.Resources.CampaignExperiment,
    json_name: "campaignExperiment"

  field :campaign_extension_setting, 113,
    type: Google.Ads.Googleads.V10.Resources.CampaignExtensionSetting,
    json_name: "campaignExtensionSetting"

  field :campaign_feed, 63,
    type: Google.Ads.Googleads.V10.Resources.CampaignFeed,
    json_name: "campaignFeed"

  field :campaign_group, 25,
    type: Google.Ads.Googleads.V10.Resources.CampaignGroup,
    json_name: "campaignGroup"

  field :campaign_label, 108,
    type: Google.Ads.Googleads.V10.Resources.CampaignLabel,
    json_name: "campaignLabel"

  field :campaign_shared_set, 30,
    type: Google.Ads.Googleads.V10.Resources.CampaignSharedSet,
    json_name: "campaignSharedSet"

  field :campaign_simulation, 157,
    type: Google.Ads.Googleads.V10.Resources.CampaignSimulation,
    json_name: "campaignSimulation"

  field :carrier_constant, 66,
    type: Google.Ads.Googleads.V10.Resources.CarrierConstant,
    json_name: "carrierConstant"

  field :change_event, 145,
    type: Google.Ads.Googleads.V10.Resources.ChangeEvent,
    json_name: "changeEvent"

  field :change_status, 37,
    type: Google.Ads.Googleads.V10.Resources.ChangeStatus,
    json_name: "changeStatus"

  field :combined_audience, 148,
    type: Google.Ads.Googleads.V10.Resources.CombinedAudience,
    json_name: "combinedAudience"

  field :audience, 190, type: Google.Ads.Googleads.V10.Resources.Audience

  field :conversion_action, 103,
    type: Google.Ads.Googleads.V10.Resources.ConversionAction,
    json_name: "conversionAction"

  field :conversion_custom_variable, 153,
    type: Google.Ads.Googleads.V10.Resources.ConversionCustomVariable,
    json_name: "conversionCustomVariable"

  field :conversion_goal_campaign_config, 177,
    type: Google.Ads.Googleads.V10.Resources.ConversionGoalCampaignConfig,
    json_name: "conversionGoalCampaignConfig"

  field :conversion_value_rule, 164,
    type: Google.Ads.Googleads.V10.Resources.ConversionValueRule,
    json_name: "conversionValueRule"

  field :conversion_value_rule_set, 165,
    type: Google.Ads.Googleads.V10.Resources.ConversionValueRuleSet,
    json_name: "conversionValueRuleSet"

  field :click_view, 122,
    type: Google.Ads.Googleads.V10.Resources.ClickView,
    json_name: "clickView"

  field :currency_constant, 134,
    type: Google.Ads.Googleads.V10.Resources.CurrencyConstant,
    json_name: "currencyConstant"

  field :custom_audience, 147,
    type: Google.Ads.Googleads.V10.Resources.CustomAudience,
    json_name: "customAudience"

  field :custom_conversion_goal, 176,
    type: Google.Ads.Googleads.V10.Resources.CustomConversionGoal,
    json_name: "customConversionGoal"

  field :custom_interest, 104,
    type: Google.Ads.Googleads.V10.Resources.CustomInterest,
    json_name: "customInterest"

  field :customer, 1, type: Google.Ads.Googleads.V10.Resources.Customer

  field :customer_asset, 155,
    type: Google.Ads.Googleads.V10.Resources.CustomerAsset,
    json_name: "customerAsset"

  field :accessible_bidding_strategy, 169,
    type: Google.Ads.Googleads.V10.Resources.AccessibleBiddingStrategy,
    json_name: "accessibleBiddingStrategy"

  field :customer_customizer, 184,
    type: Google.Ads.Googleads.V10.Resources.CustomerCustomizer,
    json_name: "customerCustomizer"

  field :customer_manager_link, 61,
    type: Google.Ads.Googleads.V10.Resources.CustomerManagerLink,
    json_name: "customerManagerLink"

  field :customer_client_link, 62,
    type: Google.Ads.Googleads.V10.Resources.CustomerClientLink,
    json_name: "customerClientLink"

  field :customer_client, 70,
    type: Google.Ads.Googleads.V10.Resources.CustomerClient,
    json_name: "customerClient"

  field :customer_conversion_goal, 174,
    type: Google.Ads.Googleads.V10.Resources.CustomerConversionGoal,
    json_name: "customerConversionGoal"

  field :customer_extension_setting, 114,
    type: Google.Ads.Googleads.V10.Resources.CustomerExtensionSetting,
    json_name: "customerExtensionSetting"

  field :customer_feed, 64,
    type: Google.Ads.Googleads.V10.Resources.CustomerFeed,
    json_name: "customerFeed"

  field :customer_label, 124,
    type: Google.Ads.Googleads.V10.Resources.CustomerLabel,
    json_name: "customerLabel"

  field :customer_negative_criterion, 88,
    type: Google.Ads.Googleads.V10.Resources.CustomerNegativeCriterion,
    json_name: "customerNegativeCriterion"

  field :customer_user_access, 146,
    type: Google.Ads.Googleads.V10.Resources.CustomerUserAccess,
    json_name: "customerUserAccess"

  field :customer_user_access_invitation, 150,
    type: Google.Ads.Googleads.V10.Resources.CustomerUserAccessInvitation,
    json_name: "customerUserAccessInvitation"

  field :customizer_attribute, 178,
    type: Google.Ads.Googleads.V10.Resources.CustomizerAttribute,
    json_name: "customizerAttribute"

  field :detail_placement_view, 118,
    type: Google.Ads.Googleads.V10.Resources.DetailPlacementView,
    json_name: "detailPlacementView"

  field :detailed_demographic, 166,
    type: Google.Ads.Googleads.V10.Resources.DetailedDemographic,
    json_name: "detailedDemographic"

  field :display_keyword_view, 47,
    type: Google.Ads.Googleads.V10.Resources.DisplayKeywordView,
    json_name: "displayKeywordView"

  field :distance_view, 132,
    type: Google.Ads.Googleads.V10.Resources.DistanceView,
    json_name: "distanceView"

  field :dynamic_search_ads_search_term_view, 106,
    type: Google.Ads.Googleads.V10.Resources.DynamicSearchAdsSearchTermView,
    json_name: "dynamicSearchAdsSearchTermView"

  field :expanded_landing_page_view, 128,
    type: Google.Ads.Googleads.V10.Resources.ExpandedLandingPageView,
    json_name: "expandedLandingPageView"

  field :extension_feed_item, 85,
    type: Google.Ads.Googleads.V10.Resources.ExtensionFeedItem,
    json_name: "extensionFeedItem"

  field :feed, 46, type: Google.Ads.Googleads.V10.Resources.Feed
  field :feed_item, 50, type: Google.Ads.Googleads.V10.Resources.FeedItem, json_name: "feedItem"

  field :feed_item_set, 149,
    type: Google.Ads.Googleads.V10.Resources.FeedItemSet,
    json_name: "feedItemSet"

  field :feed_item_set_link, 151,
    type: Google.Ads.Googleads.V10.Resources.FeedItemSetLink,
    json_name: "feedItemSetLink"

  field :feed_item_target, 116,
    type: Google.Ads.Googleads.V10.Resources.FeedItemTarget,
    json_name: "feedItemTarget"

  field :feed_mapping, 58,
    type: Google.Ads.Googleads.V10.Resources.FeedMapping,
    json_name: "feedMapping"

  field :feed_placeholder_view, 97,
    type: Google.Ads.Googleads.V10.Resources.FeedPlaceholderView,
    json_name: "feedPlaceholderView"

  field :gender_view, 40,
    type: Google.Ads.Googleads.V10.Resources.GenderView,
    json_name: "genderView"

  field :geo_target_constant, 23,
    type: Google.Ads.Googleads.V10.Resources.GeoTargetConstant,
    json_name: "geoTargetConstant"

  field :geographic_view, 125,
    type: Google.Ads.Googleads.V10.Resources.GeographicView,
    json_name: "geographicView"

  field :group_placement_view, 119,
    type: Google.Ads.Googleads.V10.Resources.GroupPlacementView,
    json_name: "groupPlacementView"

  field :hotel_group_view, 51,
    type: Google.Ads.Googleads.V10.Resources.HotelGroupView,
    json_name: "hotelGroupView"

  field :hotel_performance_view, 71,
    type: Google.Ads.Googleads.V10.Resources.HotelPerformanceView,
    json_name: "hotelPerformanceView"

  field :hotel_reconciliation, 188,
    type: Google.Ads.Googleads.V10.Resources.HotelReconciliation,
    json_name: "hotelReconciliation"

  field :income_range_view, 138,
    type: Google.Ads.Googleads.V10.Resources.IncomeRangeView,
    json_name: "incomeRangeView"

  field :keyword_view, 21,
    type: Google.Ads.Googleads.V10.Resources.KeywordView,
    json_name: "keywordView"

  field :keyword_plan, 32,
    type: Google.Ads.Googleads.V10.Resources.KeywordPlan,
    json_name: "keywordPlan"

  field :keyword_plan_campaign, 33,
    type: Google.Ads.Googleads.V10.Resources.KeywordPlanCampaign,
    json_name: "keywordPlanCampaign"

  field :keyword_plan_campaign_keyword, 140,
    type: Google.Ads.Googleads.V10.Resources.KeywordPlanCampaignKeyword,
    json_name: "keywordPlanCampaignKeyword"

  field :keyword_plan_ad_group, 35,
    type: Google.Ads.Googleads.V10.Resources.KeywordPlanAdGroup,
    json_name: "keywordPlanAdGroup"

  field :keyword_plan_ad_group_keyword, 141,
    type: Google.Ads.Googleads.V10.Resources.KeywordPlanAdGroupKeyword,
    json_name: "keywordPlanAdGroupKeyword"

  field :keyword_theme_constant, 163,
    type: Google.Ads.Googleads.V10.Resources.KeywordThemeConstant,
    json_name: "keywordThemeConstant"

  field :label, 52, type: Google.Ads.Googleads.V10.Resources.Label

  field :landing_page_view, 126,
    type: Google.Ads.Googleads.V10.Resources.LandingPageView,
    json_name: "landingPageView"

  field :language_constant, 55,
    type: Google.Ads.Googleads.V10.Resources.LanguageConstant,
    json_name: "languageConstant"

  field :location_view, 123,
    type: Google.Ads.Googleads.V10.Resources.LocationView,
    json_name: "locationView"

  field :managed_placement_view, 53,
    type: Google.Ads.Googleads.V10.Resources.ManagedPlacementView,
    json_name: "managedPlacementView"

  field :media_file, 90,
    type: Google.Ads.Googleads.V10.Resources.MediaFile,
    json_name: "mediaFile"

  field :mobile_app_category_constant, 87,
    type: Google.Ads.Googleads.V10.Resources.MobileAppCategoryConstant,
    json_name: "mobileAppCategoryConstant"

  field :mobile_device_constant, 98,
    type: Google.Ads.Googleads.V10.Resources.MobileDeviceConstant,
    json_name: "mobileDeviceConstant"

  field :offline_user_data_job, 137,
    type: Google.Ads.Googleads.V10.Resources.OfflineUserDataJob,
    json_name: "offlineUserDataJob"

  field :operating_system_version_constant, 86,
    type: Google.Ads.Googleads.V10.Resources.OperatingSystemVersionConstant,
    json_name: "operatingSystemVersionConstant"

  field :paid_organic_search_term_view, 129,
    type: Google.Ads.Googleads.V10.Resources.PaidOrganicSearchTermView,
    json_name: "paidOrganicSearchTermView"

  field :parental_status_view, 45,
    type: Google.Ads.Googleads.V10.Resources.ParentalStatusView,
    json_name: "parentalStatusView"

  field :product_bidding_category_constant, 109,
    type: Google.Ads.Googleads.V10.Resources.ProductBiddingCategoryConstant,
    json_name: "productBiddingCategoryConstant"

  field :product_group_view, 54,
    type: Google.Ads.Googleads.V10.Resources.ProductGroupView,
    json_name: "productGroupView"

  field :recommendation, 22, type: Google.Ads.Googleads.V10.Resources.Recommendation

  field :search_term_view, 68,
    type: Google.Ads.Googleads.V10.Resources.SearchTermView,
    json_name: "searchTermView"

  field :shared_criterion, 29,
    type: Google.Ads.Googleads.V10.Resources.SharedCriterion,
    json_name: "sharedCriterion"

  field :shared_set, 27,
    type: Google.Ads.Googleads.V10.Resources.SharedSet,
    json_name: "sharedSet"

  field :smart_campaign_setting, 167,
    type: Google.Ads.Googleads.V10.Resources.SmartCampaignSetting,
    json_name: "smartCampaignSetting"

  field :shopping_performance_view, 117,
    type: Google.Ads.Googleads.V10.Resources.ShoppingPerformanceView,
    json_name: "shoppingPerformanceView"

  field :smart_campaign_search_term_view, 170,
    type: Google.Ads.Googleads.V10.Resources.SmartCampaignSearchTermView,
    json_name: "smartCampaignSearchTermView"

  field :third_party_app_analytics_link, 144,
    type: Google.Ads.Googleads.V10.Resources.ThirdPartyAppAnalyticsLink,
    json_name: "thirdPartyAppAnalyticsLink"

  field :topic_view, 44,
    type: Google.Ads.Googleads.V10.Resources.TopicView,
    json_name: "topicView"

  field :experiment, 133, type: Google.Ads.Googleads.V10.Resources.Experiment

  field :experiment_arm, 183,
    type: Google.Ads.Googleads.V10.Resources.ExperimentArm,
    json_name: "experimentArm"

  field :user_interest, 59,
    type: Google.Ads.Googleads.V10.Resources.UserInterest,
    json_name: "userInterest"

  field :life_event, 161,
    type: Google.Ads.Googleads.V10.Resources.LifeEvent,
    json_name: "lifeEvent"

  field :user_list, 38, type: Google.Ads.Googleads.V10.Resources.UserList, json_name: "userList"

  field :user_location_view, 135,
    type: Google.Ads.Googleads.V10.Resources.UserLocationView,
    json_name: "userLocationView"

  field :remarketing_action, 60,
    type: Google.Ads.Googleads.V10.Resources.RemarketingAction,
    json_name: "remarketingAction"

  field :topic_constant, 31,
    type: Google.Ads.Googleads.V10.Resources.TopicConstant,
    json_name: "topicConstant"

  field :video, 39, type: Google.Ads.Googleads.V10.Resources.Video

  field :webpage_view, 162,
    type: Google.Ads.Googleads.V10.Resources.WebpageView,
    json_name: "webpageView"

  field :lead_form_submission_data, 192,
    type: Google.Ads.Googleads.V10.Resources.LeadFormSubmissionData,
    json_name: "leadFormSubmissionData"

  field :metrics, 4, type: Google.Ads.Googleads.V10.Common.Metrics
  field :segments, 102, type: Google.Ads.Googleads.V10.Common.Segments
end
defmodule Google.Ads.Googleads.V10.Services.MutateGoogleAdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          mutate_operations: [Google.Ads.Googleads.V10.Services.MutateOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V10.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct customer_id: "",
            mutate_operations: [],
            partial_failure: false,
            validate_only: false,
            response_content_type: :UNSPECIFIED

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :mutate_operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.MutateOperation,
    json_name: "mutateOperations",
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V10.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V10.Services.MutateGoogleAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          mutate_operation_responses: [
            Google.Ads.Googleads.V10.Services.MutateOperationResponse.t()
          ]
        }

  defstruct partial_failure_error: nil,
            mutate_operation_responses: []

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :mutate_operation_responses, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.MutateOperationResponse,
    json_name: "mutateOperationResponses"
end
defmodule Google.Ads.Googleads.V10.Services.MutateOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:ad_group_ad_label_operation,
             Google.Ads.Googleads.V10.Services.AdGroupAdLabelOperation.t() | nil}
            | {:ad_group_ad_operation,
               Google.Ads.Googleads.V10.Services.AdGroupAdOperation.t() | nil}
            | {:ad_group_asset_operation,
               Google.Ads.Googleads.V10.Services.AdGroupAssetOperation.t() | nil}
            | {:ad_group_bid_modifier_operation,
               Google.Ads.Googleads.V10.Services.AdGroupBidModifierOperation.t() | nil}
            | {:ad_group_criterion_customizer_operation,
               Google.Ads.Googleads.V10.Services.AdGroupCriterionCustomizerOperation.t() | nil}
            | {:ad_group_criterion_label_operation,
               Google.Ads.Googleads.V10.Services.AdGroupCriterionLabelOperation.t() | nil}
            | {:ad_group_criterion_operation,
               Google.Ads.Googleads.V10.Services.AdGroupCriterionOperation.t() | nil}
            | {:ad_group_customizer_operation,
               Google.Ads.Googleads.V10.Services.AdGroupCustomizerOperation.t() | nil}
            | {:ad_group_extension_setting_operation,
               Google.Ads.Googleads.V10.Services.AdGroupExtensionSettingOperation.t() | nil}
            | {:ad_group_feed_operation,
               Google.Ads.Googleads.V10.Services.AdGroupFeedOperation.t() | nil}
            | {:ad_group_label_operation,
               Google.Ads.Googleads.V10.Services.AdGroupLabelOperation.t() | nil}
            | {:ad_group_operation, Google.Ads.Googleads.V10.Services.AdGroupOperation.t() | nil}
            | {:ad_operation, Google.Ads.Googleads.V10.Services.AdOperation.t() | nil}
            | {:ad_parameter_operation,
               Google.Ads.Googleads.V10.Services.AdParameterOperation.t() | nil}
            | {:asset_operation, Google.Ads.Googleads.V10.Services.AssetOperation.t() | nil}
            | {:asset_group_asset_operation,
               Google.Ads.Googleads.V10.Services.AssetGroupAssetOperation.t() | nil}
            | {:asset_group_listing_group_filter_operation,
               Google.Ads.Googleads.V10.Services.AssetGroupListingGroupFilterOperation.t() | nil}
            | {:asset_group_signal_operation,
               Google.Ads.Googleads.V10.Services.AssetGroupSignalOperation.t() | nil}
            | {:asset_group_operation,
               Google.Ads.Googleads.V10.Services.AssetGroupOperation.t() | nil}
            | {:asset_set_asset_operation,
               Google.Ads.Googleads.V10.Services.AssetSetAssetOperation.t() | nil}
            | {:asset_set_operation,
               Google.Ads.Googleads.V10.Services.AssetSetOperation.t() | nil}
            | {:audience_operation, Google.Ads.Googleads.V10.Services.AudienceOperation.t() | nil}
            | {:bidding_data_exclusion_operation,
               Google.Ads.Googleads.V10.Services.BiddingDataExclusionOperation.t() | nil}
            | {:bidding_seasonality_adjustment_operation,
               Google.Ads.Googleads.V10.Services.BiddingSeasonalityAdjustmentOperation.t() | nil}
            | {:bidding_strategy_operation,
               Google.Ads.Googleads.V10.Services.BiddingStrategyOperation.t() | nil}
            | {:campaign_asset_operation,
               Google.Ads.Googleads.V10.Services.CampaignAssetOperation.t() | nil}
            | {:campaign_asset_set_operation,
               Google.Ads.Googleads.V10.Services.CampaignAssetSetOperation.t() | nil}
            | {:campaign_bid_modifier_operation,
               Google.Ads.Googleads.V10.Services.CampaignBidModifierOperation.t() | nil}
            | {:campaign_budget_operation,
               Google.Ads.Googleads.V10.Services.CampaignBudgetOperation.t() | nil}
            | {:campaign_conversion_goal_operation,
               Google.Ads.Googleads.V10.Services.CampaignConversionGoalOperation.t() | nil}
            | {:campaign_criterion_operation,
               Google.Ads.Googleads.V10.Services.CampaignCriterionOperation.t() | nil}
            | {:campaign_customizer_operation,
               Google.Ads.Googleads.V10.Services.CampaignCustomizerOperation.t() | nil}
            | {:campaign_draft_operation,
               Google.Ads.Googleads.V10.Services.CampaignDraftOperation.t() | nil}
            | {:campaign_experiment_operation,
               Google.Ads.Googleads.V10.Services.CampaignExperimentOperation.t() | nil}
            | {:campaign_extension_setting_operation,
               Google.Ads.Googleads.V10.Services.CampaignExtensionSettingOperation.t() | nil}
            | {:campaign_feed_operation,
               Google.Ads.Googleads.V10.Services.CampaignFeedOperation.t() | nil}
            | {:campaign_group_operation,
               Google.Ads.Googleads.V10.Services.CampaignGroupOperation.t() | nil}
            | {:campaign_label_operation,
               Google.Ads.Googleads.V10.Services.CampaignLabelOperation.t() | nil}
            | {:campaign_operation, Google.Ads.Googleads.V10.Services.CampaignOperation.t() | nil}
            | {:campaign_shared_set_operation,
               Google.Ads.Googleads.V10.Services.CampaignSharedSetOperation.t() | nil}
            | {:conversion_action_operation,
               Google.Ads.Googleads.V10.Services.ConversionActionOperation.t() | nil}
            | {:conversion_custom_variable_operation,
               Google.Ads.Googleads.V10.Services.ConversionCustomVariableOperation.t() | nil}
            | {:conversion_goal_campaign_config_operation,
               Google.Ads.Googleads.V10.Services.ConversionGoalCampaignConfigOperation.t() | nil}
            | {:conversion_value_rule_operation,
               Google.Ads.Googleads.V10.Services.ConversionValueRuleOperation.t() | nil}
            | {:conversion_value_rule_set_operation,
               Google.Ads.Googleads.V10.Services.ConversionValueRuleSetOperation.t() | nil}
            | {:custom_conversion_goal_operation,
               Google.Ads.Googleads.V10.Services.CustomConversionGoalOperation.t() | nil}
            | {:customer_asset_operation,
               Google.Ads.Googleads.V10.Services.CustomerAssetOperation.t() | nil}
            | {:customer_conversion_goal_operation,
               Google.Ads.Googleads.V10.Services.CustomerConversionGoalOperation.t() | nil}
            | {:customer_customizer_operation,
               Google.Ads.Googleads.V10.Services.CustomerCustomizerOperation.t() | nil}
            | {:customer_extension_setting_operation,
               Google.Ads.Googleads.V10.Services.CustomerExtensionSettingOperation.t() | nil}
            | {:customer_feed_operation,
               Google.Ads.Googleads.V10.Services.CustomerFeedOperation.t() | nil}
            | {:customer_label_operation,
               Google.Ads.Googleads.V10.Services.CustomerLabelOperation.t() | nil}
            | {:customer_negative_criterion_operation,
               Google.Ads.Googleads.V10.Services.CustomerNegativeCriterionOperation.t() | nil}
            | {:customer_operation, Google.Ads.Googleads.V10.Services.CustomerOperation.t() | nil}
            | {:customizer_attribute_operation,
               Google.Ads.Googleads.V10.Services.CustomizerAttributeOperation.t() | nil}
            | {:experiment_operation,
               Google.Ads.Googleads.V10.Services.ExperimentOperation.t() | nil}
            | {:experiment_arm_operation,
               Google.Ads.Googleads.V10.Services.ExperimentArmOperation.t() | nil}
            | {:extension_feed_item_operation,
               Google.Ads.Googleads.V10.Services.ExtensionFeedItemOperation.t() | nil}
            | {:feed_item_operation,
               Google.Ads.Googleads.V10.Services.FeedItemOperation.t() | nil}
            | {:feed_item_set_operation,
               Google.Ads.Googleads.V10.Services.FeedItemSetOperation.t() | nil}
            | {:feed_item_set_link_operation,
               Google.Ads.Googleads.V10.Services.FeedItemSetLinkOperation.t() | nil}
            | {:feed_item_target_operation,
               Google.Ads.Googleads.V10.Services.FeedItemTargetOperation.t() | nil}
            | {:feed_mapping_operation,
               Google.Ads.Googleads.V10.Services.FeedMappingOperation.t() | nil}
            | {:feed_operation, Google.Ads.Googleads.V10.Services.FeedOperation.t() | nil}
            | {:keyword_plan_ad_group_operation,
               Google.Ads.Googleads.V10.Services.KeywordPlanAdGroupOperation.t() | nil}
            | {:keyword_plan_ad_group_keyword_operation,
               Google.Ads.Googleads.V10.Services.KeywordPlanAdGroupKeywordOperation.t() | nil}
            | {:keyword_plan_campaign_keyword_operation,
               Google.Ads.Googleads.V10.Services.KeywordPlanCampaignKeywordOperation.t() | nil}
            | {:keyword_plan_campaign_operation,
               Google.Ads.Googleads.V10.Services.KeywordPlanCampaignOperation.t() | nil}
            | {:keyword_plan_operation,
               Google.Ads.Googleads.V10.Services.KeywordPlanOperation.t() | nil}
            | {:label_operation, Google.Ads.Googleads.V10.Services.LabelOperation.t() | nil}
            | {:media_file_operation,
               Google.Ads.Googleads.V10.Services.MediaFileOperation.t() | nil}
            | {:remarketing_action_operation,
               Google.Ads.Googleads.V10.Services.RemarketingActionOperation.t() | nil}
            | {:shared_criterion_operation,
               Google.Ads.Googleads.V10.Services.SharedCriterionOperation.t() | nil}
            | {:shared_set_operation,
               Google.Ads.Googleads.V10.Services.SharedSetOperation.t() | nil}
            | {:smart_campaign_setting_operation,
               Google.Ads.Googleads.V10.Services.SmartCampaignSettingOperation.t() | nil}
            | {:user_list_operation,
               Google.Ads.Googleads.V10.Services.UserListOperation.t() | nil}
        }

  defstruct operation: nil

  oneof :operation, 0

  field :ad_group_ad_label_operation, 17,
    type: Google.Ads.Googleads.V10.Services.AdGroupAdLabelOperation,
    json_name: "adGroupAdLabelOperation",
    oneof: 0

  field :ad_group_ad_operation, 1,
    type: Google.Ads.Googleads.V10.Services.AdGroupAdOperation,
    json_name: "adGroupAdOperation",
    oneof: 0

  field :ad_group_asset_operation, 56,
    type: Google.Ads.Googleads.V10.Services.AdGroupAssetOperation,
    json_name: "adGroupAssetOperation",
    oneof: 0

  field :ad_group_bid_modifier_operation, 2,
    type: Google.Ads.Googleads.V10.Services.AdGroupBidModifierOperation,
    json_name: "adGroupBidModifierOperation",
    oneof: 0

  field :ad_group_criterion_customizer_operation, 77,
    type: Google.Ads.Googleads.V10.Services.AdGroupCriterionCustomizerOperation,
    json_name: "adGroupCriterionCustomizerOperation",
    oneof: 0

  field :ad_group_criterion_label_operation, 18,
    type: Google.Ads.Googleads.V10.Services.AdGroupCriterionLabelOperation,
    json_name: "adGroupCriterionLabelOperation",
    oneof: 0

  field :ad_group_criterion_operation, 3,
    type: Google.Ads.Googleads.V10.Services.AdGroupCriterionOperation,
    json_name: "adGroupCriterionOperation",
    oneof: 0

  field :ad_group_customizer_operation, 75,
    type: Google.Ads.Googleads.V10.Services.AdGroupCustomizerOperation,
    json_name: "adGroupCustomizerOperation",
    oneof: 0

  field :ad_group_extension_setting_operation, 19,
    type: Google.Ads.Googleads.V10.Services.AdGroupExtensionSettingOperation,
    json_name: "adGroupExtensionSettingOperation",
    oneof: 0

  field :ad_group_feed_operation, 20,
    type: Google.Ads.Googleads.V10.Services.AdGroupFeedOperation,
    json_name: "adGroupFeedOperation",
    oneof: 0

  field :ad_group_label_operation, 21,
    type: Google.Ads.Googleads.V10.Services.AdGroupLabelOperation,
    json_name: "adGroupLabelOperation",
    oneof: 0

  field :ad_group_operation, 5,
    type: Google.Ads.Googleads.V10.Services.AdGroupOperation,
    json_name: "adGroupOperation",
    oneof: 0

  field :ad_operation, 49,
    type: Google.Ads.Googleads.V10.Services.AdOperation,
    json_name: "adOperation",
    oneof: 0

  field :ad_parameter_operation, 22,
    type: Google.Ads.Googleads.V10.Services.AdParameterOperation,
    json_name: "adParameterOperation",
    oneof: 0

  field :asset_operation, 23,
    type: Google.Ads.Googleads.V10.Services.AssetOperation,
    json_name: "assetOperation",
    oneof: 0

  field :asset_group_asset_operation, 65,
    type: Google.Ads.Googleads.V10.Services.AssetGroupAssetOperation,
    json_name: "assetGroupAssetOperation",
    oneof: 0

  field :asset_group_listing_group_filter_operation, 78,
    type: Google.Ads.Googleads.V10.Services.AssetGroupListingGroupFilterOperation,
    json_name: "assetGroupListingGroupFilterOperation",
    oneof: 0

  field :asset_group_signal_operation, 80,
    type: Google.Ads.Googleads.V10.Services.AssetGroupSignalOperation,
    json_name: "assetGroupSignalOperation",
    oneof: 0

  field :asset_group_operation, 62,
    type: Google.Ads.Googleads.V10.Services.AssetGroupOperation,
    json_name: "assetGroupOperation",
    oneof: 0

  field :asset_set_asset_operation, 71,
    type: Google.Ads.Googleads.V10.Services.AssetSetAssetOperation,
    json_name: "assetSetAssetOperation",
    oneof: 0

  field :asset_set_operation, 72,
    type: Google.Ads.Googleads.V10.Services.AssetSetOperation,
    json_name: "assetSetOperation",
    oneof: 0

  field :audience_operation, 81,
    type: Google.Ads.Googleads.V10.Services.AudienceOperation,
    json_name: "audienceOperation",
    oneof: 0

  field :bidding_data_exclusion_operation, 58,
    type: Google.Ads.Googleads.V10.Services.BiddingDataExclusionOperation,
    json_name: "biddingDataExclusionOperation",
    oneof: 0

  field :bidding_seasonality_adjustment_operation, 59,
    type: Google.Ads.Googleads.V10.Services.BiddingSeasonalityAdjustmentOperation,
    json_name: "biddingSeasonalityAdjustmentOperation",
    oneof: 0

  field :bidding_strategy_operation, 6,
    type: Google.Ads.Googleads.V10.Services.BiddingStrategyOperation,
    json_name: "biddingStrategyOperation",
    oneof: 0

  field :campaign_asset_operation, 52,
    type: Google.Ads.Googleads.V10.Services.CampaignAssetOperation,
    json_name: "campaignAssetOperation",
    oneof: 0

  field :campaign_asset_set_operation, 73,
    type: Google.Ads.Googleads.V10.Services.CampaignAssetSetOperation,
    json_name: "campaignAssetSetOperation",
    oneof: 0

  field :campaign_bid_modifier_operation, 7,
    type: Google.Ads.Googleads.V10.Services.CampaignBidModifierOperation,
    json_name: "campaignBidModifierOperation",
    oneof: 0

  field :campaign_budget_operation, 8,
    type: Google.Ads.Googleads.V10.Services.CampaignBudgetOperation,
    json_name: "campaignBudgetOperation",
    oneof: 0

  field :campaign_conversion_goal_operation, 67,
    type: Google.Ads.Googleads.V10.Services.CampaignConversionGoalOperation,
    json_name: "campaignConversionGoalOperation",
    oneof: 0

  field :campaign_criterion_operation, 13,
    type: Google.Ads.Googleads.V10.Services.CampaignCriterionOperation,
    json_name: "campaignCriterionOperation",
    oneof: 0

  field :campaign_customizer_operation, 76,
    type: Google.Ads.Googleads.V10.Services.CampaignCustomizerOperation,
    json_name: "campaignCustomizerOperation",
    oneof: 0

  field :campaign_draft_operation, 24,
    type: Google.Ads.Googleads.V10.Services.CampaignDraftOperation,
    json_name: "campaignDraftOperation",
    oneof: 0

  field :campaign_experiment_operation, 25,
    type: Google.Ads.Googleads.V10.Services.CampaignExperimentOperation,
    json_name: "campaignExperimentOperation",
    oneof: 0

  field :campaign_extension_setting_operation, 26,
    type: Google.Ads.Googleads.V10.Services.CampaignExtensionSettingOperation,
    json_name: "campaignExtensionSettingOperation",
    oneof: 0

  field :campaign_feed_operation, 27,
    type: Google.Ads.Googleads.V10.Services.CampaignFeedOperation,
    json_name: "campaignFeedOperation",
    oneof: 0

  field :campaign_group_operation, 9,
    type: Google.Ads.Googleads.V10.Services.CampaignGroupOperation,
    json_name: "campaignGroupOperation",
    oneof: 0

  field :campaign_label_operation, 28,
    type: Google.Ads.Googleads.V10.Services.CampaignLabelOperation,
    json_name: "campaignLabelOperation",
    oneof: 0

  field :campaign_operation, 10,
    type: Google.Ads.Googleads.V10.Services.CampaignOperation,
    json_name: "campaignOperation",
    oneof: 0

  field :campaign_shared_set_operation, 11,
    type: Google.Ads.Googleads.V10.Services.CampaignSharedSetOperation,
    json_name: "campaignSharedSetOperation",
    oneof: 0

  field :conversion_action_operation, 12,
    type: Google.Ads.Googleads.V10.Services.ConversionActionOperation,
    json_name: "conversionActionOperation",
    oneof: 0

  field :conversion_custom_variable_operation, 55,
    type: Google.Ads.Googleads.V10.Services.ConversionCustomVariableOperation,
    json_name: "conversionCustomVariableOperation",
    oneof: 0

  field :conversion_goal_campaign_config_operation, 69,
    type: Google.Ads.Googleads.V10.Services.ConversionGoalCampaignConfigOperation,
    json_name: "conversionGoalCampaignConfigOperation",
    oneof: 0

  field :conversion_value_rule_operation, 63,
    type: Google.Ads.Googleads.V10.Services.ConversionValueRuleOperation,
    json_name: "conversionValueRuleOperation",
    oneof: 0

  field :conversion_value_rule_set_operation, 64,
    type: Google.Ads.Googleads.V10.Services.ConversionValueRuleSetOperation,
    json_name: "conversionValueRuleSetOperation",
    oneof: 0

  field :custom_conversion_goal_operation, 68,
    type: Google.Ads.Googleads.V10.Services.CustomConversionGoalOperation,
    json_name: "customConversionGoalOperation",
    oneof: 0

  field :customer_asset_operation, 57,
    type: Google.Ads.Googleads.V10.Services.CustomerAssetOperation,
    json_name: "customerAssetOperation",
    oneof: 0

  field :customer_conversion_goal_operation, 66,
    type: Google.Ads.Googleads.V10.Services.CustomerConversionGoalOperation,
    json_name: "customerConversionGoalOperation",
    oneof: 0

  field :customer_customizer_operation, 79,
    type: Google.Ads.Googleads.V10.Services.CustomerCustomizerOperation,
    json_name: "customerCustomizerOperation",
    oneof: 0

  field :customer_extension_setting_operation, 30,
    type: Google.Ads.Googleads.V10.Services.CustomerExtensionSettingOperation,
    json_name: "customerExtensionSettingOperation",
    oneof: 0

  field :customer_feed_operation, 31,
    type: Google.Ads.Googleads.V10.Services.CustomerFeedOperation,
    json_name: "customerFeedOperation",
    oneof: 0

  field :customer_label_operation, 32,
    type: Google.Ads.Googleads.V10.Services.CustomerLabelOperation,
    json_name: "customerLabelOperation",
    oneof: 0

  field :customer_negative_criterion_operation, 34,
    type: Google.Ads.Googleads.V10.Services.CustomerNegativeCriterionOperation,
    json_name: "customerNegativeCriterionOperation",
    oneof: 0

  field :customer_operation, 35,
    type: Google.Ads.Googleads.V10.Services.CustomerOperation,
    json_name: "customerOperation",
    oneof: 0

  field :customizer_attribute_operation, 70,
    type: Google.Ads.Googleads.V10.Services.CustomizerAttributeOperation,
    json_name: "customizerAttributeOperation",
    oneof: 0

  field :experiment_operation, 82,
    type: Google.Ads.Googleads.V10.Services.ExperimentOperation,
    json_name: "experimentOperation",
    oneof: 0

  field :experiment_arm_operation, 83,
    type: Google.Ads.Googleads.V10.Services.ExperimentArmOperation,
    json_name: "experimentArmOperation",
    oneof: 0

  field :extension_feed_item_operation, 36,
    type: Google.Ads.Googleads.V10.Services.ExtensionFeedItemOperation,
    json_name: "extensionFeedItemOperation",
    oneof: 0

  field :feed_item_operation, 37,
    type: Google.Ads.Googleads.V10.Services.FeedItemOperation,
    json_name: "feedItemOperation",
    oneof: 0

  field :feed_item_set_operation, 53,
    type: Google.Ads.Googleads.V10.Services.FeedItemSetOperation,
    json_name: "feedItemSetOperation",
    oneof: 0

  field :feed_item_set_link_operation, 54,
    type: Google.Ads.Googleads.V10.Services.FeedItemSetLinkOperation,
    json_name: "feedItemSetLinkOperation",
    oneof: 0

  field :feed_item_target_operation, 38,
    type: Google.Ads.Googleads.V10.Services.FeedItemTargetOperation,
    json_name: "feedItemTargetOperation",
    oneof: 0

  field :feed_mapping_operation, 39,
    type: Google.Ads.Googleads.V10.Services.FeedMappingOperation,
    json_name: "feedMappingOperation",
    oneof: 0

  field :feed_operation, 40,
    type: Google.Ads.Googleads.V10.Services.FeedOperation,
    json_name: "feedOperation",
    oneof: 0

  field :keyword_plan_ad_group_operation, 44,
    type: Google.Ads.Googleads.V10.Services.KeywordPlanAdGroupOperation,
    json_name: "keywordPlanAdGroupOperation",
    oneof: 0

  field :keyword_plan_ad_group_keyword_operation, 50,
    type: Google.Ads.Googleads.V10.Services.KeywordPlanAdGroupKeywordOperation,
    json_name: "keywordPlanAdGroupKeywordOperation",
    oneof: 0

  field :keyword_plan_campaign_keyword_operation, 51,
    type: Google.Ads.Googleads.V10.Services.KeywordPlanCampaignKeywordOperation,
    json_name: "keywordPlanCampaignKeywordOperation",
    oneof: 0

  field :keyword_plan_campaign_operation, 45,
    type: Google.Ads.Googleads.V10.Services.KeywordPlanCampaignOperation,
    json_name: "keywordPlanCampaignOperation",
    oneof: 0

  field :keyword_plan_operation, 48,
    type: Google.Ads.Googleads.V10.Services.KeywordPlanOperation,
    json_name: "keywordPlanOperation",
    oneof: 0

  field :label_operation, 41,
    type: Google.Ads.Googleads.V10.Services.LabelOperation,
    json_name: "labelOperation",
    oneof: 0

  field :media_file_operation, 42,
    type: Google.Ads.Googleads.V10.Services.MediaFileOperation,
    json_name: "mediaFileOperation",
    oneof: 0

  field :remarketing_action_operation, 43,
    type: Google.Ads.Googleads.V10.Services.RemarketingActionOperation,
    json_name: "remarketingActionOperation",
    oneof: 0

  field :shared_criterion_operation, 14,
    type: Google.Ads.Googleads.V10.Services.SharedCriterionOperation,
    json_name: "sharedCriterionOperation",
    oneof: 0

  field :shared_set_operation, 15,
    type: Google.Ads.Googleads.V10.Services.SharedSetOperation,
    json_name: "sharedSetOperation",
    oneof: 0

  field :smart_campaign_setting_operation, 61,
    type: Google.Ads.Googleads.V10.Services.SmartCampaignSettingOperation,
    json_name: "smartCampaignSettingOperation",
    oneof: 0

  field :user_list_operation, 16,
    type: Google.Ads.Googleads.V10.Services.UserListOperation,
    json_name: "userListOperation",
    oneof: 0
end
defmodule Google.Ads.Googleads.V10.Services.MutateOperationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response:
            {:ad_group_ad_label_result,
             Google.Ads.Googleads.V10.Services.MutateAdGroupAdLabelResult.t() | nil}
            | {:ad_group_ad_result,
               Google.Ads.Googleads.V10.Services.MutateAdGroupAdResult.t() | nil}
            | {:ad_group_asset_result,
               Google.Ads.Googleads.V10.Services.MutateAdGroupAssetResult.t() | nil}
            | {:ad_group_bid_modifier_result,
               Google.Ads.Googleads.V10.Services.MutateAdGroupBidModifierResult.t() | nil}
            | {:ad_group_criterion_customizer_result,
               Google.Ads.Googleads.V10.Services.MutateAdGroupCriterionCustomizerResult.t() | nil}
            | {:ad_group_criterion_label_result,
               Google.Ads.Googleads.V10.Services.MutateAdGroupCriterionLabelResult.t() | nil}
            | {:ad_group_criterion_result,
               Google.Ads.Googleads.V10.Services.MutateAdGroupCriterionResult.t() | nil}
            | {:ad_group_customizer_result,
               Google.Ads.Googleads.V10.Services.MutateAdGroupCustomizerResult.t() | nil}
            | {:ad_group_extension_setting_result,
               Google.Ads.Googleads.V10.Services.MutateAdGroupExtensionSettingResult.t() | nil}
            | {:ad_group_feed_result,
               Google.Ads.Googleads.V10.Services.MutateAdGroupFeedResult.t() | nil}
            | {:ad_group_label_result,
               Google.Ads.Googleads.V10.Services.MutateAdGroupLabelResult.t() | nil}
            | {:ad_group_result, Google.Ads.Googleads.V10.Services.MutateAdGroupResult.t() | nil}
            | {:ad_parameter_result,
               Google.Ads.Googleads.V10.Services.MutateAdParameterResult.t() | nil}
            | {:ad_result, Google.Ads.Googleads.V10.Services.MutateAdResult.t() | nil}
            | {:asset_result, Google.Ads.Googleads.V10.Services.MutateAssetResult.t() | nil}
            | {:asset_group_asset_result,
               Google.Ads.Googleads.V10.Services.MutateAssetGroupAssetResult.t() | nil}
            | {:asset_group_listing_group_filter_result,
               Google.Ads.Googleads.V10.Services.MutateAssetGroupListingGroupFilterResult.t()
               | nil}
            | {:asset_group_signal_result,
               Google.Ads.Googleads.V10.Services.MutateAssetGroupSignalResult.t() | nil}
            | {:asset_group_result,
               Google.Ads.Googleads.V10.Services.MutateAssetGroupResult.t() | nil}
            | {:asset_set_asset_result,
               Google.Ads.Googleads.V10.Services.MutateAssetSetAssetResult.t() | nil}
            | {:asset_set_result,
               Google.Ads.Googleads.V10.Services.MutateAssetSetResult.t() | nil}
            | {:audience_result, Google.Ads.Googleads.V10.Services.MutateAudienceResult.t() | nil}
            | {:bidding_data_exclusion_result,
               Google.Ads.Googleads.V10.Services.MutateBiddingDataExclusionsResult.t() | nil}
            | {:bidding_seasonality_adjustment_result,
               Google.Ads.Googleads.V10.Services.MutateBiddingSeasonalityAdjustmentsResult.t()
               | nil}
            | {:bidding_strategy_result,
               Google.Ads.Googleads.V10.Services.MutateBiddingStrategyResult.t() | nil}
            | {:campaign_asset_result,
               Google.Ads.Googleads.V10.Services.MutateCampaignAssetResult.t() | nil}
            | {:campaign_asset_set_result,
               Google.Ads.Googleads.V10.Services.MutateCampaignAssetSetResult.t() | nil}
            | {:campaign_bid_modifier_result,
               Google.Ads.Googleads.V10.Services.MutateCampaignBidModifierResult.t() | nil}
            | {:campaign_budget_result,
               Google.Ads.Googleads.V10.Services.MutateCampaignBudgetResult.t() | nil}
            | {:campaign_conversion_goal_result,
               Google.Ads.Googleads.V10.Services.MutateCampaignConversionGoalResult.t() | nil}
            | {:campaign_criterion_result,
               Google.Ads.Googleads.V10.Services.MutateCampaignCriterionResult.t() | nil}
            | {:campaign_customizer_result,
               Google.Ads.Googleads.V10.Services.MutateCampaignCustomizerResult.t() | nil}
            | {:campaign_draft_result,
               Google.Ads.Googleads.V10.Services.MutateCampaignDraftResult.t() | nil}
            | {:campaign_experiment_result,
               Google.Ads.Googleads.V10.Services.MutateCampaignExperimentResult.t() | nil}
            | {:campaign_extension_setting_result,
               Google.Ads.Googleads.V10.Services.MutateCampaignExtensionSettingResult.t() | nil}
            | {:campaign_feed_result,
               Google.Ads.Googleads.V10.Services.MutateCampaignFeedResult.t() | nil}
            | {:campaign_group_result,
               Google.Ads.Googleads.V10.Services.MutateCampaignGroupResult.t() | nil}
            | {:campaign_label_result,
               Google.Ads.Googleads.V10.Services.MutateCampaignLabelResult.t() | nil}
            | {:campaign_result, Google.Ads.Googleads.V10.Services.MutateCampaignResult.t() | nil}
            | {:campaign_shared_set_result,
               Google.Ads.Googleads.V10.Services.MutateCampaignSharedSetResult.t() | nil}
            | {:conversion_action_result,
               Google.Ads.Googleads.V10.Services.MutateConversionActionResult.t() | nil}
            | {:conversion_custom_variable_result,
               Google.Ads.Googleads.V10.Services.MutateConversionCustomVariableResult.t() | nil}
            | {:conversion_goal_campaign_config_result,
               Google.Ads.Googleads.V10.Services.MutateConversionGoalCampaignConfigResult.t()
               | nil}
            | {:conversion_value_rule_result,
               Google.Ads.Googleads.V10.Services.MutateConversionValueRuleResult.t() | nil}
            | {:conversion_value_rule_set_result,
               Google.Ads.Googleads.V10.Services.MutateConversionValueRuleSetResult.t() | nil}
            | {:custom_conversion_goal_result,
               Google.Ads.Googleads.V10.Services.MutateCustomConversionGoalResult.t() | nil}
            | {:customer_asset_result,
               Google.Ads.Googleads.V10.Services.MutateCustomerAssetResult.t() | nil}
            | {:customer_conversion_goal_result,
               Google.Ads.Googleads.V10.Services.MutateCustomerConversionGoalResult.t() | nil}
            | {:customer_customizer_result,
               Google.Ads.Googleads.V10.Services.MutateCustomerCustomizerResult.t() | nil}
            | {:customer_extension_setting_result,
               Google.Ads.Googleads.V10.Services.MutateCustomerExtensionSettingResult.t() | nil}
            | {:customer_feed_result,
               Google.Ads.Googleads.V10.Services.MutateCustomerFeedResult.t() | nil}
            | {:customer_label_result,
               Google.Ads.Googleads.V10.Services.MutateCustomerLabelResult.t() | nil}
            | {:customer_negative_criterion_result,
               Google.Ads.Googleads.V10.Services.MutateCustomerNegativeCriteriaResult.t() | nil}
            | {:customer_result, Google.Ads.Googleads.V10.Services.MutateCustomerResult.t() | nil}
            | {:customizer_attribute_result,
               Google.Ads.Googleads.V10.Services.MutateCustomizerAttributeResult.t() | nil}
            | {:extension_feed_item_result,
               Google.Ads.Googleads.V10.Services.MutateExtensionFeedItemResult.t() | nil}
            | {:feed_item_result,
               Google.Ads.Googleads.V10.Services.MutateFeedItemResult.t() | nil}
            | {:feed_item_set_result,
               Google.Ads.Googleads.V10.Services.MutateFeedItemSetResult.t() | nil}
            | {:feed_item_set_link_result,
               Google.Ads.Googleads.V10.Services.MutateFeedItemSetLinkResult.t() | nil}
            | {:feed_item_target_result,
               Google.Ads.Googleads.V10.Services.MutateFeedItemTargetResult.t() | nil}
            | {:feed_mapping_result,
               Google.Ads.Googleads.V10.Services.MutateFeedMappingResult.t() | nil}
            | {:feed_result, Google.Ads.Googleads.V10.Services.MutateFeedResult.t() | nil}
            | {:keyword_plan_ad_group_result,
               Google.Ads.Googleads.V10.Services.MutateKeywordPlanAdGroupResult.t() | nil}
            | {:keyword_plan_campaign_result,
               Google.Ads.Googleads.V10.Services.MutateKeywordPlanCampaignResult.t() | nil}
            | {:keyword_plan_ad_group_keyword_result,
               Google.Ads.Googleads.V10.Services.MutateKeywordPlanAdGroupKeywordResult.t() | nil}
            | {:keyword_plan_campaign_keyword_result,
               Google.Ads.Googleads.V10.Services.MutateKeywordPlanCampaignKeywordResult.t() | nil}
            | {:keyword_plan_result,
               Google.Ads.Googleads.V10.Services.MutateKeywordPlansResult.t() | nil}
            | {:label_result, Google.Ads.Googleads.V10.Services.MutateLabelResult.t() | nil}
            | {:media_file_result,
               Google.Ads.Googleads.V10.Services.MutateMediaFileResult.t() | nil}
            | {:remarketing_action_result,
               Google.Ads.Googleads.V10.Services.MutateRemarketingActionResult.t() | nil}
            | {:shared_criterion_result,
               Google.Ads.Googleads.V10.Services.MutateSharedCriterionResult.t() | nil}
            | {:shared_set_result,
               Google.Ads.Googleads.V10.Services.MutateSharedSetResult.t() | nil}
            | {:smart_campaign_setting_result,
               Google.Ads.Googleads.V10.Services.MutateSmartCampaignSettingResult.t() | nil}
            | {:user_list_result,
               Google.Ads.Googleads.V10.Services.MutateUserListResult.t() | nil}
        }

  defstruct response: nil

  oneof :response, 0

  field :ad_group_ad_label_result, 17,
    type: Google.Ads.Googleads.V10.Services.MutateAdGroupAdLabelResult,
    json_name: "adGroupAdLabelResult",
    oneof: 0

  field :ad_group_ad_result, 1,
    type: Google.Ads.Googleads.V10.Services.MutateAdGroupAdResult,
    json_name: "adGroupAdResult",
    oneof: 0

  field :ad_group_asset_result, 56,
    type: Google.Ads.Googleads.V10.Services.MutateAdGroupAssetResult,
    json_name: "adGroupAssetResult",
    oneof: 0

  field :ad_group_bid_modifier_result, 2,
    type: Google.Ads.Googleads.V10.Services.MutateAdGroupBidModifierResult,
    json_name: "adGroupBidModifierResult",
    oneof: 0

  field :ad_group_criterion_customizer_result, 77,
    type: Google.Ads.Googleads.V10.Services.MutateAdGroupCriterionCustomizerResult,
    json_name: "adGroupCriterionCustomizerResult",
    oneof: 0

  field :ad_group_criterion_label_result, 18,
    type: Google.Ads.Googleads.V10.Services.MutateAdGroupCriterionLabelResult,
    json_name: "adGroupCriterionLabelResult",
    oneof: 0

  field :ad_group_criterion_result, 3,
    type: Google.Ads.Googleads.V10.Services.MutateAdGroupCriterionResult,
    json_name: "adGroupCriterionResult",
    oneof: 0

  field :ad_group_customizer_result, 75,
    type: Google.Ads.Googleads.V10.Services.MutateAdGroupCustomizerResult,
    json_name: "adGroupCustomizerResult",
    oneof: 0

  field :ad_group_extension_setting_result, 19,
    type: Google.Ads.Googleads.V10.Services.MutateAdGroupExtensionSettingResult,
    json_name: "adGroupExtensionSettingResult",
    oneof: 0

  field :ad_group_feed_result, 20,
    type: Google.Ads.Googleads.V10.Services.MutateAdGroupFeedResult,
    json_name: "adGroupFeedResult",
    oneof: 0

  field :ad_group_label_result, 21,
    type: Google.Ads.Googleads.V10.Services.MutateAdGroupLabelResult,
    json_name: "adGroupLabelResult",
    oneof: 0

  field :ad_group_result, 5,
    type: Google.Ads.Googleads.V10.Services.MutateAdGroupResult,
    json_name: "adGroupResult",
    oneof: 0

  field :ad_parameter_result, 22,
    type: Google.Ads.Googleads.V10.Services.MutateAdParameterResult,
    json_name: "adParameterResult",
    oneof: 0

  field :ad_result, 49,
    type: Google.Ads.Googleads.V10.Services.MutateAdResult,
    json_name: "adResult",
    oneof: 0

  field :asset_result, 23,
    type: Google.Ads.Googleads.V10.Services.MutateAssetResult,
    json_name: "assetResult",
    oneof: 0

  field :asset_group_asset_result, 65,
    type: Google.Ads.Googleads.V10.Services.MutateAssetGroupAssetResult,
    json_name: "assetGroupAssetResult",
    oneof: 0

  field :asset_group_listing_group_filter_result, 78,
    type: Google.Ads.Googleads.V10.Services.MutateAssetGroupListingGroupFilterResult,
    json_name: "assetGroupListingGroupFilterResult",
    oneof: 0

  field :asset_group_signal_result, 79,
    type: Google.Ads.Googleads.V10.Services.MutateAssetGroupSignalResult,
    json_name: "assetGroupSignalResult",
    oneof: 0

  field :asset_group_result, 62,
    type: Google.Ads.Googleads.V10.Services.MutateAssetGroupResult,
    json_name: "assetGroupResult",
    oneof: 0

  field :asset_set_asset_result, 71,
    type: Google.Ads.Googleads.V10.Services.MutateAssetSetAssetResult,
    json_name: "assetSetAssetResult",
    oneof: 0

  field :asset_set_result, 72,
    type: Google.Ads.Googleads.V10.Services.MutateAssetSetResult,
    json_name: "assetSetResult",
    oneof: 0

  field :audience_result, 80,
    type: Google.Ads.Googleads.V10.Services.MutateAudienceResult,
    json_name: "audienceResult",
    oneof: 0

  field :bidding_data_exclusion_result, 58,
    type: Google.Ads.Googleads.V10.Services.MutateBiddingDataExclusionsResult,
    json_name: "biddingDataExclusionResult",
    oneof: 0

  field :bidding_seasonality_adjustment_result, 59,
    type: Google.Ads.Googleads.V10.Services.MutateBiddingSeasonalityAdjustmentsResult,
    json_name: "biddingSeasonalityAdjustmentResult",
    oneof: 0

  field :bidding_strategy_result, 6,
    type: Google.Ads.Googleads.V10.Services.MutateBiddingStrategyResult,
    json_name: "biddingStrategyResult",
    oneof: 0

  field :campaign_asset_result, 52,
    type: Google.Ads.Googleads.V10.Services.MutateCampaignAssetResult,
    json_name: "campaignAssetResult",
    oneof: 0

  field :campaign_asset_set_result, 73,
    type: Google.Ads.Googleads.V10.Services.MutateCampaignAssetSetResult,
    json_name: "campaignAssetSetResult",
    oneof: 0

  field :campaign_bid_modifier_result, 7,
    type: Google.Ads.Googleads.V10.Services.MutateCampaignBidModifierResult,
    json_name: "campaignBidModifierResult",
    oneof: 0

  field :campaign_budget_result, 8,
    type: Google.Ads.Googleads.V10.Services.MutateCampaignBudgetResult,
    json_name: "campaignBudgetResult",
    oneof: 0

  field :campaign_conversion_goal_result, 67,
    type: Google.Ads.Googleads.V10.Services.MutateCampaignConversionGoalResult,
    json_name: "campaignConversionGoalResult",
    oneof: 0

  field :campaign_criterion_result, 13,
    type: Google.Ads.Googleads.V10.Services.MutateCampaignCriterionResult,
    json_name: "campaignCriterionResult",
    oneof: 0

  field :campaign_customizer_result, 76,
    type: Google.Ads.Googleads.V10.Services.MutateCampaignCustomizerResult,
    json_name: "campaignCustomizerResult",
    oneof: 0

  field :campaign_draft_result, 24,
    type: Google.Ads.Googleads.V10.Services.MutateCampaignDraftResult,
    json_name: "campaignDraftResult",
    oneof: 0

  field :campaign_experiment_result, 25,
    type: Google.Ads.Googleads.V10.Services.MutateCampaignExperimentResult,
    json_name: "campaignExperimentResult",
    oneof: 0

  field :campaign_extension_setting_result, 26,
    type: Google.Ads.Googleads.V10.Services.MutateCampaignExtensionSettingResult,
    json_name: "campaignExtensionSettingResult",
    oneof: 0

  field :campaign_feed_result, 27,
    type: Google.Ads.Googleads.V10.Services.MutateCampaignFeedResult,
    json_name: "campaignFeedResult",
    oneof: 0

  field :campaign_group_result, 9,
    type: Google.Ads.Googleads.V10.Services.MutateCampaignGroupResult,
    json_name: "campaignGroupResult",
    oneof: 0

  field :campaign_label_result, 28,
    type: Google.Ads.Googleads.V10.Services.MutateCampaignLabelResult,
    json_name: "campaignLabelResult",
    oneof: 0

  field :campaign_result, 10,
    type: Google.Ads.Googleads.V10.Services.MutateCampaignResult,
    json_name: "campaignResult",
    oneof: 0

  field :campaign_shared_set_result, 11,
    type: Google.Ads.Googleads.V10.Services.MutateCampaignSharedSetResult,
    json_name: "campaignSharedSetResult",
    oneof: 0

  field :conversion_action_result, 12,
    type: Google.Ads.Googleads.V10.Services.MutateConversionActionResult,
    json_name: "conversionActionResult",
    oneof: 0

  field :conversion_custom_variable_result, 55,
    type: Google.Ads.Googleads.V10.Services.MutateConversionCustomVariableResult,
    json_name: "conversionCustomVariableResult",
    oneof: 0

  field :conversion_goal_campaign_config_result, 69,
    type: Google.Ads.Googleads.V10.Services.MutateConversionGoalCampaignConfigResult,
    json_name: "conversionGoalCampaignConfigResult",
    oneof: 0

  field :conversion_value_rule_result, 63,
    type: Google.Ads.Googleads.V10.Services.MutateConversionValueRuleResult,
    json_name: "conversionValueRuleResult",
    oneof: 0

  field :conversion_value_rule_set_result, 64,
    type: Google.Ads.Googleads.V10.Services.MutateConversionValueRuleSetResult,
    json_name: "conversionValueRuleSetResult",
    oneof: 0

  field :custom_conversion_goal_result, 68,
    type: Google.Ads.Googleads.V10.Services.MutateCustomConversionGoalResult,
    json_name: "customConversionGoalResult",
    oneof: 0

  field :customer_asset_result, 57,
    type: Google.Ads.Googleads.V10.Services.MutateCustomerAssetResult,
    json_name: "customerAssetResult",
    oneof: 0

  field :customer_conversion_goal_result, 66,
    type: Google.Ads.Googleads.V10.Services.MutateCustomerConversionGoalResult,
    json_name: "customerConversionGoalResult",
    oneof: 0

  field :customer_customizer_result, 74,
    type: Google.Ads.Googleads.V10.Services.MutateCustomerCustomizerResult,
    json_name: "customerCustomizerResult",
    oneof: 0

  field :customer_extension_setting_result, 30,
    type: Google.Ads.Googleads.V10.Services.MutateCustomerExtensionSettingResult,
    json_name: "customerExtensionSettingResult",
    oneof: 0

  field :customer_feed_result, 31,
    type: Google.Ads.Googleads.V10.Services.MutateCustomerFeedResult,
    json_name: "customerFeedResult",
    oneof: 0

  field :customer_label_result, 32,
    type: Google.Ads.Googleads.V10.Services.MutateCustomerLabelResult,
    json_name: "customerLabelResult",
    oneof: 0

  field :customer_negative_criterion_result, 34,
    type: Google.Ads.Googleads.V10.Services.MutateCustomerNegativeCriteriaResult,
    json_name: "customerNegativeCriterionResult",
    oneof: 0

  field :customer_result, 35,
    type: Google.Ads.Googleads.V10.Services.MutateCustomerResult,
    json_name: "customerResult",
    oneof: 0

  field :customizer_attribute_result, 70,
    type: Google.Ads.Googleads.V10.Services.MutateCustomizerAttributeResult,
    json_name: "customizerAttributeResult",
    oneof: 0

  field :extension_feed_item_result, 36,
    type: Google.Ads.Googleads.V10.Services.MutateExtensionFeedItemResult,
    json_name: "extensionFeedItemResult",
    oneof: 0

  field :feed_item_result, 37,
    type: Google.Ads.Googleads.V10.Services.MutateFeedItemResult,
    json_name: "feedItemResult",
    oneof: 0

  field :feed_item_set_result, 53,
    type: Google.Ads.Googleads.V10.Services.MutateFeedItemSetResult,
    json_name: "feedItemSetResult",
    oneof: 0

  field :feed_item_set_link_result, 54,
    type: Google.Ads.Googleads.V10.Services.MutateFeedItemSetLinkResult,
    json_name: "feedItemSetLinkResult",
    oneof: 0

  field :feed_item_target_result, 38,
    type: Google.Ads.Googleads.V10.Services.MutateFeedItemTargetResult,
    json_name: "feedItemTargetResult",
    oneof: 0

  field :feed_mapping_result, 39,
    type: Google.Ads.Googleads.V10.Services.MutateFeedMappingResult,
    json_name: "feedMappingResult",
    oneof: 0

  field :feed_result, 40,
    type: Google.Ads.Googleads.V10.Services.MutateFeedResult,
    json_name: "feedResult",
    oneof: 0

  field :keyword_plan_ad_group_result, 44,
    type: Google.Ads.Googleads.V10.Services.MutateKeywordPlanAdGroupResult,
    json_name: "keywordPlanAdGroupResult",
    oneof: 0

  field :keyword_plan_campaign_result, 45,
    type: Google.Ads.Googleads.V10.Services.MutateKeywordPlanCampaignResult,
    json_name: "keywordPlanCampaignResult",
    oneof: 0

  field :keyword_plan_ad_group_keyword_result, 50,
    type: Google.Ads.Googleads.V10.Services.MutateKeywordPlanAdGroupKeywordResult,
    json_name: "keywordPlanAdGroupKeywordResult",
    oneof: 0

  field :keyword_plan_campaign_keyword_result, 51,
    type: Google.Ads.Googleads.V10.Services.MutateKeywordPlanCampaignKeywordResult,
    json_name: "keywordPlanCampaignKeywordResult",
    oneof: 0

  field :keyword_plan_result, 48,
    type: Google.Ads.Googleads.V10.Services.MutateKeywordPlansResult,
    json_name: "keywordPlanResult",
    oneof: 0

  field :label_result, 41,
    type: Google.Ads.Googleads.V10.Services.MutateLabelResult,
    json_name: "labelResult",
    oneof: 0

  field :media_file_result, 42,
    type: Google.Ads.Googleads.V10.Services.MutateMediaFileResult,
    json_name: "mediaFileResult",
    oneof: 0

  field :remarketing_action_result, 43,
    type: Google.Ads.Googleads.V10.Services.MutateRemarketingActionResult,
    json_name: "remarketingActionResult",
    oneof: 0

  field :shared_criterion_result, 14,
    type: Google.Ads.Googleads.V10.Services.MutateSharedCriterionResult,
    json_name: "sharedCriterionResult",
    oneof: 0

  field :shared_set_result, 15,
    type: Google.Ads.Googleads.V10.Services.MutateSharedSetResult,
    json_name: "sharedSetResult",
    oneof: 0

  field :smart_campaign_setting_result, 61,
    type: Google.Ads.Googleads.V10.Services.MutateSmartCampaignSettingResult,
    json_name: "smartCampaignSettingResult",
    oneof: 0

  field :user_list_result, 16,
    type: Google.Ads.Googleads.V10.Services.MutateUserListResult,
    json_name: "userListResult",
    oneof: 0
end
defmodule Google.Ads.Googleads.V10.Services.GoogleAdsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v10.services.GoogleAdsService"

  rpc :Search,
      Google.Ads.Googleads.V10.Services.SearchGoogleAdsRequest,
      Google.Ads.Googleads.V10.Services.SearchGoogleAdsResponse

  rpc :SearchStream,
      Google.Ads.Googleads.V10.Services.SearchGoogleAdsStreamRequest,
      stream(Google.Ads.Googleads.V10.Services.SearchGoogleAdsStreamResponse)

  rpc :Mutate,
      Google.Ads.Googleads.V10.Services.MutateGoogleAdsRequest,
      Google.Ads.Googleads.V10.Services.MutateGoogleAdsResponse
end

defmodule Google.Ads.Googleads.V10.Services.GoogleAdsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.GoogleAdsService.Service
end
