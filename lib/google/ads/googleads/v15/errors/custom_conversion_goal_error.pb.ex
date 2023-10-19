defmodule Google.Ads.Googleads.V15.Errors.CustomConversionGoalErrorEnum.CustomConversionGoalError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_CONVERSION_ACTION, 2
  field :CONVERSION_ACTION_NOT_ENABLED, 3
  field :CANNOT_REMOVE_LINKED_CUSTOM_CONVERSION_GOAL, 4
  field :CUSTOM_GOAL_DUPLICATE_NAME, 5
  field :DUPLICATE_CONVERSION_ACTION_LIST, 6
  field :NON_BIDDABLE_CONVERSION_ACTION_NOT_ELIGIBLE_FOR_CUSTOM_GOAL, 7
end

defmodule Google.Ads.Googleads.V15.Errors.CustomConversionGoalErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end