defmodule Google.Ads.Googleads.V16.Enums.AppCampaignBiddingStrategyGoalTypeEnum.AppCampaignBiddingStrategyGoalType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :OPTIMIZE_INSTALLS_TARGET_INSTALL_COST, 2
  field :OPTIMIZE_IN_APP_CONVERSIONS_TARGET_INSTALL_COST, 3
  field :OPTIMIZE_IN_APP_CONVERSIONS_TARGET_CONVERSION_COST, 4
  field :OPTIMIZE_RETURN_ON_ADVERTISING_SPEND, 5
  field :OPTIMIZE_PRE_REGISTRATION_CONVERSION_VOLUME, 6
  field :OPTIMIZE_INSTALLS_WITHOUT_TARGET_INSTALL_COST, 7
end

defmodule Google.Ads.Googleads.V16.Enums.AppCampaignBiddingStrategyGoalTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end
