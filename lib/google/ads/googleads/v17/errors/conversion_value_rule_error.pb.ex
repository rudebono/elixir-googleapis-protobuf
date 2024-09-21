defmodule Google.Ads.Googleads.V17.Errors.ConversionValueRuleErrorEnum.ConversionValueRuleError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_GEO_TARGET_CONSTANT, 2
  field :CONFLICTING_INCLUDED_AND_EXCLUDED_GEO_TARGET, 3
  field :CONFLICTING_CONDITIONS, 4
  field :CANNOT_REMOVE_IF_INCLUDED_IN_VALUE_RULE_SET, 5
  field :CONDITION_NOT_ALLOWED, 6
  field :FIELD_MUST_BE_UNSET, 7
  field :CANNOT_PAUSE_UNLESS_VALUE_RULE_SET_IS_PAUSED, 8
  field :UNTARGETABLE_GEO_TARGET, 9
  field :INVALID_AUDIENCE_USER_LIST, 10
  field :INACCESSIBLE_USER_LIST, 11
  field :INVALID_AUDIENCE_USER_INTEREST, 12
  field :CANNOT_ADD_RULE_WITH_STATUS_REMOVED, 13
end

defmodule Google.Ads.Googleads.V17.Errors.ConversionValueRuleErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end