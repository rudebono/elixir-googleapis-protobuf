defmodule Google.Ads.Googleads.V17.Enums.ResourceLimitTypeEnum.ResourceLimitType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CAMPAIGNS_PER_CUSTOMER, 2
  field :BASE_CAMPAIGNS_PER_CUSTOMER, 3
  field :EXPERIMENT_CAMPAIGNS_PER_CUSTOMER, 105
  field :HOTEL_CAMPAIGNS_PER_CUSTOMER, 4
  field :SMART_SHOPPING_CAMPAIGNS_PER_CUSTOMER, 5
  field :AD_GROUPS_PER_CAMPAIGN, 6
  field :AD_GROUPS_PER_SHOPPING_CAMPAIGN, 8
  field :AD_GROUPS_PER_HOTEL_CAMPAIGN, 9
  field :REPORTING_AD_GROUPS_PER_LOCAL_CAMPAIGN, 10
  field :REPORTING_AD_GROUPS_PER_APP_CAMPAIGN, 11
  field :MANAGED_AD_GROUPS_PER_SMART_CAMPAIGN, 52
  field :AD_GROUP_CRITERIA_PER_CUSTOMER, 12
  field :BASE_AD_GROUP_CRITERIA_PER_CUSTOMER, 13
  field :EXPERIMENT_AD_GROUP_CRITERIA_PER_CUSTOMER, 107
  field :AD_GROUP_CRITERIA_PER_CAMPAIGN, 14
  field :CAMPAIGN_CRITERIA_PER_CUSTOMER, 15
  field :BASE_CAMPAIGN_CRITERIA_PER_CUSTOMER, 16
  field :EXPERIMENT_CAMPAIGN_CRITERIA_PER_CUSTOMER, 108
  field :WEBPAGE_CRITERIA_PER_CUSTOMER, 17
  field :BASE_WEBPAGE_CRITERIA_PER_CUSTOMER, 18
  field :EXPERIMENT_WEBPAGE_CRITERIA_PER_CUSTOMER, 19
  field :COMBINED_AUDIENCE_CRITERIA_PER_AD_GROUP, 20
  field :CUSTOMER_NEGATIVE_PLACEMENT_CRITERIA_PER_CUSTOMER, 21
  field :CUSTOMER_NEGATIVE_YOUTUBE_CHANNEL_CRITERIA_PER_CUSTOMER, 22
  field :CRITERIA_PER_AD_GROUP, 23
  field :LISTING_GROUPS_PER_AD_GROUP, 24
  field :EXPLICITLY_SHARED_BUDGETS_PER_CUSTOMER, 25
  field :IMPLICITLY_SHARED_BUDGETS_PER_CUSTOMER, 26
  field :COMBINED_AUDIENCE_CRITERIA_PER_CAMPAIGN, 27
  field :NEGATIVE_KEYWORDS_PER_CAMPAIGN, 28
  field :NEGATIVE_PLACEMENTS_PER_CAMPAIGN, 29
  field :GEO_TARGETS_PER_CAMPAIGN, 30
  field :NEGATIVE_IP_BLOCKS_PER_CAMPAIGN, 32
  field :PROXIMITIES_PER_CAMPAIGN, 33
  field :LISTING_SCOPES_PER_SHOPPING_CAMPAIGN, 34
  field :LISTING_SCOPES_PER_NON_SHOPPING_CAMPAIGN, 35
  field :NEGATIVE_KEYWORDS_PER_SHARED_SET, 36
  field :NEGATIVE_PLACEMENTS_PER_SHARED_SET, 37
  field :SHARED_SETS_PER_CUSTOMER_FOR_TYPE_DEFAULT, 40
  field :SHARED_SETS_PER_CUSTOMER_FOR_NEGATIVE_PLACEMENT_LIST_LOWER, 41
  field :HOTEL_ADVANCE_BOOKING_WINDOW_BID_MODIFIERS_PER_AD_GROUP, 44
  field :BIDDING_STRATEGIES_PER_CUSTOMER, 45
  field :BASIC_USER_LISTS_PER_CUSTOMER, 47
  field :LOGICAL_USER_LISTS_PER_CUSTOMER, 48
  field :RULE_BASED_USER_LISTS_PER_CUSTOMER, 153
  field :BASE_AD_GROUP_ADS_PER_CUSTOMER, 53
  field :EXPERIMENT_AD_GROUP_ADS_PER_CUSTOMER, 54
  field :AD_GROUP_ADS_PER_CAMPAIGN, 55
  field :TEXT_AND_OTHER_ADS_PER_AD_GROUP, 56
  field :IMAGE_ADS_PER_AD_GROUP, 57
  field :SHOPPING_SMART_ADS_PER_AD_GROUP, 58
  field :RESPONSIVE_SEARCH_ADS_PER_AD_GROUP, 59
  field :APP_ADS_PER_AD_GROUP, 60
  field :APP_ENGAGEMENT_ADS_PER_AD_GROUP, 61
  field :LOCAL_ADS_PER_AD_GROUP, 62
  field :VIDEO_ADS_PER_AD_GROUP, 63
  field :LEAD_FORM_CAMPAIGN_ASSETS_PER_CAMPAIGN, 143
  field :PROMOTION_CUSTOMER_ASSETS_PER_CUSTOMER, 79
  field :PROMOTION_CAMPAIGN_ASSETS_PER_CAMPAIGN, 80
  field :PROMOTION_AD_GROUP_ASSETS_PER_AD_GROUP, 81
  field :CALLOUT_CUSTOMER_ASSETS_PER_CUSTOMER, 134
  field :CALLOUT_CAMPAIGN_ASSETS_PER_CAMPAIGN, 135
  field :CALLOUT_AD_GROUP_ASSETS_PER_AD_GROUP, 136
  field :SITELINK_CUSTOMER_ASSETS_PER_CUSTOMER, 137
  field :SITELINK_CAMPAIGN_ASSETS_PER_CAMPAIGN, 138
  field :SITELINK_AD_GROUP_ASSETS_PER_AD_GROUP, 139
  field :STRUCTURED_SNIPPET_CUSTOMER_ASSETS_PER_CUSTOMER, 140
  field :STRUCTURED_SNIPPET_CAMPAIGN_ASSETS_PER_CAMPAIGN, 141
  field :STRUCTURED_SNIPPET_AD_GROUP_ASSETS_PER_AD_GROUP, 142
  field :MOBILE_APP_CUSTOMER_ASSETS_PER_CUSTOMER, 144
  field :MOBILE_APP_CAMPAIGN_ASSETS_PER_CAMPAIGN, 145
  field :MOBILE_APP_AD_GROUP_ASSETS_PER_AD_GROUP, 146
  field :HOTEL_CALLOUT_CUSTOMER_ASSETS_PER_CUSTOMER, 147
  field :HOTEL_CALLOUT_CAMPAIGN_ASSETS_PER_CAMPAIGN, 148
  field :HOTEL_CALLOUT_AD_GROUP_ASSETS_PER_AD_GROUP, 149
  field :CALL_CUSTOMER_ASSETS_PER_CUSTOMER, 150
  field :CALL_CAMPAIGN_ASSETS_PER_CAMPAIGN, 151
  field :CALL_AD_GROUP_ASSETS_PER_AD_GROUP, 152
  field :PRICE_CUSTOMER_ASSETS_PER_CUSTOMER, 154
  field :PRICE_CAMPAIGN_ASSETS_PER_CAMPAIGN, 155
  field :PRICE_AD_GROUP_ASSETS_PER_AD_GROUP, 156
  field :AD_IMAGE_CAMPAIGN_ASSETS_PER_CAMPAIGN, 175
  field :AD_IMAGE_AD_GROUP_ASSETS_PER_AD_GROUP, 176
  field :PAGE_FEED_ASSET_SETS_PER_CUSTOMER, 157
  field :DYNAMIC_EDUCATION_FEED_ASSET_SETS_PER_CUSTOMER, 158
  field :ASSETS_PER_PAGE_FEED_ASSET_SET, 159
  field :ASSETS_PER_DYNAMIC_EDUCATION_FEED_ASSET_SET, 160
  field :DYNAMIC_REAL_ESTATE_ASSET_SETS_PER_CUSTOMER, 161
  field :ASSETS_PER_DYNAMIC_REAL_ESTATE_ASSET_SET, 162
  field :DYNAMIC_CUSTOM_ASSET_SETS_PER_CUSTOMER, 163
  field :ASSETS_PER_DYNAMIC_CUSTOM_ASSET_SET, 164
  field :DYNAMIC_HOTELS_AND_RENTALS_ASSET_SETS_PER_CUSTOMER, 165
  field :ASSETS_PER_DYNAMIC_HOTELS_AND_RENTALS_ASSET_SET, 166
  field :DYNAMIC_LOCAL_ASSET_SETS_PER_CUSTOMER, 167
  field :ASSETS_PER_DYNAMIC_LOCAL_ASSET_SET, 168
  field :DYNAMIC_FLIGHTS_ASSET_SETS_PER_CUSTOMER, 169
  field :ASSETS_PER_DYNAMIC_FLIGHTS_ASSET_SET, 170
  field :DYNAMIC_TRAVEL_ASSET_SETS_PER_CUSTOMER, 171
  field :ASSETS_PER_DYNAMIC_TRAVEL_ASSET_SET, 172
  field :DYNAMIC_JOBS_ASSET_SETS_PER_CUSTOMER, 173
  field :ASSETS_PER_DYNAMIC_JOBS_ASSET_SET, 174
  field :BUSINESS_NAME_CAMPAIGN_ASSETS_PER_CAMPAIGN, 179
  field :BUSINESS_LOGO_CAMPAIGN_ASSETS_PER_CAMPAIGN, 180
  field :VERSIONS_PER_AD, 82
  field :USER_FEEDS_PER_CUSTOMER, 90
  field :SYSTEM_FEEDS_PER_CUSTOMER, 91
  field :FEED_ATTRIBUTES_PER_FEED, 92
  field :FEED_ITEMS_PER_CUSTOMER, 94
  field :CAMPAIGN_FEEDS_PER_CUSTOMER, 95
  field :BASE_CAMPAIGN_FEEDS_PER_CUSTOMER, 96
  field :EXPERIMENT_CAMPAIGN_FEEDS_PER_CUSTOMER, 109
  field :AD_GROUP_FEEDS_PER_CUSTOMER, 97
  field :BASE_AD_GROUP_FEEDS_PER_CUSTOMER, 98
  field :EXPERIMENT_AD_GROUP_FEEDS_PER_CUSTOMER, 110
  field :AD_GROUP_FEEDS_PER_CAMPAIGN, 99
  field :FEED_ITEM_SETS_PER_CUSTOMER, 100
  field :FEED_ITEMS_PER_FEED_ITEM_SET, 101
  field :CAMPAIGN_EXPERIMENTS_PER_CUSTOMER, 112
  field :EXPERIMENT_ARMS_PER_VIDEO_EXPERIMENT, 113
  field :OWNED_LABELS_PER_CUSTOMER, 115
  field :LABELS_PER_CAMPAIGN, 117
  field :LABELS_PER_AD_GROUP, 118
  field :LABELS_PER_AD_GROUP_AD, 119
  field :LABELS_PER_AD_GROUP_CRITERION, 120
  field :TARGET_CUSTOMERS_PER_LABEL, 121
  field :KEYWORD_PLANS_PER_USER_PER_CUSTOMER, 122
  field :KEYWORD_PLAN_AD_GROUP_KEYWORDS_PER_KEYWORD_PLAN, 123
  field :KEYWORD_PLAN_AD_GROUPS_PER_KEYWORD_PLAN, 124
  field :KEYWORD_PLAN_NEGATIVE_KEYWORDS_PER_KEYWORD_PLAN, 125
  field :KEYWORD_PLAN_CAMPAIGNS_PER_KEYWORD_PLAN, 126
  field :CONVERSION_ACTIONS_PER_CUSTOMER, 128
  field :BATCH_JOB_OPERATIONS_PER_JOB, 130
  field :BATCH_JOBS_PER_CUSTOMER, 131
  field :HOTEL_CHECK_IN_DATE_RANGE_BID_MODIFIERS_PER_AD_GROUP, 132
  field :SHARED_SETS_PER_ACCOUNT_FOR_ACCOUNT_LEVEL_NEGATIVE_KEYWORDS, 177
  field :ACCOUNT_LEVEL_NEGATIVE_KEYWORDS_PER_SHARED_SET, 178
  field :ENABLED_ASSET_PER_HOTEL_PROPERTY_ASSET_SET, 181
  field :ENABLED_HOTEL_PROPERTY_ASSET_LINKS_PER_ASSET_GROUP, 182
  field :BRANDS_PER_SHARED_SET, 183
  field :ENABLED_BRAND_LIST_CRITERIA_PER_CAMPAIGN, 184
  field :SHARED_SETS_PER_ACCOUNT_FOR_BRAND, 185
  field :LOOKALIKE_USER_LISTS_PER_CUSTOMER, 186
end

defmodule Google.Ads.Googleads.V17.Enums.ResourceLimitTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end
