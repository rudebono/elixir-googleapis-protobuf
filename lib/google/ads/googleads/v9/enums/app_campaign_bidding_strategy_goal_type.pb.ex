defmodule Google.Ads.Googleads.V9.Enums.AppCampaignBiddingStrategyGoalTypeEnum.AppCampaignBiddingStrategyGoalType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :OPTIMIZE_INSTALLS_TARGET_INSTALL_COST
          | :OPTIMIZE_IN_APP_CONVERSIONS_TARGET_INSTALL_COST
          | :OPTIMIZE_IN_APP_CONVERSIONS_TARGET_CONVERSION_COST
          | :OPTIMIZE_RETURN_ON_ADVERTISING_SPEND
          | :OPTIMIZE_PRE_REGISTRATION_CONVERSION_VOLUME
          | :OPTIMIZE_INSTALLS_WITHOUT_TARGET_INSTALL_COST

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :OPTIMIZE_INSTALLS_TARGET_INSTALL_COST, 2
  field :OPTIMIZE_IN_APP_CONVERSIONS_TARGET_INSTALL_COST, 3
  field :OPTIMIZE_IN_APP_CONVERSIONS_TARGET_CONVERSION_COST, 4
  field :OPTIMIZE_RETURN_ON_ADVERTISING_SPEND, 5
  field :OPTIMIZE_PRE_REGISTRATION_CONVERSION_VOLUME, 6
  field :OPTIMIZE_INSTALLS_WITHOUT_TARGET_INSTALL_COST, 7
end

defmodule Google.Ads.Googleads.V9.Enums.AppCampaignBiddingStrategyGoalTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
