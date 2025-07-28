defmodule Google.Ads.Googleads.V18.Enums.AppBiddingGoalEnum.AppBiddingGoal do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :OPTIMIZE_FOR_INSTALL_CONVERSION_VOLUME, 2
  field :OPTIMIZE_FOR_IN_APP_CONVERSION_VOLUME, 3
  field :OPTIMIZE_FOR_TOTAL_CONVERSION_VALUE, 4
  field :OPTIMIZE_FOR_TARGET_IN_APP_CONVERSION, 5
  field :OPTIMIZE_FOR_RETURN_ON_ADVERTISING_SPEND, 6
  field :OPTIMIZE_FOR_INSTALL_CONVERSION_VOLUME_WITHOUT_TARGET_CPI, 7
  field :OPTIMIZE_FOR_PRE_REGISTRATION_CONVERSION_VOLUME, 8
end

defmodule Google.Ads.Googleads.V18.Enums.AppBiddingGoalEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
