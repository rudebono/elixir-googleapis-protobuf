defmodule Google.Ads.Googleads.V7.Errors.CampaignCriterionErrorEnum.CampaignCriterionError do
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
end
defmodule Google.Ads.Googleads.V7.Errors.CampaignCriterionErrorEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
