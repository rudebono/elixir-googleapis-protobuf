defmodule Google.Ads.Googleads.V14.Errors.FeedItemValidationErrorEnum.FeedItemValidationError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :STRING_TOO_SHORT, 2
  field :STRING_TOO_LONG, 3
  field :VALUE_NOT_SPECIFIED, 4
  field :INVALID_DOMESTIC_PHONE_NUMBER_FORMAT, 5
  field :INVALID_PHONE_NUMBER, 6
  field :PHONE_NUMBER_NOT_SUPPORTED_FOR_COUNTRY, 7
  field :PREMIUM_RATE_NUMBER_NOT_ALLOWED, 8
  field :DISALLOWED_NUMBER_TYPE, 9
  field :VALUE_OUT_OF_RANGE, 10
  field :CALLTRACKING_NOT_SUPPORTED_FOR_COUNTRY, 11
  field :CUSTOMER_NOT_IN_ALLOWLIST_FOR_CALLTRACKING, 99
  field :INVALID_COUNTRY_CODE, 13
  field :INVALID_APP_ID, 14
  field :MISSING_ATTRIBUTES_FOR_FIELDS, 15
  field :INVALID_TYPE_ID, 16
  field :INVALID_EMAIL_ADDRESS, 17
  field :INVALID_HTTPS_URL, 18
  field :MISSING_DELIVERY_ADDRESS, 19
  field :START_DATE_AFTER_END_DATE, 20
  field :MISSING_FEED_ITEM_START_TIME, 21
  field :MISSING_FEED_ITEM_END_TIME, 22
  field :MISSING_FEED_ITEM_ID, 23
  field :VANITY_PHONE_NUMBER_NOT_ALLOWED, 24
  field :INVALID_REVIEW_EXTENSION_SNIPPET, 25
  field :INVALID_NUMBER_FORMAT, 26
  field :INVALID_DATE_FORMAT, 27
  field :INVALID_PRICE_FORMAT, 28
  field :UNKNOWN_PLACEHOLDER_FIELD, 29
  field :MISSING_ENHANCED_SITELINK_DESCRIPTION_LINE, 30
  field :REVIEW_EXTENSION_SOURCE_INELIGIBLE, 31
  field :HYPHENS_IN_REVIEW_EXTENSION_SNIPPET, 32
  field :DOUBLE_QUOTES_IN_REVIEW_EXTENSION_SNIPPET, 33
  field :QUOTES_IN_REVIEW_EXTENSION_SNIPPET, 34
  field :INVALID_FORM_ENCODED_PARAMS, 35
  field :INVALID_URL_PARAMETER_NAME, 36
  field :NO_GEOCODING_RESULT, 37
  field :SOURCE_NAME_IN_REVIEW_EXTENSION_TEXT, 38
  field :CARRIER_SPECIFIC_SHORT_NUMBER_NOT_ALLOWED, 39
  field :INVALID_PLACEHOLDER_FIELD_ID, 40
  field :INVALID_URL_TAG, 41
  field :LIST_TOO_LONG, 42
  field :INVALID_ATTRIBUTES_COMBINATION, 43
  field :DUPLICATE_VALUES, 44
  field :INVALID_CALL_CONVERSION_ACTION_ID, 45
  field :CANNOT_SET_WITHOUT_FINAL_URLS, 46
  field :APP_ID_DOESNT_EXIST_IN_APP_STORE, 47
  field :INVALID_FINAL_URL, 48
  field :INVALID_TRACKING_URL, 49
  field :INVALID_FINAL_URL_FOR_APP_DOWNLOAD_URL, 50
  field :LIST_TOO_SHORT, 51
  field :INVALID_USER_ACTION, 52
  field :INVALID_TYPE_NAME, 53
  field :INVALID_EVENT_CHANGE_STATUS, 54
  field :INVALID_SNIPPETS_HEADER, 55
  field :INVALID_ANDROID_APP_LINK, 56
  field :NUMBER_TYPE_WITH_CALLTRACKING_NOT_SUPPORTED_FOR_COUNTRY, 57
  field :RESERVED_KEYWORD_OTHER, 58
  field :DUPLICATE_OPTION_LABELS, 59
  field :DUPLICATE_OPTION_PREFILLS, 60
  field :UNEQUAL_LIST_LENGTHS, 61
  field :INCONSISTENT_CURRENCY_CODES, 62
  field :PRICE_EXTENSION_HAS_DUPLICATED_HEADERS, 63
  field :ITEM_HAS_DUPLICATED_HEADER_AND_DESCRIPTION, 64
  field :PRICE_EXTENSION_HAS_TOO_FEW_ITEMS, 65
  field :UNSUPPORTED_VALUE, 66
  field :INVALID_FINAL_MOBILE_URL, 67
  field :INVALID_KEYWORDLESS_AD_RULE_LABEL, 68
  field :VALUE_TRACK_PARAMETER_NOT_SUPPORTED, 69
  field :UNSUPPORTED_VALUE_IN_SELECTED_LANGUAGE, 70
  field :INVALID_IOS_APP_LINK, 71
  field :MISSING_IOS_APP_LINK_OR_IOS_APP_STORE_ID, 72
  field :PROMOTION_INVALID_TIME, 73
  field :PROMOTION_CANNOT_SET_PERCENT_OFF_AND_MONEY_AMOUNT_OFF, 74
  field :PROMOTION_CANNOT_SET_PROMOTION_CODE_AND_ORDERS_OVER_AMOUNT, 75
  field :TOO_MANY_DECIMAL_PLACES_SPECIFIED, 76
  field :AD_CUSTOMIZERS_NOT_ALLOWED, 77
  field :INVALID_LANGUAGE_CODE, 78
  field :UNSUPPORTED_LANGUAGE, 79
  field :IF_FUNCTION_NOT_ALLOWED, 80
  field :INVALID_FINAL_URL_SUFFIX, 81
  field :INVALID_TAG_IN_FINAL_URL_SUFFIX, 82
  field :INVALID_FINAL_URL_SUFFIX_FORMAT, 83
  field :CUSTOMER_CONSENT_FOR_CALL_RECORDING_REQUIRED, 84
  field :ONLY_ONE_DELIVERY_OPTION_IS_ALLOWED, 85
  field :NO_DELIVERY_OPTION_IS_SET, 86
  field :INVALID_CONVERSION_REPORTING_STATE, 87
  field :IMAGE_SIZE_WRONG, 88
  field :EMAIL_DELIVERY_NOT_AVAILABLE_IN_COUNTRY, 89
  field :AUTO_REPLY_NOT_AVAILABLE_IN_COUNTRY, 90
  field :INVALID_LATITUDE_VALUE, 91
  field :INVALID_LONGITUDE_VALUE, 92
  field :TOO_MANY_LABELS, 93
  field :INVALID_IMAGE_URL, 94
  field :MISSING_LATITUDE_VALUE, 95
  field :MISSING_LONGITUDE_VALUE, 96
  field :ADDRESS_NOT_FOUND, 97
  field :ADDRESS_NOT_TARGETABLE, 98
  field :INVALID_ASSET_ID, 100
  field :INCOMPATIBLE_ASSET_TYPE, 101
  field :IMAGE_ERROR_UNEXPECTED_SIZE, 102
  field :IMAGE_ERROR_ASPECT_RATIO_NOT_ALLOWED, 103
  field :IMAGE_ERROR_FILE_TOO_LARGE, 104
  field :IMAGE_ERROR_FORMAT_NOT_ALLOWED, 105
  field :IMAGE_ERROR_CONSTRAINTS_VIOLATED, 106
  field :IMAGE_ERROR_SERVER_ERROR, 107
end

defmodule Google.Ads.Googleads.V14.Errors.FeedItemValidationErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end