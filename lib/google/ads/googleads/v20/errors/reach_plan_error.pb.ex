defmodule Google.Ads.Googleads.V20.Errors.ReachPlanErrorEnum.ReachPlanError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NOT_FORECASTABLE_MISSING_RATE, 2
  field :NOT_FORECASTABLE_NOT_ENOUGH_INVENTORY, 3
  field :NOT_FORECASTABLE_ACCOUNT_NOT_ENABLED, 4
end

defmodule Google.Ads.Googleads.V20.Errors.ReachPlanErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
