defmodule Google.Ads.Googleads.V12.Errors.SettingErrorEnum.SettingError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :SETTING_TYPE_IS_NOT_AVAILABLE, 3
  field :SETTING_TYPE_IS_NOT_COMPATIBLE_WITH_CAMPAIGN, 4
  field :TARGETING_SETTING_CONTAINS_INVALID_CRITERION_TYPE_GROUP, 5
  field :TARGETING_SETTING_DEMOGRAPHIC_CRITERION_TYPE_GROUPS_MUST_BE_SET_TO_TARGET_ALL, 6

  field :TARGETING_SETTING_CANNOT_CHANGE_TARGET_ALL_TO_FALSE_FOR_DEMOGRAPHIC_CRITERION_TYPE_GROUP,
        7

  field :DYNAMIC_SEARCH_ADS_SETTING_AT_LEAST_ONE_FEED_ID_MUST_BE_PRESENT, 8
  field :DYNAMIC_SEARCH_ADS_SETTING_CONTAINS_INVALID_DOMAIN_NAME, 9
  field :DYNAMIC_SEARCH_ADS_SETTING_CONTAINS_SUBDOMAIN_NAME, 10
  field :DYNAMIC_SEARCH_ADS_SETTING_CONTAINS_INVALID_LANGUAGE_CODE, 11
  field :TARGET_ALL_IS_NOT_ALLOWED_FOR_PLACEMENT_IN_SEARCH_CAMPAIGN, 12
  field :SETTING_VALUE_NOT_COMPATIBLE_WITH_CAMPAIGN, 20
  field :BID_ONLY_IS_NOT_ALLOWED_TO_BE_MODIFIED_WITH_CUSTOMER_MATCH_TARGETING, 21
end

defmodule Google.Ads.Googleads.V12.Errors.SettingErrorEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end