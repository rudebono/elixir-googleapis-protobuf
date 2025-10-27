defmodule Google.Ads.Googleads.V22.Errors.QuotaErrorDetails.QuotaRateScope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ACCOUNT, 2
  field :DEVELOPER, 3
end

defmodule Google.Ads.Googleads.V22.Errors.GoogleAdsFailure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :errors, 1, repeated: true, type: Google.Ads.Googleads.V22.Errors.GoogleAdsError
  field :request_id, 2, type: :string, json_name: "requestId"
end

defmodule Google.Ads.Googleads.V22.Errors.GoogleAdsError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :error_code, 1, type: Google.Ads.Googleads.V22.Errors.ErrorCode, json_name: "errorCode"
  field :message, 2, type: :string
  field :trigger, 3, type: Google.Ads.Googleads.V22.Common.Value
  field :location, 4, type: Google.Ads.Googleads.V22.Errors.ErrorLocation
  field :details, 5, type: Google.Ads.Googleads.V22.Errors.ErrorDetails
end

defmodule Google.Ads.Googleads.V22.Errors.ErrorCode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :error_code, 0

  field :request_error, 1,
    type: Google.Ads.Googleads.V22.Errors.RequestErrorEnum.RequestError,
    json_name: "requestError",
    enum: true,
    oneof: 0

  field :bidding_strategy_error, 2,
    type: Google.Ads.Googleads.V22.Errors.BiddingStrategyErrorEnum.BiddingStrategyError,
    json_name: "biddingStrategyError",
    enum: true,
    oneof: 0

  field :url_field_error, 3,
    type: Google.Ads.Googleads.V22.Errors.UrlFieldErrorEnum.UrlFieldError,
    json_name: "urlFieldError",
    enum: true,
    oneof: 0

  field :list_operation_error, 4,
    type: Google.Ads.Googleads.V22.Errors.ListOperationErrorEnum.ListOperationError,
    json_name: "listOperationError",
    enum: true,
    oneof: 0

  field :query_error, 5,
    type: Google.Ads.Googleads.V22.Errors.QueryErrorEnum.QueryError,
    json_name: "queryError",
    enum: true,
    oneof: 0

  field :mutate_error, 7,
    type: Google.Ads.Googleads.V22.Errors.MutateErrorEnum.MutateError,
    json_name: "mutateError",
    enum: true,
    oneof: 0

  field :field_mask_error, 8,
    type: Google.Ads.Googleads.V22.Errors.FieldMaskErrorEnum.FieldMaskError,
    json_name: "fieldMaskError",
    enum: true,
    oneof: 0

  field :authorization_error, 9,
    type: Google.Ads.Googleads.V22.Errors.AuthorizationErrorEnum.AuthorizationError,
    json_name: "authorizationError",
    enum: true,
    oneof: 0

  field :internal_error, 10,
    type: Google.Ads.Googleads.V22.Errors.InternalErrorEnum.InternalError,
    json_name: "internalError",
    enum: true,
    oneof: 0

  field :quota_error, 11,
    type: Google.Ads.Googleads.V22.Errors.QuotaErrorEnum.QuotaError,
    json_name: "quotaError",
    enum: true,
    oneof: 0

  field :ad_error, 12,
    type: Google.Ads.Googleads.V22.Errors.AdErrorEnum.AdError,
    json_name: "adError",
    enum: true,
    oneof: 0

  field :ad_group_error, 13,
    type: Google.Ads.Googleads.V22.Errors.AdGroupErrorEnum.AdGroupError,
    json_name: "adGroupError",
    enum: true,
    oneof: 0

  field :campaign_budget_error, 14,
    type: Google.Ads.Googleads.V22.Errors.CampaignBudgetErrorEnum.CampaignBudgetError,
    json_name: "campaignBudgetError",
    enum: true,
    oneof: 0

  field :campaign_error, 15,
    type: Google.Ads.Googleads.V22.Errors.CampaignErrorEnum.CampaignError,
    json_name: "campaignError",
    enum: true,
    oneof: 0

  field :video_campaign_error, 182,
    type: Google.Ads.Googleads.V22.Errors.VideoCampaignErrorEnum.VideoCampaignError,
    json_name: "videoCampaignError",
    enum: true,
    oneof: 0

  field :authentication_error, 17,
    type: Google.Ads.Googleads.V22.Errors.AuthenticationErrorEnum.AuthenticationError,
    json_name: "authenticationError",
    enum: true,
    oneof: 0

  field :ad_group_criterion_customizer_error, 161,
    type:
      Google.Ads.Googleads.V22.Errors.AdGroupCriterionCustomizerErrorEnum.AdGroupCriterionCustomizerError,
    json_name: "adGroupCriterionCustomizerError",
    enum: true,
    oneof: 0

  field :ad_group_criterion_error, 18,
    type: Google.Ads.Googleads.V22.Errors.AdGroupCriterionErrorEnum.AdGroupCriterionError,
    json_name: "adGroupCriterionError",
    enum: true,
    oneof: 0

  field :ad_group_customizer_error, 159,
    type: Google.Ads.Googleads.V22.Errors.AdGroupCustomizerErrorEnum.AdGroupCustomizerError,
    json_name: "adGroupCustomizerError",
    enum: true,
    oneof: 0

  field :ad_customizer_error, 19,
    type: Google.Ads.Googleads.V22.Errors.AdCustomizerErrorEnum.AdCustomizerError,
    json_name: "adCustomizerError",
    enum: true,
    oneof: 0

  field :ad_group_ad_error, 21,
    type: Google.Ads.Googleads.V22.Errors.AdGroupAdErrorEnum.AdGroupAdError,
    json_name: "adGroupAdError",
    enum: true,
    oneof: 0

  field :ad_sharing_error, 24,
    type: Google.Ads.Googleads.V22.Errors.AdSharingErrorEnum.AdSharingError,
    json_name: "adSharingError",
    enum: true,
    oneof: 0

  field :adx_error, 25,
    type: Google.Ads.Googleads.V22.Errors.AdxErrorEnum.AdxError,
    json_name: "adxError",
    enum: true,
    oneof: 0

  field :asset_error, 107,
    type: Google.Ads.Googleads.V22.Errors.AssetErrorEnum.AssetError,
    json_name: "assetError",
    enum: true,
    oneof: 0

  field :asset_group_asset_error, 149,
    type: Google.Ads.Googleads.V22.Errors.AssetGroupAssetErrorEnum.AssetGroupAssetError,
    json_name: "assetGroupAssetError",
    enum: true,
    oneof: 0

  field :asset_group_listing_group_filter_error, 155,
    type:
      Google.Ads.Googleads.V22.Errors.AssetGroupListingGroupFilterErrorEnum.AssetGroupListingGroupFilterError,
    json_name: "assetGroupListingGroupFilterError",
    enum: true,
    oneof: 0

  field :asset_group_error, 148,
    type: Google.Ads.Googleads.V22.Errors.AssetGroupErrorEnum.AssetGroupError,
    json_name: "assetGroupError",
    enum: true,
    oneof: 0

  field :asset_set_asset_error, 153,
    type: Google.Ads.Googleads.V22.Errors.AssetSetAssetErrorEnum.AssetSetAssetError,
    json_name: "assetSetAssetError",
    enum: true,
    oneof: 0

  field :asset_set_link_error, 154,
    type: Google.Ads.Googleads.V22.Errors.AssetSetLinkErrorEnum.AssetSetLinkError,
    json_name: "assetSetLinkError",
    enum: true,
    oneof: 0

  field :asset_set_error, 152,
    type: Google.Ads.Googleads.V22.Errors.AssetSetErrorEnum.AssetSetError,
    json_name: "assetSetError",
    enum: true,
    oneof: 0

  field :bidding_error, 26,
    type: Google.Ads.Googleads.V22.Errors.BiddingErrorEnum.BiddingError,
    json_name: "biddingError",
    enum: true,
    oneof: 0

  field :campaign_criterion_error, 29,
    type: Google.Ads.Googleads.V22.Errors.CampaignCriterionErrorEnum.CampaignCriterionError,
    json_name: "campaignCriterionError",
    enum: true,
    oneof: 0

  field :campaign_conversion_goal_error, 166,
    type:
      Google.Ads.Googleads.V22.Errors.CampaignConversionGoalErrorEnum.CampaignConversionGoalError,
    json_name: "campaignConversionGoalError",
    enum: true,
    oneof: 0

  field :campaign_customizer_error, 160,
    type: Google.Ads.Googleads.V22.Errors.CampaignCustomizerErrorEnum.CampaignCustomizerError,
    json_name: "campaignCustomizerError",
    enum: true,
    oneof: 0

  field :collection_size_error, 31,
    type: Google.Ads.Googleads.V22.Errors.CollectionSizeErrorEnum.CollectionSizeError,
    json_name: "collectionSizeError",
    enum: true,
    oneof: 0

  field :conversion_goal_campaign_config_error, 165,
    type:
      Google.Ads.Googleads.V22.Errors.ConversionGoalCampaignConfigErrorEnum.ConversionGoalCampaignConfigError,
    json_name: "conversionGoalCampaignConfigError",
    enum: true,
    oneof: 0

  field :country_code_error, 109,
    type: Google.Ads.Googleads.V22.Errors.CountryCodeErrorEnum.CountryCodeError,
    json_name: "countryCodeError",
    enum: true,
    oneof: 0

  field :criterion_error, 32,
    type: Google.Ads.Googleads.V22.Errors.CriterionErrorEnum.CriterionError,
    json_name: "criterionError",
    enum: true,
    oneof: 0

  field :custom_conversion_goal_error, 150,
    type: Google.Ads.Googleads.V22.Errors.CustomConversionGoalErrorEnum.CustomConversionGoalError,
    json_name: "customConversionGoalError",
    enum: true,
    oneof: 0

  field :customer_customizer_error, 158,
    type: Google.Ads.Googleads.V22.Errors.CustomerCustomizerErrorEnum.CustomerCustomizerError,
    json_name: "customerCustomizerError",
    enum: true,
    oneof: 0

  field :customer_error, 90,
    type: Google.Ads.Googleads.V22.Errors.CustomerErrorEnum.CustomerError,
    json_name: "customerError",
    enum: true,
    oneof: 0

  field :customizer_attribute_error, 151,
    type: Google.Ads.Googleads.V22.Errors.CustomizerAttributeErrorEnum.CustomizerAttributeError,
    json_name: "customizerAttributeError",
    enum: true,
    oneof: 0

  field :date_error, 33,
    type: Google.Ads.Googleads.V22.Errors.DateErrorEnum.DateError,
    json_name: "dateError",
    enum: true,
    oneof: 0

  field :date_range_error, 34,
    type: Google.Ads.Googleads.V22.Errors.DateRangeErrorEnum.DateRangeError,
    json_name: "dateRangeError",
    enum: true,
    oneof: 0

  field :distinct_error, 35,
    type: Google.Ads.Googleads.V22.Errors.DistinctErrorEnum.DistinctError,
    json_name: "distinctError",
    enum: true,
    oneof: 0

  field :feed_attribute_reference_error, 36,
    type:
      Google.Ads.Googleads.V22.Errors.FeedAttributeReferenceErrorEnum.FeedAttributeReferenceError,
    json_name: "feedAttributeReferenceError",
    enum: true,
    oneof: 0

  field :final_url_expansion_asset_view_error, 193,
    type:
      Google.Ads.Googleads.V22.Errors.FinalUrlExpansionAssetViewErrorEnum.FinalUrlExpansionAssetViewError,
    json_name: "finalUrlExpansionAssetViewError",
    enum: true,
    oneof: 0

  field :function_error, 37,
    type: Google.Ads.Googleads.V22.Errors.FunctionErrorEnum.FunctionError,
    json_name: "functionError",
    enum: true,
    oneof: 0

  field :function_parsing_error, 38,
    type: Google.Ads.Googleads.V22.Errors.FunctionParsingErrorEnum.FunctionParsingError,
    json_name: "functionParsingError",
    enum: true,
    oneof: 0

  field :id_error, 39,
    type: Google.Ads.Googleads.V22.Errors.IdErrorEnum.IdError,
    json_name: "idError",
    enum: true,
    oneof: 0

  field :image_error, 40,
    type: Google.Ads.Googleads.V22.Errors.ImageErrorEnum.ImageError,
    json_name: "imageError",
    enum: true,
    oneof: 0

  field :language_code_error, 110,
    type: Google.Ads.Googleads.V22.Errors.LanguageCodeErrorEnum.LanguageCodeError,
    json_name: "languageCodeError",
    enum: true,
    oneof: 0

  field :media_bundle_error, 42,
    type: Google.Ads.Googleads.V22.Errors.MediaBundleErrorEnum.MediaBundleError,
    json_name: "mediaBundleError",
    enum: true,
    oneof: 0

  field :media_upload_error, 116,
    type: Google.Ads.Googleads.V22.Errors.MediaUploadErrorEnum.MediaUploadError,
    json_name: "mediaUploadError",
    enum: true,
    oneof: 0

  field :media_file_error, 86,
    type: Google.Ads.Googleads.V22.Errors.MediaFileErrorEnum.MediaFileError,
    json_name: "mediaFileError",
    enum: true,
    oneof: 0

  field :merchant_center_error, 162,
    type: Google.Ads.Googleads.V22.Errors.MerchantCenterErrorEnum.MerchantCenterError,
    json_name: "merchantCenterError",
    enum: true,
    oneof: 0

  field :multiplier_error, 44,
    type: Google.Ads.Googleads.V22.Errors.MultiplierErrorEnum.MultiplierError,
    json_name: "multiplierError",
    enum: true,
    oneof: 0

  field :new_resource_creation_error, 45,
    type: Google.Ads.Googleads.V22.Errors.NewResourceCreationErrorEnum.NewResourceCreationError,
    json_name: "newResourceCreationError",
    enum: true,
    oneof: 0

  field :not_empty_error, 46,
    type: Google.Ads.Googleads.V22.Errors.NotEmptyErrorEnum.NotEmptyError,
    json_name: "notEmptyError",
    enum: true,
    oneof: 0

  field :null_error, 47,
    type: Google.Ads.Googleads.V22.Errors.NullErrorEnum.NullError,
    json_name: "nullError",
    enum: true,
    oneof: 0

  field :operator_error, 48,
    type: Google.Ads.Googleads.V22.Errors.OperatorErrorEnum.OperatorError,
    json_name: "operatorError",
    enum: true,
    oneof: 0

  field :range_error, 49,
    type: Google.Ads.Googleads.V22.Errors.RangeErrorEnum.RangeError,
    json_name: "rangeError",
    enum: true,
    oneof: 0

  field :recommendation_error, 58,
    type: Google.Ads.Googleads.V22.Errors.RecommendationErrorEnum.RecommendationError,
    json_name: "recommendationError",
    enum: true,
    oneof: 0

  field :recommendation_subscription_error, 180,
    type:
      Google.Ads.Googleads.V22.Errors.RecommendationSubscriptionErrorEnum.RecommendationSubscriptionError,
    json_name: "recommendationSubscriptionError",
    enum: true,
    oneof: 0

  field :region_code_error, 51,
    type: Google.Ads.Googleads.V22.Errors.RegionCodeErrorEnum.RegionCodeError,
    json_name: "regionCodeError",
    enum: true,
    oneof: 0

  field :setting_error, 52,
    type: Google.Ads.Googleads.V22.Errors.SettingErrorEnum.SettingError,
    json_name: "settingError",
    enum: true,
    oneof: 0

  field :string_format_error, 53,
    type: Google.Ads.Googleads.V22.Errors.StringFormatErrorEnum.StringFormatError,
    json_name: "stringFormatError",
    enum: true,
    oneof: 0

  field :string_length_error, 54,
    type: Google.Ads.Googleads.V22.Errors.StringLengthErrorEnum.StringLengthError,
    json_name: "stringLengthError",
    enum: true,
    oneof: 0

  field :operation_access_denied_error, 55,
    type:
      Google.Ads.Googleads.V22.Errors.OperationAccessDeniedErrorEnum.OperationAccessDeniedError,
    json_name: "operationAccessDeniedError",
    enum: true,
    oneof: 0

  field :resource_access_denied_error, 56,
    type: Google.Ads.Googleads.V22.Errors.ResourceAccessDeniedErrorEnum.ResourceAccessDeniedError,
    json_name: "resourceAccessDeniedError",
    enum: true,
    oneof: 0

  field :resource_count_limit_exceeded_error, 57,
    type:
      Google.Ads.Googleads.V22.Errors.ResourceCountLimitExceededErrorEnum.ResourceCountLimitExceededError,
    json_name: "resourceCountLimitExceededError",
    enum: true,
    oneof: 0

  field :youtube_video_registration_error, 117,
    type:
      Google.Ads.Googleads.V22.Errors.YoutubeVideoRegistrationErrorEnum.YoutubeVideoRegistrationError,
    json_name: "youtubeVideoRegistrationError",
    enum: true,
    oneof: 0

  field :ad_group_bid_modifier_error, 59,
    type: Google.Ads.Googleads.V22.Errors.AdGroupBidModifierErrorEnum.AdGroupBidModifierError,
    json_name: "adGroupBidModifierError",
    enum: true,
    oneof: 0

  field :context_error, 60,
    type: Google.Ads.Googleads.V22.Errors.ContextErrorEnum.ContextError,
    json_name: "contextError",
    enum: true,
    oneof: 0

  field :field_error, 61,
    type: Google.Ads.Googleads.V22.Errors.FieldErrorEnum.FieldError,
    json_name: "fieldError",
    enum: true,
    oneof: 0

  field :shared_set_error, 62,
    type: Google.Ads.Googleads.V22.Errors.SharedSetErrorEnum.SharedSetError,
    json_name: "sharedSetError",
    enum: true,
    oneof: 0

  field :shared_criterion_error, 63,
    type: Google.Ads.Googleads.V22.Errors.SharedCriterionErrorEnum.SharedCriterionError,
    json_name: "sharedCriterionError",
    enum: true,
    oneof: 0

  field :campaign_shared_set_error, 64,
    type: Google.Ads.Googleads.V22.Errors.CampaignSharedSetErrorEnum.CampaignSharedSetError,
    json_name: "campaignSharedSetError",
    enum: true,
    oneof: 0

  field :conversion_action_error, 65,
    type: Google.Ads.Googleads.V22.Errors.ConversionActionErrorEnum.ConversionActionError,
    json_name: "conversionActionError",
    enum: true,
    oneof: 0

  field :conversion_adjustment_upload_error, 115,
    type:
      Google.Ads.Googleads.V22.Errors.ConversionAdjustmentUploadErrorEnum.ConversionAdjustmentUploadError,
    json_name: "conversionAdjustmentUploadError",
    enum: true,
    oneof: 0

  field :conversion_custom_variable_error, 143,
    type:
      Google.Ads.Googleads.V22.Errors.ConversionCustomVariableErrorEnum.ConversionCustomVariableError,
    json_name: "conversionCustomVariableError",
    enum: true,
    oneof: 0

  field :conversion_upload_error, 111,
    type: Google.Ads.Googleads.V22.Errors.ConversionUploadErrorEnum.ConversionUploadError,
    json_name: "conversionUploadError",
    enum: true,
    oneof: 0

  field :conversion_value_rule_error, 145,
    type: Google.Ads.Googleads.V22.Errors.ConversionValueRuleErrorEnum.ConversionValueRuleError,
    json_name: "conversionValueRuleError",
    enum: true,
    oneof: 0

  field :conversion_value_rule_set_error, 146,
    type:
      Google.Ads.Googleads.V22.Errors.ConversionValueRuleSetErrorEnum.ConversionValueRuleSetError,
    json_name: "conversionValueRuleSetError",
    enum: true,
    oneof: 0

  field :header_error, 66,
    type: Google.Ads.Googleads.V22.Errors.HeaderErrorEnum.HeaderError,
    json_name: "headerError",
    enum: true,
    oneof: 0

  field :database_error, 67,
    type: Google.Ads.Googleads.V22.Errors.DatabaseErrorEnum.DatabaseError,
    json_name: "databaseError",
    enum: true,
    oneof: 0

  field :policy_finding_error, 68,
    type: Google.Ads.Googleads.V22.Errors.PolicyFindingErrorEnum.PolicyFindingError,
    json_name: "policyFindingError",
    enum: true,
    oneof: 0

  field :enum_error, 70,
    type: Google.Ads.Googleads.V22.Errors.EnumErrorEnum.EnumError,
    json_name: "enumError",
    enum: true,
    oneof: 0

  field :keyword_plan_error, 71,
    type: Google.Ads.Googleads.V22.Errors.KeywordPlanErrorEnum.KeywordPlanError,
    json_name: "keywordPlanError",
    enum: true,
    oneof: 0

  field :keyword_plan_campaign_error, 72,
    type: Google.Ads.Googleads.V22.Errors.KeywordPlanCampaignErrorEnum.KeywordPlanCampaignError,
    json_name: "keywordPlanCampaignError",
    enum: true,
    oneof: 0

  field :keyword_plan_campaign_keyword_error, 132,
    type:
      Google.Ads.Googleads.V22.Errors.KeywordPlanCampaignKeywordErrorEnum.KeywordPlanCampaignKeywordError,
    json_name: "keywordPlanCampaignKeywordError",
    enum: true,
    oneof: 0

  field :keyword_plan_ad_group_error, 74,
    type: Google.Ads.Googleads.V22.Errors.KeywordPlanAdGroupErrorEnum.KeywordPlanAdGroupError,
    json_name: "keywordPlanAdGroupError",
    enum: true,
    oneof: 0

  field :keyword_plan_ad_group_keyword_error, 133,
    type:
      Google.Ads.Googleads.V22.Errors.KeywordPlanAdGroupKeywordErrorEnum.KeywordPlanAdGroupKeywordError,
    json_name: "keywordPlanAdGroupKeywordError",
    enum: true,
    oneof: 0

  field :keyword_plan_idea_error, 76,
    type: Google.Ads.Googleads.V22.Errors.KeywordPlanIdeaErrorEnum.KeywordPlanIdeaError,
    json_name: "keywordPlanIdeaError",
    enum: true,
    oneof: 0

  field :account_budget_proposal_error, 77,
    type:
      Google.Ads.Googleads.V22.Errors.AccountBudgetProposalErrorEnum.AccountBudgetProposalError,
    json_name: "accountBudgetProposalError",
    enum: true,
    oneof: 0

  field :user_list_error, 78,
    type: Google.Ads.Googleads.V22.Errors.UserListErrorEnum.UserListError,
    json_name: "userListError",
    enum: true,
    oneof: 0

  field :change_event_error, 136,
    type: Google.Ads.Googleads.V22.Errors.ChangeEventErrorEnum.ChangeEventError,
    json_name: "changeEventError",
    enum: true,
    oneof: 0

  field :change_status_error, 79,
    type: Google.Ads.Googleads.V22.Errors.ChangeStatusErrorEnum.ChangeStatusError,
    json_name: "changeStatusError",
    enum: true,
    oneof: 0

  field :feed_error, 80,
    type: Google.Ads.Googleads.V22.Errors.FeedErrorEnum.FeedError,
    json_name: "feedError",
    enum: true,
    oneof: 0

  field :geo_target_constant_suggestion_error, 81,
    type:
      Google.Ads.Googleads.V22.Errors.GeoTargetConstantSuggestionErrorEnum.GeoTargetConstantSuggestionError,
    json_name: "geoTargetConstantSuggestionError",
    enum: true,
    oneof: 0

  field :campaign_draft_error, 82,
    type: Google.Ads.Googleads.V22.Errors.CampaignDraftErrorEnum.CampaignDraftError,
    json_name: "campaignDraftError",
    enum: true,
    oneof: 0

  field :feed_item_error, 83,
    type: Google.Ads.Googleads.V22.Errors.FeedItemErrorEnum.FeedItemError,
    json_name: "feedItemError",
    enum: true,
    oneof: 0

  field :label_error, 84,
    type: Google.Ads.Googleads.V22.Errors.LabelErrorEnum.LabelError,
    json_name: "labelError",
    enum: true,
    oneof: 0

  field :billing_setup_error, 87,
    type: Google.Ads.Googleads.V22.Errors.BillingSetupErrorEnum.BillingSetupError,
    json_name: "billingSetupError",
    enum: true,
    oneof: 0

  field :customer_client_link_error, 88,
    type: Google.Ads.Googleads.V22.Errors.CustomerClientLinkErrorEnum.CustomerClientLinkError,
    json_name: "customerClientLinkError",
    enum: true,
    oneof: 0

  field :customer_manager_link_error, 91,
    type: Google.Ads.Googleads.V22.Errors.CustomerManagerLinkErrorEnum.CustomerManagerLinkError,
    json_name: "customerManagerLinkError",
    enum: true,
    oneof: 0

  field :feed_mapping_error, 92,
    type: Google.Ads.Googleads.V22.Errors.FeedMappingErrorEnum.FeedMappingError,
    json_name: "feedMappingError",
    enum: true,
    oneof: 0

  field :customer_feed_error, 93,
    type: Google.Ads.Googleads.V22.Errors.CustomerFeedErrorEnum.CustomerFeedError,
    json_name: "customerFeedError",
    enum: true,
    oneof: 0

  field :ad_group_feed_error, 94,
    type: Google.Ads.Googleads.V22.Errors.AdGroupFeedErrorEnum.AdGroupFeedError,
    json_name: "adGroupFeedError",
    enum: true,
    oneof: 0

  field :campaign_feed_error, 96,
    type: Google.Ads.Googleads.V22.Errors.CampaignFeedErrorEnum.CampaignFeedError,
    json_name: "campaignFeedError",
    enum: true,
    oneof: 0

  field :custom_interest_error, 97,
    type: Google.Ads.Googleads.V22.Errors.CustomInterestErrorEnum.CustomInterestError,
    json_name: "customInterestError",
    enum: true,
    oneof: 0

  field :campaign_experiment_error, 98,
    type: Google.Ads.Googleads.V22.Errors.CampaignExperimentErrorEnum.CampaignExperimentError,
    json_name: "campaignExperimentError",
    enum: true,
    oneof: 0

  field :extension_feed_item_error, 100,
    type: Google.Ads.Googleads.V22.Errors.ExtensionFeedItemErrorEnum.ExtensionFeedItemError,
    json_name: "extensionFeedItemError",
    enum: true,
    oneof: 0

  field :ad_parameter_error, 101,
    type: Google.Ads.Googleads.V22.Errors.AdParameterErrorEnum.AdParameterError,
    json_name: "adParameterError",
    enum: true,
    oneof: 0

  field :feed_item_validation_error, 102,
    type: Google.Ads.Googleads.V22.Errors.FeedItemValidationErrorEnum.FeedItemValidationError,
    json_name: "feedItemValidationError",
    enum: true,
    oneof: 0

  field :extension_setting_error, 103,
    type: Google.Ads.Googleads.V22.Errors.ExtensionSettingErrorEnum.ExtensionSettingError,
    json_name: "extensionSettingError",
    enum: true,
    oneof: 0

  field :feed_item_set_error, 140,
    type: Google.Ads.Googleads.V22.Errors.FeedItemSetErrorEnum.FeedItemSetError,
    json_name: "feedItemSetError",
    enum: true,
    oneof: 0

  field :feed_item_set_link_error, 141,
    type: Google.Ads.Googleads.V22.Errors.FeedItemSetLinkErrorEnum.FeedItemSetLinkError,
    json_name: "feedItemSetLinkError",
    enum: true,
    oneof: 0

  field :feed_item_target_error, 104,
    type: Google.Ads.Googleads.V22.Errors.FeedItemTargetErrorEnum.FeedItemTargetError,
    json_name: "feedItemTargetError",
    enum: true,
    oneof: 0

  field :policy_violation_error, 105,
    type: Google.Ads.Googleads.V22.Errors.PolicyViolationErrorEnum.PolicyViolationError,
    json_name: "policyViolationError",
    enum: true,
    oneof: 0

  field :partial_failure_error, 112,
    type: Google.Ads.Googleads.V22.Errors.PartialFailureErrorEnum.PartialFailureError,
    json_name: "partialFailureError",
    enum: true,
    oneof: 0

  field :click_view_error, 113,
    type: Google.Ads.Googleads.V22.Errors.ClickViewErrorEnum.ClickViewError,
    json_name: "clickViewError",
    enum: true,
    oneof: 0

  field :policy_validation_parameter_error, 114,
    type:
      Google.Ads.Googleads.V22.Errors.PolicyValidationParameterErrorEnum.PolicyValidationParameterError,
    json_name: "policyValidationParameterError",
    enum: true,
    oneof: 0

  field :size_limit_error, 118,
    type: Google.Ads.Googleads.V22.Errors.SizeLimitErrorEnum.SizeLimitError,
    json_name: "sizeLimitError",
    enum: true,
    oneof: 0

  field :offline_user_data_job_error, 119,
    type: Google.Ads.Googleads.V22.Errors.OfflineUserDataJobErrorEnum.OfflineUserDataJobError,
    json_name: "offlineUserDataJobError",
    enum: true,
    oneof: 0

  field :not_allowlisted_error, 137,
    type: Google.Ads.Googleads.V22.Errors.NotAllowlistedErrorEnum.NotAllowlistedError,
    json_name: "notAllowlistedError",
    enum: true,
    oneof: 0

  field :manager_link_error, 121,
    type: Google.Ads.Googleads.V22.Errors.ManagerLinkErrorEnum.ManagerLinkError,
    json_name: "managerLinkError",
    enum: true,
    oneof: 0

  field :currency_code_error, 122,
    type: Google.Ads.Googleads.V22.Errors.CurrencyCodeErrorEnum.CurrencyCodeError,
    json_name: "currencyCodeError",
    enum: true,
    oneof: 0

  field :experiment_error, 123,
    type: Google.Ads.Googleads.V22.Errors.ExperimentErrorEnum.ExperimentError,
    json_name: "experimentError",
    enum: true,
    oneof: 0

  field :access_invitation_error, 124,
    type: Google.Ads.Googleads.V22.Errors.AccessInvitationErrorEnum.AccessInvitationError,
    json_name: "accessInvitationError",
    enum: true,
    oneof: 0

  field :reach_plan_error, 125,
    type: Google.Ads.Googleads.V22.Errors.ReachPlanErrorEnum.ReachPlanError,
    json_name: "reachPlanError",
    enum: true,
    oneof: 0

  field :invoice_error, 126,
    type: Google.Ads.Googleads.V22.Errors.InvoiceErrorEnum.InvoiceError,
    json_name: "invoiceError",
    enum: true,
    oneof: 0

  field :payments_account_error, 127,
    type: Google.Ads.Googleads.V22.Errors.PaymentsAccountErrorEnum.PaymentsAccountError,
    json_name: "paymentsAccountError",
    enum: true,
    oneof: 0

  field :time_zone_error, 128,
    type: Google.Ads.Googleads.V22.Errors.TimeZoneErrorEnum.TimeZoneError,
    json_name: "timeZoneError",
    enum: true,
    oneof: 0

  field :asset_link_error, 129,
    type: Google.Ads.Googleads.V22.Errors.AssetLinkErrorEnum.AssetLinkError,
    json_name: "assetLinkError",
    enum: true,
    oneof: 0

  field :user_data_error, 130,
    type: Google.Ads.Googleads.V22.Errors.UserDataErrorEnum.UserDataError,
    json_name: "userDataError",
    enum: true,
    oneof: 0

  field :batch_job_error, 131,
    type: Google.Ads.Googleads.V22.Errors.BatchJobErrorEnum.BatchJobError,
    json_name: "batchJobError",
    enum: true,
    oneof: 0

  field :account_link_error, 134,
    type: Google.Ads.Googleads.V22.Errors.AccountLinkErrorEnum.AccountLinkError,
    json_name: "accountLinkError",
    enum: true,
    oneof: 0

  field :third_party_app_analytics_link_error, 135,
    type:
      Google.Ads.Googleads.V22.Errors.ThirdPartyAppAnalyticsLinkErrorEnum.ThirdPartyAppAnalyticsLinkError,
    json_name: "thirdPartyAppAnalyticsLinkError",
    enum: true,
    oneof: 0

  field :customer_user_access_error, 138,
    type: Google.Ads.Googleads.V22.Errors.CustomerUserAccessErrorEnum.CustomerUserAccessError,
    json_name: "customerUserAccessError",
    enum: true,
    oneof: 0

  field :custom_audience_error, 139,
    type: Google.Ads.Googleads.V22.Errors.CustomAudienceErrorEnum.CustomAudienceError,
    json_name: "customAudienceError",
    enum: true,
    oneof: 0

  field :audience_error, 164,
    type: Google.Ads.Googleads.V22.Errors.AudienceErrorEnum.AudienceError,
    json_name: "audienceError",
    enum: true,
    oneof: 0

  field :search_term_insight_error, 174,
    type: Google.Ads.Googleads.V22.Errors.SearchTermInsightErrorEnum.SearchTermInsightError,
    json_name: "searchTermInsightError",
    enum: true,
    oneof: 0

  field :smart_campaign_error, 147,
    type: Google.Ads.Googleads.V22.Errors.SmartCampaignErrorEnum.SmartCampaignError,
    json_name: "smartCampaignError",
    enum: true,
    oneof: 0

  field :experiment_arm_error, 156,
    type: Google.Ads.Googleads.V22.Errors.ExperimentArmErrorEnum.ExperimentArmError,
    json_name: "experimentArmError",
    enum: true,
    oneof: 0

  field :audience_insights_error, 167,
    type: Google.Ads.Googleads.V22.Errors.AudienceInsightsErrorEnum.AudienceInsightsError,
    json_name: "audienceInsightsError",
    enum: true,
    oneof: 0

  field :product_link_error, 169,
    type: Google.Ads.Googleads.V22.Errors.ProductLinkErrorEnum.ProductLinkError,
    json_name: "productLinkError",
    enum: true,
    oneof: 0

  field :data_link_error, 187,
    type: Google.Ads.Googleads.V22.Errors.DataLinkErrorEnum.DataLinkError,
    json_name: "dataLinkError",
    enum: true,
    oneof: 0

  field :customer_sk_ad_network_conversion_value_schema_error, 170,
    type:
      Google.Ads.Googleads.V22.Errors.CustomerSkAdNetworkConversionValueSchemaErrorEnum.CustomerSkAdNetworkConversionValueSchemaError,
    json_name: "customerSkAdNetworkConversionValueSchemaError",
    enum: true,
    oneof: 0

  field :currency_error, 171,
    type: Google.Ads.Googleads.V22.Errors.CurrencyErrorEnum.CurrencyError,
    json_name: "currencyError",
    enum: true,
    oneof: 0

  field :asset_group_signal_error, 176,
    type: Google.Ads.Googleads.V22.Errors.AssetGroupSignalErrorEnum.AssetGroupSignalError,
    json_name: "assetGroupSignalError",
    enum: true,
    oneof: 0

  field :product_link_invitation_error, 177,
    type:
      Google.Ads.Googleads.V22.Errors.ProductLinkInvitationErrorEnum.ProductLinkInvitationError,
    json_name: "productLinkInvitationError",
    enum: true,
    oneof: 0

  field :customer_lifecycle_goal_error, 178,
    type:
      Google.Ads.Googleads.V22.Errors.CustomerLifecycleGoalErrorEnum.CustomerLifecycleGoalError,
    json_name: "customerLifecycleGoalError",
    enum: true,
    oneof: 0

  field :campaign_lifecycle_goal_error, 179,
    type:
      Google.Ads.Googleads.V22.Errors.CampaignLifecycleGoalErrorEnum.CampaignLifecycleGoalError,
    json_name: "campaignLifecycleGoalError",
    enum: true,
    oneof: 0

  field :identity_verification_error, 181,
    type: Google.Ads.Googleads.V22.Errors.IdentityVerificationErrorEnum.IdentityVerificationError,
    json_name: "identityVerificationError",
    enum: true,
    oneof: 0

  field :user_list_customer_type_error, 183,
    type: Google.Ads.Googleads.V22.Errors.UserListCustomerTypeErrorEnum.UserListCustomerTypeError,
    json_name: "userListCustomerTypeError",
    enum: true,
    oneof: 0

  field :shopping_product_error, 184,
    type: Google.Ads.Googleads.V22.Errors.ShoppingProductErrorEnum.ShoppingProductError,
    json_name: "shoppingProductError",
    enum: true,
    oneof: 0

  field :automatically_created_asset_removal_error, 185,
    type:
      Google.Ads.Googleads.V22.Errors.AutomaticallyCreatedAssetRemovalErrorEnum.AutomaticallyCreatedAssetRemovalError,
    json_name: "automaticallyCreatedAssetRemovalError",
    enum: true,
    oneof: 0

  field :shareable_preview_error, 186,
    type: Google.Ads.Googleads.V22.Errors.ShareablePreviewErrorEnum.ShareablePreviewError,
    json_name: "shareablePreviewError",
    enum: true,
    oneof: 0

  field :campaign_goal_config_error, 188,
    type: Google.Ads.Googleads.V22.Errors.CampaignGoalConfigErrorEnum.CampaignGoalConfigError,
    json_name: "campaignGoalConfigError",
    enum: true,
    oneof: 0

  field :goal_error, 189,
    type: Google.Ads.Googleads.V22.Errors.GoalErrorEnum.GoalError,
    json_name: "goalError",
    enum: true,
    oneof: 0

  field :brand_guidelines_migration_error, 191,
    type:
      Google.Ads.Googleads.V22.Errors.BrandGuidelinesMigrationErrorEnum.BrandGuidelinesMigrationError,
    json_name: "brandGuidelinesMigrationError",
    enum: true,
    oneof: 0

  field :asset_generation_error, 194,
    type: Google.Ads.Googleads.V22.Errors.AssetGenerationErrorEnum.AssetGenerationError,
    json_name: "assetGenerationError",
    enum: true,
    oneof: 0
