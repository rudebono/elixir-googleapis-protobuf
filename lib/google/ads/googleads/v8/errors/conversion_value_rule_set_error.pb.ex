defmodule Google.Ads.Googleads.V8.Errors.ConversionValueRuleSetErrorEnum.ConversionValueRuleSetError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CONFLICTING_VALUE_RULE_CONDITIONS
          | :INVALID_VALUE_RULE
          | :DIMENSIONS_UPDATE_ONLY_ALLOW_APPEND
          | :CONDITION_TYPE_NOT_ALLOWED
          | :DUPLICATE_DIMENSIONS
          | :INVALID_CAMPAIGN_ID
          | :CANNOT_PAUSE_UNLESS_ALL_VALUE_RULES_ARE_PAUSED
          | :SHOULD_PAUSE_WHEN_ALL_VALUE_RULES_ARE_PAUSED
          | :VALUE_RULES_NOT_SUPPORTED_FOR_CAMPAIGN_TYPE

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
end

defmodule Google.Ads.Googleads.V8.Errors.ConversionValueRuleSetErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
