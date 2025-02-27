defmodule Google.Ads.Googleads.V19.Errors.AdGroupCriterionErrorEnum.AdGroupCriterionError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :AD_GROUP_CRITERION_LABEL_DOES_NOT_EXIST, 2
  field :AD_GROUP_CRITERION_LABEL_ALREADY_EXISTS, 3
  field :CANNOT_ADD_LABEL_TO_NEGATIVE_CRITERION, 4
  field :TOO_MANY_OPERATIONS, 5
  field :CANT_UPDATE_NEGATIVE, 6
  field :CONCRETE_TYPE_REQUIRED, 7
  field :BID_INCOMPATIBLE_WITH_ADGROUP, 8
  field :CANNOT_TARGET_AND_EXCLUDE, 9
  field :ILLEGAL_URL, 10
  field :INVALID_KEYWORD_TEXT, 11
  field :INVALID_DESTINATION_URL, 12
  field :MISSING_DESTINATION_URL_TAG, 13
  field :KEYWORD_LEVEL_BID_NOT_SUPPORTED_FOR_MANUALCPM, 14
  field :INVALID_USER_STATUS, 15
  field :CANNOT_ADD_CRITERIA_TYPE, 16
  field :CANNOT_EXCLUDE_CRITERIA_TYPE, 17
  field :CAMPAIGN_TYPE_NOT_COMPATIBLE_WITH_PARTIAL_FAILURE, 27
  field :OPERATIONS_FOR_TOO_MANY_SHOPPING_ADGROUPS, 28
  field :CANNOT_MODIFY_URL_FIELDS_WITH_DUPLICATE_ELEMENTS, 29
  field :CANNOT_SET_WITHOUT_FINAL_URLS, 30
  field :CANNOT_CLEAR_FINAL_URLS_IF_FINAL_MOBILE_URLS_EXIST, 31
  field :CANNOT_CLEAR_FINAL_URLS_IF_FINAL_APP_URLS_EXIST, 32
  field :CANNOT_CLEAR_FINAL_URLS_IF_TRACKING_URL_TEMPLATE_EXISTS, 33
  field :CANNOT_CLEAR_FINAL_URLS_IF_URL_CUSTOM_PARAMETERS_EXIST, 34
  field :CANNOT_SET_BOTH_DESTINATION_URL_AND_FINAL_URLS, 35
  field :CANNOT_SET_BOTH_DESTINATION_URL_AND_TRACKING_URL_TEMPLATE, 36
  field :FINAL_URLS_NOT_SUPPORTED_FOR_CRITERION_TYPE, 37
  field :FINAL_MOBILE_URLS_NOT_SUPPORTED_FOR_CRITERION_TYPE, 38
end

defmodule Google.Ads.Googleads.V19.Errors.AdGroupCriterionErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
