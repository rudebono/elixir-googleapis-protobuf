defmodule Google.Ads.Googleads.V16.Errors.OfflineUserDataJobErrorEnum.OfflineUserDataJobError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_USER_LIST_ID, 3
  field :INVALID_USER_LIST_TYPE, 4
  field :NOT_ON_ALLOWLIST_FOR_USER_ID, 33
  field :INCOMPATIBLE_UPLOAD_KEY_TYPE, 6
  field :MISSING_USER_IDENTIFIER, 7
  field :INVALID_MOBILE_ID_FORMAT, 8
  field :TOO_MANY_USER_IDENTIFIERS, 9
  field :NOT_ON_ALLOWLIST_FOR_STORE_SALES_DIRECT, 31
  field :NOT_ON_ALLOWLIST_FOR_UNIFIED_STORE_SALES, 32
  field :INVALID_PARTNER_ID, 11
  field :INVALID_ENCODING, 12
  field :INVALID_COUNTRY_CODE, 13
  field :INCOMPATIBLE_USER_IDENTIFIER, 14
  field :FUTURE_TRANSACTION_TIME, 15
  field :INVALID_CONVERSION_ACTION, 16
  field :MOBILE_ID_NOT_SUPPORTED, 17
  field :INVALID_OPERATION_ORDER, 18
  field :CONFLICTING_OPERATION, 19
  field :EXTERNAL_UPDATE_ID_ALREADY_EXISTS, 21
  field :JOB_ALREADY_STARTED, 22
  field :REMOVE_NOT_SUPPORTED, 23
  field :REMOVE_ALL_NOT_SUPPORTED, 24
  field :INVALID_SHA256_FORMAT, 25
  field :CUSTOM_KEY_DISABLED, 26
  field :CUSTOM_KEY_NOT_PREDEFINED, 27
  field :CUSTOM_KEY_NOT_SET, 29
  field :CUSTOMER_NOT_ACCEPTED_CUSTOMER_DATA_TERMS, 30
  field :ATTRIBUTES_NOT_APPLICABLE_FOR_CUSTOMER_MATCH_USER_LIST, 34
  field :LIFETIME_VALUE_BUCKET_NOT_IN_RANGE, 35
  field :INCOMPATIBLE_USER_IDENTIFIER_FOR_ATTRIBUTES, 36
  field :FUTURE_TIME_NOT_ALLOWED, 37
  field :LAST_PURCHASE_TIME_LESS_THAN_ACQUISITION_TIME, 38
  field :CUSTOMER_IDENTIFIER_NOT_ALLOWED, 39
  field :INVALID_ITEM_ID, 40
  field :FIRST_PURCHASE_TIME_GREATER_THAN_LAST_PURCHASE_TIME, 42
  field :INVALID_LIFECYCLE_STAGE, 43
  field :INVALID_EVENT_VALUE, 44
  field :EVENT_ATTRIBUTE_ALL_FIELDS_ARE_REQUIRED, 45
end

defmodule Google.Ads.Googleads.V16.Errors.OfflineUserDataJobErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end