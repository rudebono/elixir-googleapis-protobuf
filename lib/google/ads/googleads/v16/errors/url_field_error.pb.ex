defmodule Google.Ads.Googleads.V16.Errors.UrlFieldErrorEnum.UrlFieldError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_TRACKING_URL_TEMPLATE, 2
  field :INVALID_TAG_IN_TRACKING_URL_TEMPLATE, 3
  field :MISSING_TRACKING_URL_TEMPLATE_TAG, 4
  field :MISSING_PROTOCOL_IN_TRACKING_URL_TEMPLATE, 5
  field :INVALID_PROTOCOL_IN_TRACKING_URL_TEMPLATE, 6
  field :MALFORMED_TRACKING_URL_TEMPLATE, 7
  field :MISSING_HOST_IN_TRACKING_URL_TEMPLATE, 8
  field :INVALID_TLD_IN_TRACKING_URL_TEMPLATE, 9
  field :REDUNDANT_NESTED_TRACKING_URL_TEMPLATE_TAG, 10
  field :INVALID_FINAL_URL, 11
  field :INVALID_TAG_IN_FINAL_URL, 12
  field :REDUNDANT_NESTED_FINAL_URL_TAG, 13
  field :MISSING_PROTOCOL_IN_FINAL_URL, 14
  field :INVALID_PROTOCOL_IN_FINAL_URL, 15
  field :MALFORMED_FINAL_URL, 16
  field :MISSING_HOST_IN_FINAL_URL, 17
  field :INVALID_TLD_IN_FINAL_URL, 18
  field :INVALID_FINAL_MOBILE_URL, 19
  field :INVALID_TAG_IN_FINAL_MOBILE_URL, 20
  field :REDUNDANT_NESTED_FINAL_MOBILE_URL_TAG, 21
  field :MISSING_PROTOCOL_IN_FINAL_MOBILE_URL, 22
  field :INVALID_PROTOCOL_IN_FINAL_MOBILE_URL, 23
  field :MALFORMED_FINAL_MOBILE_URL, 24
  field :MISSING_HOST_IN_FINAL_MOBILE_URL, 25
  field :INVALID_TLD_IN_FINAL_MOBILE_URL, 26
  field :INVALID_FINAL_APP_URL, 27
  field :INVALID_TAG_IN_FINAL_APP_URL, 28
  field :REDUNDANT_NESTED_FINAL_APP_URL_TAG, 29
  field :MULTIPLE_APP_URLS_FOR_OSTYPE, 30
  field :INVALID_OSTYPE, 31
  field :INVALID_PROTOCOL_FOR_APP_URL, 32
  field :INVALID_PACKAGE_ID_FOR_APP_URL, 33
  field :URL_CUSTOM_PARAMETERS_COUNT_EXCEEDS_LIMIT, 34
  field :INVALID_CHARACTERS_IN_URL_CUSTOM_PARAMETER_KEY, 39
  field :INVALID_CHARACTERS_IN_URL_CUSTOM_PARAMETER_VALUE, 40
  field :INVALID_TAG_IN_URL_CUSTOM_PARAMETER_VALUE, 41
  field :REDUNDANT_NESTED_URL_CUSTOM_PARAMETER_TAG, 42
  field :MISSING_PROTOCOL, 43
  field :INVALID_PROTOCOL, 52
  field :INVALID_URL, 44
  field :DESTINATION_URL_DEPRECATED, 45
  field :INVALID_TAG_IN_URL, 46
  field :MISSING_URL_TAG, 47
  field :DUPLICATE_URL_ID, 48
  field :INVALID_URL_ID, 49
  field :FINAL_URL_SUFFIX_MALFORMED, 50
  field :INVALID_TAG_IN_FINAL_URL_SUFFIX, 51
  field :INVALID_TOP_LEVEL_DOMAIN, 53
  field :MALFORMED_TOP_LEVEL_DOMAIN, 54
  field :MALFORMED_URL, 55
  field :MISSING_HOST, 56
  field :NULL_CUSTOM_PARAMETER_VALUE, 57
  field :VALUE_TRACK_PARAMETER_NOT_SUPPORTED, 58
end

defmodule Google.Ads.Googleads.V16.Errors.UrlFieldErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end
