defmodule Google.Ads.Googleads.V20.Errors.CampaignErrorEnum.CampaignError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CANNOT_TARGET_CONTENT_NETWORK, 3
  field :CANNOT_TARGET_SEARCH_NETWORK, 4
  field :CANNOT_TARGET_SEARCH_NETWORK_WITHOUT_GOOGLE_SEARCH, 5
  field :CANNOT_TARGET_GOOGLE_SEARCH_FOR_CPM_CAMPAIGN, 6
  field :CAMPAIGN_MUST_TARGET_AT_LEAST_ONE_NETWORK, 7
  field :CANNOT_TARGET_PARTNER_SEARCH_NETWORK, 8
  field :CANNOT_TARGET_CONTENT_NETWORK_ONLY_WITH_CRITERIA_LEVEL_BIDDING_STRATEGY, 9
  field :CAMPAIGN_DURATION_MUST_CONTAIN_ALL_RUNNABLE_TRIALS, 10
  field :CANNOT_MODIFY_FOR_TRIAL_CAMPAIGN, 11
  field :DUPLICATE_CAMPAIGN_NAME, 12
  field :INCOMPATIBLE_CAMPAIGN_FIELD, 13
  field :INVALID_CAMPAIGN_NAME, 14
  field :INVALID_AD_SERVING_OPTIMIZATION_STATUS, 15
  field :INVALID_TRACKING_URL, 16
  field :CANNOT_SET_BOTH_TRACKING_URL_TEMPLATE_AND_TRACKING_SETTING, 17
  field :MAX_IMPRESSIONS_NOT_IN_RANGE, 18
  field :TIME_UNIT_NOT_SUPPORTED, 19
  field :INVALID_OPERATION_IF_SERVING_STATUS_HAS_ENDED, 20
  field :BUDGET_CANNOT_BE_SHARED, 21
  field :CAMPAIGN_CANNOT_USE_SHARED_BUDGET, 22
  field :CANNOT_CHANGE_BUDGET_ON_CAMPAIGN_WITH_TRIALS, 23
  field :CAMPAIGN_LABEL_DOES_NOT_EXIST, 24
  field :CAMPAIGN_LABEL_ALREADY_EXISTS, 25
  field :MISSING_SHOPPING_SETTING, 26
  field :INVALID_SHOPPING_SALES_COUNTRY, 27
  field :ADVERTISING_CHANNEL_TYPE_NOT_AVAILABLE_FOR_ACCOUNT_TYPE, 31
  field :INVALID_ADVERTISING_CHANNEL_SUB_TYPE, 32
  field :AT_LEAST_ONE_CONVERSION_MUST_BE_SELECTED, 33
  field :CANNOT_SET_AD_ROTATION_MODE, 34
  field :CANNOT_MODIFY_START_DATE_IF_ALREADY_STARTED, 35
  field :CANNOT_SET_DATE_TO_PAST, 36
  field :MISSING_HOTEL_CUSTOMER_LINK, 37
  field :INVALID_HOTEL_CUSTOMER_LINK, 38
  field :MISSING_HOTEL_SETTING, 39
  field :CANNOT_USE_SHARED_CAMPAIGN_BUDGET_WHILE_PART_OF_CAMPAIGN_GROUP, 40
  field :APP_NOT_FOUND, 41
  field :SHOPPING_ENABLE_LOCAL_NOT_SUPPORTED_FOR_CAMPAIGN_TYPE, 42
  field :MERCHANT_NOT_ALLOWED_FOR_COMPARISON_LISTING_ADS, 43
  field :INSUFFICIENT_APP_INSTALLS_COUNT, 44
  field :SENSITIVE_CATEGORY_APP, 45
  field :HEC_AGREEMENT_REQUIRED, 46
  field :NOT_COMPATIBLE_WITH_VIEW_THROUGH_CONVERSION_OPTIMIZATION, 49
  field :INVALID_EXCLUDED_PARENT_ASSET_FIELD_TYPE, 48
  field :CANNOT_CREATE_APP_PRE_REGISTRATION_FOR_NON_ANDROID_APP, 50
  field :APP_NOT_AVAILABLE_TO_CREATE_APP_PRE_REGISTRATION_CAMPAIGN, 51
  field :INCOMPATIBLE_BUDGET_TYPE, 52
  field :LOCAL_SERVICES_DUPLICATE_CATEGORY_BID, 53
  field :LOCAL_SERVICES_INVALID_CATEGORY_BID, 54
  field :LOCAL_SERVICES_MISSING_CATEGORY_BID, 55
  field :INVALID_STATUS_CHANGE, 57
  field :MISSING_TRAVEL_CUSTOMER_LINK, 58
  field :INVALID_TRAVEL_CUSTOMER_LINK, 59
  field :INVALID_EXCLUDED_PARENT_ASSET_SET_TYPE, 62
  field :ASSET_SET_NOT_A_HOTEL_PROPERTY_ASSET_SET, 63
  field :HOTEL_PROPERTY_ASSET_SET_ONLY_FOR_PERFORMANCE_MAX_FOR_TRAVEL_GOALS, 64
  field :AVERAGE_DAILY_SPEND_TOO_HIGH, 65
  field :CANNOT_ATTACH_TO_REMOVED_CAMPAIGN_GROUP, 66
  field :CANNOT_ATTACH_TO_BIDDING_STRATEGY, 67
  field :CANNOT_CHANGE_BUDGET_PERIOD, 68
  field :NOT_ENOUGH_CONVERSIONS, 71
  field :CANNOT_SET_MORE_THAN_ONE_CONVERSION_ACTION, 72
  field :NOT_COMPATIBLE_WITH_BUDGET_TYPE, 73
  field :NOT_COMPATIBLE_WITH_UPLOAD_CLICKS_CONVERSION, 74
  field :APP_ID_MUST_MATCH_CONVERSION_ACTION_APP_ID, 76
  field :CONVERSION_ACTION_WITH_DOWNLOAD_CATEGORY_NOT_ALLOWED, 77
  field :CONVERSION_ACTION_WITH_DOWNLOAD_CATEGORY_REQUIRED, 78
  field :CONVERSION_TRACKING_NOT_ENABLED, 79
  field :NOT_COMPATIBLE_WITH_BIDDING_STRATEGY_TYPE, 80
  field :NOT_COMPATIBLE_WITH_GOOGLE_ATTRIBUTION_CONVERSIONS, 81
  field :CONVERSION_LAG_TOO_HIGH, 82
  field :NOT_LINKED_ADVERTISING_PARTNER, 83
  field :INVALID_NUMBER_OF_ADVERTISING_PARTNER_IDS, 84
  field :CANNOT_TARGET_DISPLAY_NETWORK_WITHOUT_YOUTUBE, 85
  field :CANNOT_LINK_TO_COMPARISON_SHOPPING_SERVICE_ACCOUNT, 86
  field :CANNOT_TARGET_NETWORK_FOR_COMPARISON_SHOPPING_SERVICE_LINKED_ACCOUNTS, 87
  field :CANNOT_MODIFY_TEXT_ASSET_AUTOMATION_WITH_ENABLED_TRIAL, 88
  field :DYNAMIC_TEXT_ASSET_CANNOT_OPT_OUT_WITH_FINAL_URL_EXPANSION_OPT_IN, 89
  field :CANNOT_SET_CAMPAIGN_KEYWORD_MATCH_TYPE, 90
  field :CANNOT_DISABLE_BROAD_MATCH_WHEN_KEYWORD_CONVERSION_IN_PROCESS, 91
  field :CANNOT_DISABLE_BROAD_MATCH_WHEN_TARGETING_BRANDS, 92
  field :CANNOT_ENABLE_BROAD_MATCH_FOR_BASE_CAMPAIGN_WITH_PROMOTING_TRIAL, 93
  field :CANNOT_ENABLE_BROAD_MATCH_FOR_PROMOTING_TRIAL_CAMPAIGN, 94
  field :REQUIRED_BUSINESS_NAME_ASSET_NOT_LINKED, 95
  field :REQUIRED_LOGO_ASSET_NOT_LINKED, 96
  field :BRAND_TARGETING_OVERRIDES_NOT_SUPPORTED, 97
  field :BRAND_GUIDELINES_NOT_ENABLED_FOR_CAMPAIGN, 98
  field :BRAND_GUIDELINES_MAIN_AND_ACCENT_COLORS_REQUIRED, 99
  field :BRAND_GUIDELINES_COLOR_INVALID_FORMAT, 100
  field :BRAND_GUIDELINES_UNSUPPORTED_FONT_FAMILY, 101
  field :BRAND_GUIDELINES_UNSUPPORTED_CHANNEL, 102
  field :CANNOT_ENABLE_BRAND_GUIDELINES_FOR_TRAVEL_GOALS, 103
  field :CUSTOMER_NOT_ALLOWLISTED_FOR_BRAND_GUIDELINES, 104
end

defmodule Google.Ads.Googleads.V20.Errors.CampaignErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
