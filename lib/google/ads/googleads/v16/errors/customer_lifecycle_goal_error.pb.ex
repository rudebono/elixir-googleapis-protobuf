defmodule Google.Ads.Googleads.V16.Errors.CustomerLifecycleGoalErrorEnum.CustomerLifecycleGoalError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CUSTOMER_ACQUISITION_VALUE_MISSING, 2
  field :CUSTOMER_ACQUISITION_INVALID_VALUE, 3
  field :CUSTOMER_ACQUISITION_INVALID_HIGH_LIFETIME_VALUE, 4
  field :CUSTOMER_ACQUISITION_VALUE_CANNOT_BE_CLEARED, 5
  field :CUSTOMER_ACQUISITION_HIGH_LIFETIME_VALUE_CANNOT_BE_CLEARED, 6
  field :INVALID_EXISTING_USER_LIST, 7
  field :INVALID_HIGH_LIFETIME_VALUE_USER_LIST, 8
end

defmodule Google.Ads.Googleads.V16.Errors.CustomerLifecycleGoalErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end