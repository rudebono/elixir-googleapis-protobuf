defmodule Google.Ads.Googleads.V11.Errors.CampaignCriterionErrorEnum.CampaignCriterionError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CONCRETE_TYPE_REQUIRED, 2
  field :INVALID_PLACEMENT_URL, 3
  field :CANNOT_EXCLUDE_CRITERIA_TYPE, 4
  field :CANNOT_SET_STATUS_FOR_CRITERIA_TYPE, 5
  field :CANNOT_SET_STATUS_FOR_EXCLUDED_CRITERIA, 6
  field :CANNOT_TARGET_AND_EXCLUDE, 7
  field :TOO_MANY_OPERATIONS, 8
  field :OPERATOR_NOT_SUPPORTED_FOR_CRITERION_TYPE, 9
  field :SHOPPING_CAMPAIGN_SALES_COUNTRY_NOT_SUPPORTED_FOR_SALES_CHANNEL, 10
  field :CANNOT_ADD_EXISTING_FIELD, 11
  field :CANNOT_UPDATE_NEGATIVE_CRITERION, 12
  field :CANNOT_SET_NEGATIVE_KEYWORD_THEME_CONSTANT_CRITERION, 13
  field :INVALID_KEYWORD_THEME_CONSTANT, 14
  field :MISSING_KEYWORD_THEME_CONSTANT_OR_FREE_FORM_KEYWORD_THEME, 15
  field :CANNOT_TARGET_BOTH_PROXIMITY_AND_LOCATION_CRITERIA_FOR_SMART_CAMPAIGN, 16
  field :CANNOT_TARGET_MULTIPLE_PROXIMITY_CRITERIA_FOR_SMART_CAMPAIGN, 17
end
defmodule Google.Ads.Googleads.V11.Errors.CampaignCriterionErrorEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
