defmodule Google.Ads.Googleads.V20.Errors.ConversionValueRuleSetErrorEnum.ConversionValueRuleSetError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CONFLICTING_VALUE_RULE_CONDITIONS, 2
  field :INVALID_VALUE_RULE, 3
  field :DIMENSIONS_UPDATE_ONLY_ALLOW_APPEND, 4
  field :CONDITION_TYPE_NOT_ALLOWED, 5
  field :DUPLICATE_DIMENSIONS, 6
  field :INVALID_CAMPAIGN_ID, 7
  field :CANNOT_PAUSE_UNLESS_ALL_VALUE_RULES_ARE_PAUSED, 8
  field :SHOULD_PAUSE_WHEN_ALL_VALUE_RULES_ARE_PAUSED, 9
  field :VALUE_RULES_NOT_SUPPORTED_FOR_CAMPAIGN_TYPE, 10
  field :INELIGIBLE_CONVERSION_ACTION_CATEGORIES, 11
  field :DIMENSION_NO_CONDITION_USED_WITH_OTHER_DIMENSIONS, 12
  field :DIMENSION_NO_CONDITION_NOT_ALLOWED, 13
  field :UNSUPPORTED_CONVERSION_ACTION_CATEGORIES, 14
  field :DIMENSION_NOT_SUPPORTED_FOR_CAMPAIGN_TYPE, 15
end

defmodule Google.Ads.Googleads.V20.Errors.ConversionValueRuleSetErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