end

defmodule Google.Ads.Googleads.V22.Errors.ErrorLocation.FieldPathElement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :field_name, 1, type: :string, json_name: "fieldName"
  field :index, 3, proto3_optional: true, type: :int32
end

defmodule Google.Ads.Googleads.V22.Errors.ErrorLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :field_path_elements, 2,
    repeated: true,
    type: Google.Ads.Googleads.V22.Errors.ErrorLocation.FieldPathElement,
    json_name: "fieldPathElements"
end

defmodule Google.Ads.Googleads.V22.Errors.ErrorDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :unpublished_error_code, 1, type: :string, json_name: "unpublishedErrorCode"

  field :policy_violation_details, 2,
    type: Google.Ads.Googleads.V22.Errors.PolicyViolationDetails,
    json_name: "policyViolationDetails"

  field :policy_finding_details, 3,
    type: Google.Ads.Googleads.V22.Errors.PolicyFindingDetails,
    json_name: "policyFindingDetails"

  field :quota_error_details, 4,
    type: Google.Ads.Googleads.V22.Errors.QuotaErrorDetails,
    json_name: "quotaErrorDetails"

  field :resource_count_details, 5,
    type: Google.Ads.Googleads.V22.Errors.ResourceCountDetails,
    json_name: "resourceCountDetails"

  field :budget_per_day_minimum_error_details, 6,
    type: Google.Ads.Googleads.V22.Errors.BudgetPerDayMinimumErrorDetails,
    json_name: "budgetPerDayMinimumErrorDetails"
