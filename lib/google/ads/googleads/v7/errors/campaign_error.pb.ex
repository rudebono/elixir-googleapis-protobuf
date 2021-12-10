defmodule Google.Ads.Googleads.V7.Errors.CampaignErrorEnum.CampaignError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CANNOT_TARGET_CONTENT_NETWORK
          | :CANNOT_TARGET_SEARCH_NETWORK
          | :CANNOT_TARGET_SEARCH_NETWORK_WITHOUT_GOOGLE_SEARCH
          | :CANNOT_TARGET_GOOGLE_SEARCH_FOR_CPM_CAMPAIGN
          | :CAMPAIGN_MUST_TARGET_AT_LEAST_ONE_NETWORK
          | :CANNOT_TARGET_PARTNER_SEARCH_NETWORK
          | :CANNOT_TARGET_CONTENT_NETWORK_ONLY_WITH_CRITERIA_LEVEL_BIDDING_STRATEGY
          | :CAMPAIGN_DURATION_MUST_CONTAIN_ALL_RUNNABLE_TRIALS
          | :CANNOT_MODIFY_FOR_TRIAL_CAMPAIGN
          | :DUPLICATE_CAMPAIGN_NAME
          | :INCOMPATIBLE_CAMPAIGN_FIELD
          | :INVALID_CAMPAIGN_NAME
          | :INVALID_AD_SERVING_OPTIMIZATION_STATUS
          | :INVALID_TRACKING_URL
          | :CANNOT_SET_BOTH_TRACKING_URL_TEMPLATE_AND_TRACKING_SETTING
          | :MAX_IMPRESSIONS_NOT_IN_RANGE
          | :TIME_UNIT_NOT_SUPPORTED
          | :INVALID_OPERATION_IF_SERVING_STATUS_HAS_ENDED
          | :BUDGET_CANNOT_BE_SHARED
          | :CAMPAIGN_CANNOT_USE_SHARED_BUDGET
          | :CANNOT_CHANGE_BUDGET_ON_CAMPAIGN_WITH_TRIALS
          | :CAMPAIGN_LABEL_DOES_NOT_EXIST
          | :CAMPAIGN_LABEL_ALREADY_EXISTS
          | :MISSING_SHOPPING_SETTING
          | :INVALID_SHOPPING_SALES_COUNTRY
          | :ADVERTISING_CHANNEL_TYPE_NOT_AVAILABLE_FOR_ACCOUNT_TYPE
          | :INVALID_ADVERTISING_CHANNEL_SUB_TYPE
          | :AT_LEAST_ONE_CONVERSION_MUST_BE_SELECTED
          | :CANNOT_SET_AD_ROTATION_MODE
          | :CANNOT_MODIFY_START_DATE_IF_ALREADY_STARTED
          | :CANNOT_SET_DATE_TO_PAST
          | :MISSING_HOTEL_CUSTOMER_LINK
          | :INVALID_HOTEL_CUSTOMER_LINK
          | :MISSING_HOTEL_SETTING
          | :CANNOT_USE_SHARED_CAMPAIGN_BUDGET_WHILE_PART_OF_CAMPAIGN_GROUP
          | :APP_NOT_FOUND
          | :SHOPPING_ENABLE_LOCAL_NOT_SUPPORTED_FOR_CAMPAIGN_TYPE
          | :MERCHANT_NOT_ALLOWED_FOR_COMPARISON_LISTING_ADS
          | :INSUFFICIENT_APP_INSTALLS_COUNT
          | :SENSITIVE_CATEGORY_APP
          | :HEC_AGREEMENT_REQUIRED
          | :PAYMENT_MODE_NOT_COMPATIBLE_WITH_VIEW_THROUGH_CONVERSION
          | :INVALID_EXCLUDED_PARENT_ASSET_FIELD_TYPE

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
  field :PAYMENT_MODE_NOT_COMPATIBLE_WITH_VIEW_THROUGH_CONVERSION, 47
  field :INVALID_EXCLUDED_PARENT_ASSET_FIELD_TYPE, 48
end
defmodule Google.Ads.Googleads.V7.Errors.CampaignErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
