defmodule Google.Ads.Googleads.V7.Errors.ExtensionFeedItemErrorEnum.ExtensionFeedItemError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :VALUE_OUT_OF_RANGE
          | :URL_LIST_TOO_LONG
          | :CANNOT_HAVE_RESTRICTION_ON_EMPTY_GEO_TARGETING
          | :CANNOT_SET_WITH_FINAL_URLS
          | :CANNOT_SET_WITHOUT_FINAL_URLS
          | :INVALID_PHONE_NUMBER
          | :PHONE_NUMBER_NOT_SUPPORTED_FOR_COUNTRY
          | :CARRIER_SPECIFIC_SHORT_NUMBER_NOT_ALLOWED
          | :PREMIUM_RATE_NUMBER_NOT_ALLOWED
          | :DISALLOWED_NUMBER_TYPE
          | :INVALID_DOMESTIC_PHONE_NUMBER_FORMAT
          | :VANITY_PHONE_NUMBER_NOT_ALLOWED
          | :INVALID_CALL_CONVERSION_ACTION
          | :CUSTOMER_NOT_ON_ALLOWLIST_FOR_CALLTRACKING
          | :CALLTRACKING_NOT_SUPPORTED_FOR_COUNTRY
          | :CUSTOMER_CONSENT_FOR_CALL_RECORDING_REQUIRED
          | :INVALID_APP_ID
          | :QUOTES_IN_REVIEW_EXTENSION_SNIPPET
          | :HYPHENS_IN_REVIEW_EXTENSION_SNIPPET
          | :REVIEW_EXTENSION_SOURCE_INELIGIBLE
          | :SOURCE_NAME_IN_REVIEW_EXTENSION_TEXT
          | :INCONSISTENT_CURRENCY_CODES
          | :PRICE_EXTENSION_HAS_DUPLICATED_HEADERS
          | :PRICE_ITEM_HAS_DUPLICATED_HEADER_AND_DESCRIPTION
          | :PRICE_EXTENSION_HAS_TOO_FEW_ITEMS
          | :PRICE_EXTENSION_HAS_TOO_MANY_ITEMS
          | :UNSUPPORTED_VALUE
          | :UNSUPPORTED_VALUE_IN_SELECTED_LANGUAGE
          | :INVALID_DEVICE_PREFERENCE
          | :INVALID_SCHEDULE_END
          | :DATE_TIME_MUST_BE_IN_ACCOUNT_TIME_ZONE
          | :INVALID_SNIPPETS_HEADER
          | :CANNOT_OPERATE_ON_REMOVED_FEED_ITEM
          | :PHONE_NUMBER_NOT_SUPPORTED_WITH_CALLTRACKING_FOR_COUNTRY
          | :CONFLICTING_CALL_CONVERSION_SETTINGS
          | :EXTENSION_TYPE_MISMATCH
          | :EXTENSION_SUBTYPE_REQUIRED
          | :EXTENSION_TYPE_UNSUPPORTED
          | :CANNOT_OPERATE_ON_FEED_WITH_MULTIPLE_MAPPINGS
          | :CANNOT_OPERATE_ON_FEED_WITH_KEY_ATTRIBUTES
          | :INVALID_PRICE_FORMAT
          | :PROMOTION_INVALID_TIME
          | :TOO_MANY_DECIMAL_PLACES_SPECIFIED
          | :CONCRETE_EXTENSION_TYPE_REQUIRED
          | :SCHEDULE_END_NOT_AFTER_START

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :VALUE_OUT_OF_RANGE, 2
  field :URL_LIST_TOO_LONG, 3
  field :CANNOT_HAVE_RESTRICTION_ON_EMPTY_GEO_TARGETING, 4
  field :CANNOT_SET_WITH_FINAL_URLS, 5
  field :CANNOT_SET_WITHOUT_FINAL_URLS, 6
  field :INVALID_PHONE_NUMBER, 7
  field :PHONE_NUMBER_NOT_SUPPORTED_FOR_COUNTRY, 8
  field :CARRIER_SPECIFIC_SHORT_NUMBER_NOT_ALLOWED, 9
  field :PREMIUM_RATE_NUMBER_NOT_ALLOWED, 10
  field :DISALLOWED_NUMBER_TYPE, 11
  field :INVALID_DOMESTIC_PHONE_NUMBER_FORMAT, 12
  field :VANITY_PHONE_NUMBER_NOT_ALLOWED, 13
  field :INVALID_CALL_CONVERSION_ACTION, 14
  field :CUSTOMER_NOT_ON_ALLOWLIST_FOR_CALLTRACKING, 47
  field :CALLTRACKING_NOT_SUPPORTED_FOR_COUNTRY, 16
  field :CUSTOMER_CONSENT_FOR_CALL_RECORDING_REQUIRED, 17
  field :INVALID_APP_ID, 18
  field :QUOTES_IN_REVIEW_EXTENSION_SNIPPET, 19
  field :HYPHENS_IN_REVIEW_EXTENSION_SNIPPET, 20
  field :REVIEW_EXTENSION_SOURCE_INELIGIBLE, 21
  field :SOURCE_NAME_IN_REVIEW_EXTENSION_TEXT, 22
  field :INCONSISTENT_CURRENCY_CODES, 23
  field :PRICE_EXTENSION_HAS_DUPLICATED_HEADERS, 24
  field :PRICE_ITEM_HAS_DUPLICATED_HEADER_AND_DESCRIPTION, 25
  field :PRICE_EXTENSION_HAS_TOO_FEW_ITEMS, 26
  field :PRICE_EXTENSION_HAS_TOO_MANY_ITEMS, 27
  field :UNSUPPORTED_VALUE, 28
  field :UNSUPPORTED_VALUE_IN_SELECTED_LANGUAGE, 29
  field :INVALID_DEVICE_PREFERENCE, 30
  field :INVALID_SCHEDULE_END, 31
  field :DATE_TIME_MUST_BE_IN_ACCOUNT_TIME_ZONE, 32
  field :INVALID_SNIPPETS_HEADER, 33
  field :CANNOT_OPERATE_ON_REMOVED_FEED_ITEM, 34
  field :PHONE_NUMBER_NOT_SUPPORTED_WITH_CALLTRACKING_FOR_COUNTRY, 35
  field :CONFLICTING_CALL_CONVERSION_SETTINGS, 36
  field :EXTENSION_TYPE_MISMATCH, 37
  field :EXTENSION_SUBTYPE_REQUIRED, 38
  field :EXTENSION_TYPE_UNSUPPORTED, 39
  field :CANNOT_OPERATE_ON_FEED_WITH_MULTIPLE_MAPPINGS, 40
  field :CANNOT_OPERATE_ON_FEED_WITH_KEY_ATTRIBUTES, 41
  field :INVALID_PRICE_FORMAT, 42
  field :PROMOTION_INVALID_TIME, 43
  field :TOO_MANY_DECIMAL_PLACES_SPECIFIED, 44
  field :CONCRETE_EXTENSION_TYPE_REQUIRED, 45
  field :SCHEDULE_END_NOT_AFTER_START, 46
end
defmodule Google.Ads.Googleads.V7.Errors.ExtensionFeedItemErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
