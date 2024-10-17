defmodule Google.Ads.Googleads.V18.Errors.ExtensionSettingErrorEnum.ExtensionSettingError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :EXTENSIONS_REQUIRED, 2
  field :FEED_TYPE_EXTENSION_TYPE_MISMATCH, 3
  field :INVALID_FEED_TYPE, 4
  field :INVALID_FEED_TYPE_FOR_CUSTOMER_EXTENSION_SETTING, 5
  field :CANNOT_CHANGE_FEED_ITEM_ON_CREATE, 6
  field :CANNOT_UPDATE_NEWLY_CREATED_EXTENSION, 7
  field :NO_EXISTING_AD_GROUP_EXTENSION_SETTING_FOR_TYPE, 8
  field :NO_EXISTING_CAMPAIGN_EXTENSION_SETTING_FOR_TYPE, 9
  field :NO_EXISTING_CUSTOMER_EXTENSION_SETTING_FOR_TYPE, 10
  field :AD_GROUP_EXTENSION_SETTING_ALREADY_EXISTS, 11
  field :CAMPAIGN_EXTENSION_SETTING_ALREADY_EXISTS, 12
  field :CUSTOMER_EXTENSION_SETTING_ALREADY_EXISTS, 13
  field :AD_GROUP_FEED_ALREADY_EXISTS_FOR_PLACEHOLDER_TYPE, 14
  field :CAMPAIGN_FEED_ALREADY_EXISTS_FOR_PLACEHOLDER_TYPE, 15
  field :CUSTOMER_FEED_ALREADY_EXISTS_FOR_PLACEHOLDER_TYPE, 16
  field :VALUE_OUT_OF_RANGE, 17
  field :CANNOT_SET_FIELD_WITH_FINAL_URLS, 18
  field :FINAL_URLS_NOT_SET, 19
  field :INVALID_PHONE_NUMBER, 20
  field :PHONE_NUMBER_NOT_SUPPORTED_FOR_COUNTRY, 21
  field :CARRIER_SPECIFIC_SHORT_NUMBER_NOT_ALLOWED, 22
  field :PREMIUM_RATE_NUMBER_NOT_ALLOWED, 23
  field :DISALLOWED_NUMBER_TYPE, 24
  field :INVALID_DOMESTIC_PHONE_NUMBER_FORMAT, 25
  field :VANITY_PHONE_NUMBER_NOT_ALLOWED, 26
  field :INVALID_COUNTRY_CODE, 27
  field :INVALID_CALL_CONVERSION_TYPE_ID, 28
  field :CUSTOMER_NOT_IN_ALLOWLIST_FOR_CALLTRACKING, 69
  field :CALLTRACKING_NOT_SUPPORTED_FOR_COUNTRY, 30
  field :INVALID_APP_ID, 31
  field :QUOTES_IN_REVIEW_EXTENSION_SNIPPET, 32
  field :HYPHENS_IN_REVIEW_EXTENSION_SNIPPET, 33
  field :REVIEW_EXTENSION_SOURCE_NOT_ELIGIBLE, 34
  field :SOURCE_NAME_IN_REVIEW_EXTENSION_TEXT, 35
  field :MISSING_FIELD, 36
  field :INCONSISTENT_CURRENCY_CODES, 37
  field :PRICE_EXTENSION_HAS_DUPLICATED_HEADERS, 38
  field :PRICE_ITEM_HAS_DUPLICATED_HEADER_AND_DESCRIPTION, 39
  field :PRICE_EXTENSION_HAS_TOO_FEW_ITEMS, 40
  field :PRICE_EXTENSION_HAS_TOO_MANY_ITEMS, 41
  field :UNSUPPORTED_VALUE, 42
  field :INVALID_DEVICE_PREFERENCE, 43
  field :INVALID_SCHEDULE_END, 45
  field :DATE_TIME_MUST_BE_IN_ACCOUNT_TIME_ZONE, 47
  field :OVERLAPPING_SCHEDULES_NOT_ALLOWED, 48
  field :SCHEDULE_END_NOT_AFTER_START, 49
  field :TOO_MANY_SCHEDULES_PER_DAY, 50
  field :DUPLICATE_EXTENSION_FEED_ITEM_EDIT, 51
  field :INVALID_SNIPPETS_HEADER, 52
  field :PHONE_NUMBER_NOT_SUPPORTED_WITH_CALLTRACKING_FOR_COUNTRY, 53
  field :CAMPAIGN_TARGETING_MISMATCH, 54
  field :CANNOT_OPERATE_ON_REMOVED_FEED, 55
  field :EXTENSION_TYPE_REQUIRED, 56
  field :INCOMPATIBLE_UNDERLYING_MATCHING_FUNCTION, 57
  field :START_DATE_AFTER_END_DATE, 58
  field :INVALID_PRICE_FORMAT, 59
  field :PROMOTION_INVALID_TIME, 60
  field :PROMOTION_CANNOT_SET_PERCENT_DISCOUNT_AND_MONEY_DISCOUNT, 61
  field :PROMOTION_CANNOT_SET_PROMOTION_CODE_AND_ORDERS_OVER_AMOUNT, 62
  field :TOO_MANY_DECIMAL_PLACES_SPECIFIED, 63
  field :INVALID_LANGUAGE_CODE, 64
  field :UNSUPPORTED_LANGUAGE, 65
  field :CUSTOMER_CONSENT_FOR_CALL_RECORDING_REQUIRED, 66
  field :EXTENSION_SETTING_UPDATE_IS_A_NOOP, 67
  field :DISALLOWED_TEXT, 68
end

defmodule Google.Ads.Googleads.V18.Errors.ExtensionSettingErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end