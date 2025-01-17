defmodule Google.Ads.Googleads.V18.Errors.ConversionUploadErrorEnum.ConversionUploadError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :TOO_MANY_CONVERSIONS_IN_REQUEST, 2
  field :UNPARSEABLE_GCLID, 3
  field :CONVERSION_PRECEDES_EVENT, 42
  field :EXPIRED_EVENT, 43
  field :TOO_RECENT_EVENT, 44
  field :EVENT_NOT_FOUND, 45
  field :UNAUTHORIZED_CUSTOMER, 8
  field :TOO_RECENT_CONVERSION_ACTION, 10
  field :CONVERSION_TRACKING_NOT_ENABLED_AT_IMPRESSION_TIME, 11
  field :EXTERNAL_ATTRIBUTION_DATA_SET_FOR_NON_EXTERNALLY_ATTRIBUTED_CONVERSION_ACTION, 12
  field :EXTERNAL_ATTRIBUTION_DATA_NOT_SET_FOR_EXTERNALLY_ATTRIBUTED_CONVERSION_ACTION, 13
  field :ORDER_ID_NOT_PERMITTED_FOR_EXTERNALLY_ATTRIBUTED_CONVERSION_ACTION, 14
  field :ORDER_ID_ALREADY_IN_USE, 15
  field :DUPLICATE_ORDER_ID, 16
  field :TOO_RECENT_CALL, 17
  field :EXPIRED_CALL, 18
  field :CALL_NOT_FOUND, 19
  field :CONVERSION_PRECEDES_CALL, 20
  field :CONVERSION_TRACKING_NOT_ENABLED_AT_CALL_TIME, 21
  field :UNPARSEABLE_CALLERS_PHONE_NUMBER, 22
  field :CLICK_CONVERSION_ALREADY_EXISTS, 23
  field :CALL_CONVERSION_ALREADY_EXISTS, 24
  field :DUPLICATE_CLICK_CONVERSION_IN_REQUEST, 25
  field :DUPLICATE_CALL_CONVERSION_IN_REQUEST, 26
  field :CUSTOM_VARIABLE_NOT_ENABLED, 28
  field :CUSTOM_VARIABLE_VALUE_CONTAINS_PII, 29
  field :INVALID_CUSTOMER_FOR_CLICK, 30
  field :INVALID_CUSTOMER_FOR_CALL, 31
  field :CONVERSION_NOT_COMPLIANT_WITH_ATT_POLICY, 32
  field :CLICK_NOT_FOUND, 33
  field :INVALID_USER_IDENTIFIER, 34
  field :EXTERNALLY_ATTRIBUTED_CONVERSION_ACTION_NOT_PERMITTED_WITH_USER_IDENTIFIER, 35
  field :UNSUPPORTED_USER_IDENTIFIER, 36
  field :GBRAID_WBRAID_BOTH_SET, 38
  field :UNPARSEABLE_WBRAID, 39
  field :UNPARSEABLE_GBRAID, 40
  field :ONE_PER_CLICK_CONVERSION_ACTION_NOT_PERMITTED_WITH_BRAID, 46
  field :CUSTOMER_DATA_POLICY_PROHIBITS_ENHANCED_CONVERSIONS, 47
  field :CUSTOMER_NOT_ACCEPTED_CUSTOMER_DATA_TERMS, 48
  field :ORDER_ID_CONTAINS_PII, 49
  field :CUSTOMER_NOT_ENABLED_ENHANCED_CONVERSIONS_FOR_LEADS, 50
  field :INVALID_JOB_ID, 52
  field :NO_CONVERSION_ACTION_FOUND, 53
  field :INVALID_CONVERSION_ACTION_TYPE, 54
end

defmodule Google.Ads.Googleads.V18.Errors.ConversionUploadErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end