end

defmodule Google.Ads.Googleads.V22.Errors.PolicyViolationDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :external_policy_description, 2, type: :string, json_name: "externalPolicyDescription"
  field :key, 4, type: Google.Ads.Googleads.V22.Common.PolicyViolationKey
  field :external_policy_name, 5, type: :string, json_name: "externalPolicyName"
  field :is_exemptible, 6, type: :bool, json_name: "isExemptible"
end

defmodule Google.Ads.Googleads.V22.Errors.PolicyFindingDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V22.Common.PolicyTopicEntry,
    json_name: "policyTopicEntries"
end

defmodule Google.Ads.Googleads.V22.Errors.QuotaErrorDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rate_scope, 1,
    type: Google.Ads.Googleads.V22.Errors.QuotaErrorDetails.QuotaRateScope,
    json_name: "rateScope",
    enum: true

  field :rate_name, 2, type: :string, json_name: "rateName"
  field :retry_delay, 3, type: Google.Protobuf.Duration, json_name: "retryDelay"
end

defmodule Google.Ads.Googleads.V22.Errors.ResourceCountDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enclosing_id, 1, type: :string, json_name: "enclosingId"
  field :enclosing_resource, 5, type: :string, json_name: "enclosingResource"
  field :limit, 2, type: :int32

  field :limit_type, 3,
    type: Google.Ads.Googleads.V22.Enums.ResourceLimitTypeEnum.ResourceLimitType,
    json_name: "limitType",
    enum: true

  field :existing_count, 4, type: :int32, json_name: "existingCount"
end

defmodule Google.Ads.Googleads.V22.Errors.BudgetPerDayMinimumErrorDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :currency_code, 1, type: :string, json_name: "currencyCode"
  field :budget_per_day_minimum_micros, 2, type: :int64, json_name: "budgetPerDayMinimumMicros"
  field :minimum_budget_amount_micros, 3, type: :int64, json_name: "minimumBudgetAmountMicros"

  field :minimum_budget_total_amount_micros, 4,
    type: :int64,
    json_name: "minimumBudgetTotalAmountMicros"

  field :failed_budget_amount_micros, 5, type: :int64, json_name: "failedBudgetAmountMicros"

  field :failed_budget_total_amount_micros, 6,
    type: :int64,
    json_name: "failedBudgetTotalAmountMicros"
end
