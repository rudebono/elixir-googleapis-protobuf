defmodule Google.Ads.Googleads.V22.Errors.GoalErrorEnum.GoalError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :RETENTION_GOAL_ALREADY_EXISTS, 4
  field :HIGH_LIFETIME_VALUE_PRESENT_BUT_VALUE_ABSENT, 5
  field :HIGH_LIFETIME_VALUE_LESS_THAN_OR_EQUAL_TO_VALUE, 6
  field :CUSTOMER_LIFECYCLE_OPTIMIZATION_ACCOUNT_TYPE_NOT_ALLOWED, 7
end

defmodule Google.Ads.Googleads.V22.Errors.GoalErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
